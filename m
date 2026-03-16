Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1796738D6AA
	for <ddprobe@lists.linux.dev>; Mon, 16 Mar 2026 09:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773654894; cv=none; b=YMDIln6TK+U8GCWa8N3YbZRaEyCs2OgfRA/aSdEjThkLH1xc+wRqb5/4/Qg86nc4aThIKEIJvbU6262/1GudqJy9qeoKOf+cb1Ktl5K5ckkGdF+8HyHzrDt8klYxyvZkc3LJrOVv3q7CDXICMPyWOjcFn1Pb6w6b+2jK0tKi4bg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773654894; c=relaxed/simple;
	bh=QJdFnFMNMP5l+Bu5wzi7eBqVOexLPdjflg7uAcIgRzA=;
	h=To:Subject:From:Message-Id:Date; b=mGcOi2xOmxyis8XNdUspkPMBdiYfZExHzjGBAvZmeL+R9zQzU9ypVe6zTIHr3pirzQjyBb8h/TVRANSqSOG00bUjVfQGO/Bew58yA3zGY+0fpm1bDsMosCNdFYjwF/nQ1Mvqnvw/bPuGyCGKE4BqdFhH+sHjFtkQZpiNH0zchhI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cLyJ2K7v; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cLyJ2K7v"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A65C8C19424
	for <ddprobe@lists.linux.dev>; Mon, 16 Mar 2026 09:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773654893;
	bh=QJdFnFMNMP5l+Bu5wzi7eBqVOexLPdjflg7uAcIgRzA=;
	h=To:Subject:From:Date:From;
	b=cLyJ2K7vo8t2kfQ6Gyog2ruYjcRlH0Acy00f06ozF//Nvj96nqYVzfqGnMeazKWFt
	 KJAest5R/TqFwpA/Wat2XxsmD1Ea045H1tHOvFRhkkOn07K8ZvrCxFMtxazidIrSab
	 Zts8E7o3JgZF2fB+/R2EbANIoxBL4qjbVn1OEON3h/stW0HPfqWvbCuFcniO3bTeEq
	 xC/V1qx+B6ZnDICchT28BwTu8c0QDwvHnnLMI9L24/n7MG04PudMrWVf/GSUAqXw4R
	 CR0l2X27hByvqjoGDeG2S3eaQ1A+kHxzoK0969KVlpCfsrlbuHCGFhzK8XnCsMPQhE
	 7tc+ladCpvNWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9518CF46442
	for <ddprobe@lists.linux.dev>; Mon, 16 Mar 2026 09:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177365489357.11889.9778702531137736671.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: da73ca01d944a6bedc95766d7e281488f31d3b8d572c2737ff92bb84990e13e6
Date: Mon, 16 Mar 2026 09:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773654893
