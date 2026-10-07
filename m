Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7C120382F25
	for <ddprobe@lists.linux.dev>; Wed,  7 Oct 2026 09:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791366634; cv=none; b=SEREetLx8NCCm3y2tw1snBQxxtJk/vl/JHmdaCbkF+fO7VVWlsgR5LuwidfDUADNo+z3tmVM7MDNBXCYVoK9VKjsTwuENRbVICXXrCMotHJ+dm3XPHCci/HPB+vDTd7X1j0P8eZ4UWtVUljJInYU1gujx19yQ4j7cl/DnhIKSas=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791366634; c=relaxed/simple;
	bh=DHV2ImLrJe/XP0POj1B8XBCpwc+wSdFNlKlnQXhZS4Y=;
	h=To:Subject:From:Message-Id:Date; b=bUj9kPIPVJ/fpSRmto+xG3tISaYrgWEFCHTVmuTH0aesO/aot/wHrly8xo+RFk9cCbhXqpx/IWySKaCTG4EV9ga6qkjpf529PnGzqzFBnkA2/2Wy5lB2lUGXk056se3NBHVWZc5omj256qVumlfsYI0XmDjp+SK/UdF67PiU7SU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R4UpuAQL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R4UpuAQL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEFBFC2BCB9
	for <ddprobe@lists.linux.dev>; Wed,  7 Oct 2026 09:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791366633;
	bh=DHV2ImLrJe/XP0POj1B8XBCpwc+wSdFNlKlnQXhZS4Y=;
	h=To:Subject:From:Date:From;
	b=R4UpuAQLd1FdCNTNLVqlZhp3axSLbELpc94N4fRwrRMDGqna0fmzzAP5cbElzakdc
	 ZL/DQ6LV6TKmT8qfjT4ZqlaG2jiXnn/UEX/GdCfyElUsz3BiGMmhTrZW9QObE8BnqM
	 KYDXGkPz3zvVPB4QfkPX3+atmuDtloczLuZJUmS3ojn1T9JR7kaAfo4r45n3abW4eS
	 ASHMc1amjy9G+zYehrXPfLYzMVgE0yPh0WnViTG6/hIP96Mwb8Lsrfd6XwY9A50rzV
	 SK8edhM+r1fgMW4T5S3l1iO80z4eihmC1PayUYskD2R1iv8u3OL2qwPBtev/xqgr4M
	 WcYcUad2nIDNw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9EC0CA5FF1
	for <ddprobe@lists.linux.dev>; Wed,  7 Oct 2026 09:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179136663368.10291.17441373441187583873.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fc902621ec493ecb97da801dd8997db307e1513ebf5568f4ba5f04ef3d28b9dc
Date: Wed, 07 Oct 2026 09:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791366633
