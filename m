Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A094C141
	for <ddprobe@lists.linux.dev>; Fri, 24 Oct 2025 06:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761286194; cv=none; b=B6uDq01mH66EMKFU/pJE0p6Al1DiqS6HAEls9peDiOq0S48p4d3G2wIhMzg1YPwUT7aq4dB3tpI2CEUKhCodei+vZ4kk63pBrtjwa1iL/IeGBLys7HdKcD2mkwwxIvP/sIi9QXDKsERJRAouqnJ2MCo/dhsKYD3KnPwh0n66UTg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761286194; c=relaxed/simple;
	bh=ZRcITpjwjZoZOtr0JXZmfa/HcXLY2sNgUyOKVvkcA+E=;
	h=To:Subject:From:Message-Id:Date; b=FcShWNqCUvnaRXEVaZCYfKkW/p/aH51tNhJMoSFwntZ2wSZPRBexJCoCIpXQj4iVHjZJ2etR8N6ElFyN6T81aPfTInPobf18yQK66YORgntVspFhVUHhZTVlpUSib8CVMiTHGTQ57iY1gE+RzD1/TZ0uNKCJbtOL+G07Zmzkqnc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PzPC9d33; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PzPC9d33"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A220EC4CEFB
	for <ddprobe@lists.linux.dev>; Fri, 24 Oct 2025 06:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761286193;
	bh=ZRcITpjwjZoZOtr0JXZmfa/HcXLY2sNgUyOKVvkcA+E=;
	h=To:Subject:From:Date:From;
	b=PzPC9d33DjmdffuHZDmm6wRsUNEYaK6hxr0+ngF25P2zA/dkFVFsTSDv7IAkBYHYy
	 2cOLcbc4llM1jUfK0nomIUUO5b3u8gO6fLe5YlNPxk5BSyvVhs08OqtfnHTyoklI96
	 MmI9C5AlLQakT/JDb2xpieMEp+JJHPx0HAB+HNPik0EyIGdfksTJC3rWq+CgmCyH1n
	 N5apN0Bhtj9MGqHDxSANhyXb04TOE4qv2zdkNRJTt4IX9P7tApzqalSgQsjGxnEMdp
	 2kqENzEnSUoJwtwlbBsylP7KtPESyNTmylERSBlOshDNMRA/sHYFyQpSo21PcWWau+
	 /vRODOkcSoc6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F739CCD1AB
	for <ddprobe@lists.linux.dev>; Fri, 24 Oct 2025 06:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176128619357.13303.7480739101466521091.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4c42349bcf37241183ef36e3bd1535b2958ac83619aac8c51eca7060cf9999d1
Date: Fri, 24 Oct 2025 06:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761286193
