Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23AF6128819
	for <ddprobe@lists.linux.dev>; Thu, 30 Oct 2025 04:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761797394; cv=none; b=XQQpFfa3EpeFX/FwOY//GGgxZNG87H4xyXLnK2br2KCdAr5pM1qYV2nTnnKOTjvaromDtaqByeO8XxyArJaueDEydk6gMvOMvNPLCVheJ9kVyCzsvEKWQGA7u+c8jJGjWhgqnRd+D50Uo9/+gUhkhpLhdhw5w0gilrJ7N2aahPY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761797394; c=relaxed/simple;
	bh=TBSTWo9joTBzvAfONBnTOTaynPXuoAwEhgig3cRw8b8=;
	h=To:Subject:From:Message-Id:Date; b=ScuzVkgs4Sr+y6qgPLTM01QdNw7pVRuvh+ftN/Njj1RZXTLAiWsdskY7+hbBVAWyiQf8IzkhiVucoMQuXusDA3uFnNNzrDpJSaAzx7DBlQia4QMVpmPKU0s/iOb9kTjxx/lwY9LDeS0ik4AHGdtX9rbcc48yY+RJYAZL0V8eMRU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Sre3lvrF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Sre3lvrF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7E27C4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 30 Oct 2025 04:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761797393;
	bh=TBSTWo9joTBzvAfONBnTOTaynPXuoAwEhgig3cRw8b8=;
	h=To:Subject:From:Date:From;
	b=Sre3lvrF4EmO7qwu98vDPZ7V0wlT/sk3M39sAHO/Y6FZYHbxyQuVzQ6PNKPm+Ia+o
	 nhwKe7IaG0Y0ibuCbN6uAdqIyVrs44IqyXoPN5PhTb+EuUJXGZXEiQYSHciIdmAKJC
	 qlakJ1e7uvj9zfopuRlKuAagvEPCC0UIZFxxyWNywiIqaQcOM0p5QNlVxLTU7A9dRi
	 VCv4o5GivxgccMVO9b5vhgT9KE0heZIOOdxn03uRuIcsKmSx9PHL9L74ZvwCLN5f4G
	 EIIHE9lBMttPtcsIsc8rlU4GW8xGJg4I5/Wkppio4A4DsmSvUI9WZ7mwA7EorTqHOX
	 7mOkab4exSdjA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92BB9CCF9EA
	for <ddprobe@lists.linux.dev>; Thu, 30 Oct 2025 04:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176179739359.6656.15978538808783811180.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 97e04025db170bd4784effcd714dc07ec10ffb8e4138adcd1f69f3e1645771c0
Date: Thu, 30 Oct 2025 04:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761797393
