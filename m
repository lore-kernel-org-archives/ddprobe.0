Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6EC211AED20
	for <ddprobe@lists.linux.dev>; Thu, 20 Jun 2024 16:20:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718900423; cv=none; b=Y4rELB0MnNkjmvBLJcd9hRX3kVy3TLlU+puxcQ4ZcdKqcFBELTc8vFkjYQQchV48gJQwziv4BgHWV6KtJOnFwqCNBEp6l4HrYrcMEvpnmNjCJevgQjX0TiHs8nb1bdFMeFWA1SkFr8DOMOzU6Y6Bhi1bu7tgVWVfo2BJN9zgX3M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718900423; c=relaxed/simple;
	bh=IjW91a3BBj5/ZOZfdNnmr/dG5Np8WzNdcen3NWTfdt8=;
	h=To:Subject:From:Message-Id:Date; b=glSBYDuT3odUi/hcyMvkhkQS3IRt660QJ5P+up5J95czCgKvxXfGZeFyq4bI5yO6kNkv2CAvpC5jlFYuE9T4Qib84PhwLnhjE98Ibu8naK6+miC98BHsK+sRgVIW3FZmFm92+eIb4ybbQYYsOwoHg9vtQvJH5RwMigENzFBv3xc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QrStllUY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QrStllUY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E266DC2BD10
	for <ddprobe@lists.linux.dev>; Thu, 20 Jun 2024 16:20:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718900422;
	bh=IjW91a3BBj5/ZOZfdNnmr/dG5Np8WzNdcen3NWTfdt8=;
	h=To:Subject:From:Date:From;
	b=QrStllUYuoZ/f+NP9HTjpoOV7vgPjWAq3Ed3rH0bHFPiEKbr9riqMtUmq6yAmmPzO
	 7+6+yhqgvzll/YGoIACSjp9DfmdbJgWQnZ6eRXWawBqL5SDO70em6ifM8pgWbaiNaC
	 nnuv4uWeW0TLFAX+XKusn/YzszOZ/UCfP5fZyjLFy76CjScr5JZ0bdM45p+12+YSVv
	 keSooXul7hDBfQFzWdC8Q0YJnF1bSS8b+6UhrkfgEaMHoHil265Uht3BfSh6w9rVi1
	 KqzCHET3RI2D7uaCP5NDpqclMQu3n2bIWX4lXQ2TflqkDyi0zl/b5dp535/b6NK4+F
	 GRvMyxv2W+2fA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CC5EDC2BA1A
	for <ddprobe@lists.linux.dev>; Thu, 20 Jun 2024 16:20:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171890042281.9680.12778299146181923351.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 41e7c70b567e5f027de8255de26f210ed5053dbf9b92ed20edcd15ada69184b6
Date: Thu, 20 Jun 2024 16:20:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718900422
