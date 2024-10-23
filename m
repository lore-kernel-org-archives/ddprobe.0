Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 127AA145B10
	for <ddprobe@lists.linux.dev>; Wed, 23 Oct 2024 19:15:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729710955; cv=none; b=jfRA92/fv5Q7V92LtkKbBmFGgA5OdxV4tE2Au0dHRh2skUUINAJg6Im8/9/ljFRvve9E+EIukIsjKQi0NW/4B8U8x14+ekbZkJ9XxDu2N1cBopkbikHOyqwaIFoxf3Zq62NZj3o0X86oJmsHMQLb4SI46VKdX9E1RckqhHQfWhc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729710955; c=relaxed/simple;
	bh=qQ7JCC+mBQQLGrfOZhcmogR9h+AlObCmYGbHzLJsyvk=;
	h=To:Subject:From:Message-Id:Date; b=lkuPib0nv7CCaynK4s0vEh6Q5BIIrpZjXxmzy+Vph+H6GOKtxLrHxw4HrkAZiZgkeEBDFan7bWKKXWiqtFDjIGdJcR+qhuJIi+B43kMMcZ6mTxuHQI4bpsFQgNJZn2ecKNvDQDVgEZQFo/O13UuLbrPSsx27dwEz4ND3Rs8A5fc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ufSs9O9N; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ufSs9O9N"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A60F7C4CEC6
	for <ddprobe@lists.linux.dev>; Wed, 23 Oct 2024 19:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729710954;
	bh=qQ7JCC+mBQQLGrfOZhcmogR9h+AlObCmYGbHzLJsyvk=;
	h=To:Subject:From:Date:From;
	b=ufSs9O9NIeClfWKorvT7gTW3X1F6PSbHgMVAH1LTWisS8sshQc6ZDvgmu5+DGxyd2
	 gBtWV9+uovuuS2WnarLg3baZ09ES8sa0Q6yusMn3Mv/u1nD1kkURf3TR7cdGD4beXT
	 IWDgq2wx5BlmGQrgtQNtGWDBvzey6zQ/RABJ4XDo26PxyXLo5riJwZcSGrCrtdP+Ph
	 cYCwyOx9+2OJuKLqZJn5SGn0kgGqWVIVp0sAZJJpb/W8bXf0FHMQ1vJaqZba8dHgoV
	 YO0cKrbd/FEg7UaEP5D4Oh1lZIbeY0eb10lUd6CqedaHdP2JQoJzrlMVFmK2h8cRgv
	 bgPATxtN40fjg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92145CFA45F
	for <ddprobe@lists.linux.dev>; Wed, 23 Oct 2024 19:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172971095358.19732.13785499626907147731.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b868bd6e01d104310c568c5b58313f0a169b228e54be2699d386d7b376302f2e
Date: Wed, 23 Oct 2024 19:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729710953
