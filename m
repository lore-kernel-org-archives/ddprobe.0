Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23EC310F9
	for <ddprobe@lists.linux.dev>; Sat, 12 Jul 2025 14:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752329994; cv=none; b=TuNZsFbkCi1AjfPSUkTTjhRNwTLIwVTFMXSHr1TuFnpvX+lLCSPH5IFISa/ErDUPK1GqNgW4bd/cCP0kgoYiFs/OhY4bbLBPYoMlagRIfLztZoactn2gIhN2XwaCcGx/Z14ESxxG2Ip/es2D6khrCPlerBO4WuYhAZ3BB8Cah+c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752329994; c=relaxed/simple;
	bh=acrsutqo7x45SemL0dmpAvQ6PZ14PxUha86riPvbzLg=;
	h=To:Subject:From:Message-Id:Date; b=mqAzlrRuo2Wc+ZrJYLPOZ/ljN5xR/klPgIw7xtPp8jPj8a4lptSO0I9Xnwa8t7LUC3ZMfEX9BR6k1fbrjHN43cGpIrRofkZ4ebO4460lQ/RW42DAjXE2vkMJsWYRtufT/tMgp4PBIebjiW5c2KCWh6Q109OtPanRWVoYCSZZ1y4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m+CE7PC3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m+CE7PC3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A39FDC4CEEF
	for <ddprobe@lists.linux.dev>; Sat, 12 Jul 2025 14:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752329993;
	bh=acrsutqo7x45SemL0dmpAvQ6PZ14PxUha86riPvbzLg=;
	h=To:Subject:From:Date:From;
	b=m+CE7PC34WK2qE3H91EuNT0QtnaDmd/OGcYEJcbLM7oDu9h7j00LfL9rKbbmb9Hvk
	 gmdGxF8pVyr+G4KaTDDhdBJsKjpayjKhY5O8d3t3lJpzJFQNqjxSNzKUdovDIZd3S3
	 082REN+BmrvNt2IsXHGIBgG5zsdeCCNOHMVrLIwIc48RN1rDCMej7Zwu11WJ1UyLDq
	 pPp2KKFGItpi6EIe0/D7ucfkklJAqXPVtnkxa3H8JkWk3s7j7be3+7itvUVlasnTua
	 kCT2tDG/pLJxU7/MA3uwSi59jaEnasVHGS6fUPQS3feIPl5bQzXhDbPQYy8cfDLd0g
	 Y7IJJlqgicF4w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9107FC83F1D
	for <ddprobe@lists.linux.dev>; Sat, 12 Jul 2025 14:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175232999357.9912.3822066534228539361.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d186ffafd73376de800a38037121cc820ada3ae5df2421b09ed0c3cd3c0ba9a5
Date: Sat, 12 Jul 2025 14:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752329993
