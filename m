Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D84A6371CEA
	for <ddprobe@lists.linux.dev>; Mon,  2 Mar 2026 20:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772484293; cv=none; b=AryZShpVYmPlbAnSv86J2e+8JTNgCwayaBc37z73unZ/+Fg+G0HdKcyJDTH9MnpiexJPLctEqGadEGw22IYBSXxXHdckizIoCTQ9Cg9+yApMoCSHlUkX/qhEOGKGV0aF+2nVGMkb9Ns5upaDzBSkh77/3IRCB9JsPRL46nt7Ga8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772484293; c=relaxed/simple;
	bh=/Wc/cWKVshQkMt71VgznBWdRTOFpJxNe2PCJGKpJaL4=;
	h=To:Subject:From:Message-Id:Date; b=hIxt4GyPBGvwQ3HawD8PR0M8/jbunRMCMlZkSe5XVeHgiE4rWusJ0j70qalHN/AJuaThKmywNDmAE/+QqXSJ0bzVjMVBoDt56xaHvQVwqZK7oQVu6ypOgQ0fPhETJj2NFG9t686SXwc2ng+iFqav2RTCeoVX/meLGU56vEnAzn0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dLgoE7kB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dLgoE7kB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9617C2BC87
	for <ddprobe@lists.linux.dev>; Mon,  2 Mar 2026 20:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772484293;
	bh=/Wc/cWKVshQkMt71VgznBWdRTOFpJxNe2PCJGKpJaL4=;
	h=To:Subject:From:Date:From;
	b=dLgoE7kBRX91SBWvjBGKMmvr7e4Bn+0co0MRarjyqkmE+iDgzTkxOAtBqRU4bs9Wb
	 IiqpM1wa272Ju9pznOdWRCgGmMCu1N2qgbo9MR9sIEwJQwRv2LDWk4Yh+mPvN1+/4v
	 iv7X6Wqb0nC/hO23SbrF/7KSczjUiG/0rsiaEfVvbB10kC9JMUgDhWBMBO6SvNJCUn
	 Z8gCz8RH7CkBXHF+eUPzVw77nnvg4zA7aZ/V1T+69XUPrmMWNIOQ/aNs484u1RuFWQ
	 1UsZO3COvezP4R84e0Xow2++Bqb5mtED91uv1+79SL+6vB5MT6CmqoaUz3IiT6fIzA
	 QvxVtyfRfUi8w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D8D6EB3633
	for <ddprobe@lists.linux.dev>; Mon,  2 Mar 2026 20:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177248429362.21324.572104369779790577.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8c00374bfc4de91774c983a276b0e2e2173ba3e657a4ba3f899d8ea8a1157628
Date: Mon, 02 Mar 2026 20:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772484293
