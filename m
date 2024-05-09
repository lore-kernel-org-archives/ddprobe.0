Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B4D47FBBE
	for <ddprobe@lists.linux.dev>; Thu,  9 May 2024 21:32:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715290343; cv=none; b=VO9Ap1GTD/WSCSpZ4lvVXfNHHQ3FHvosw9XpdthjXLgD/tgiLtPF/B7mbDMTWnjYVyHXE1hSJgY5wbBihQQvK1smez326hKH9uZbeQM97CTmVa9T/9RGNGCZaI4U8h8TgvmeHI9i0KFtCAG3K4Wop4rJXo3G6JtpFp60QsNRb8Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715290343; c=relaxed/simple;
	bh=nvbn9Y32mNE54gRc9zPQy67cH/RlRLeJzEs7/55ACNY=;
	h=To:Subject:From:Message-Id:Date; b=gcU4j9EFbHZ6C9cRI6bdm5VbyCjG6bKFagG2deWa2A7YW7aE6WNSGps9rq+fjXx7p5IofcHkgXYv1ncD15fTlIDsHuB5SdRmra44TRbn6YJWeOOTbmmtDoXiQ7g8oCbjDdHSdEPukDCx05WMooAlZnIsLRGY8dbClaMUhnJ5wwM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KMDQGymW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KMDQGymW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D363AC116B1
	for <ddprobe@lists.linux.dev>; Thu,  9 May 2024 21:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715290342;
	bh=nvbn9Y32mNE54gRc9zPQy67cH/RlRLeJzEs7/55ACNY=;
	h=To:Subject:From:Date:From;
	b=KMDQGymWqItCDhu9D8VB975neEiVqZkScqVYQr3AH6PXTTkkozS0kztrrwPy96xSR
	 WtxtFdaLqEl0mmKNNLvdpFIhP8ewyRW69dENRPargFFxT3IK5Wj13ie7XUYnHuAIRV
	 Vh2AWPTm1SHbkSSuqMPAMi4uFvq1/AKsa2Dojto1nYV9Vc9hlvToPmcnQliu+3qcKO
	 lv1xC/tzGpna7H8GbYUyg7Xup157JyqR4PcVPe9eEh48RfowS33ZO/LiJ4DTTQ+HjW
	 MdBzuCnVJCaGNe0UFvuzIHOJnB7oyvbjjD9IradoN46kcMG6BATJa9gNvWkTJz7EiU
	 df1hWADBZTmgA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1F6EC25B4F
	for <ddprobe@lists.linux.dev>; Thu,  9 May 2024 21:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171529034278.7544.1442171528201016616.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d48114d5338cc906130b8f447522f212656733795f4066908baae69e03e7f89b
Date: Thu, 09 May 2024 21:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715290342
