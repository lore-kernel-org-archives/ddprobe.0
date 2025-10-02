Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AEF7A932
	for <ddprobe@lists.linux.dev>; Thu,  2 Oct 2025 05:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759383594; cv=none; b=QiXFjLBS0UTcVSGBqJqBCysaQuuE8Lu6gDOwi+oGjfH9wRnrAKz3G1P6Fvy6XSvfqBCq8BXYqSVrMXen/mgFIFFiLXx8NUbgHSXGk8ktgvVgDkszQIN2qpyqBer4t10eDWRgRbyjtUZkxo2wbIKHUKk70ObYh7CVbHCe7fEKlJY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759383594; c=relaxed/simple;
	bh=3Y/y6jAFWAj0ra58k8fmShcGqneeWWKCWl2pbXBAGJA=;
	h=To:Subject:From:Message-Id:Date; b=gEpYSdLQ/YvDoZSmDvddd9xIDRV1ubgygjuPIXm42VXisOcxSnLdABOStqkJcL25Xegft6fG/VWZmn1S+O/y6Q1prhaSbzZmGNbr5pbby+qUjt01dgv/Wc/OFWNahLOWcDuqf7o10bsFLFvLeCooQR8jzqoCl7G/DZO9t7taquU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=geahQ5L4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="geahQ5L4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7B7BC4CEFB
	for <ddprobe@lists.linux.dev>; Thu,  2 Oct 2025 05:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759383593;
	bh=3Y/y6jAFWAj0ra58k8fmShcGqneeWWKCWl2pbXBAGJA=;
	h=To:Subject:From:Date:From;
	b=geahQ5L4TIZSiM+OnydJ+j0YBi8qG4reo4wCBhwHUKlfvoLKP0i7qhYXm0pgVTYpc
	 +XZ77Iwxtnn2eZkE7Hi0ba1ZM08+VI/JfTQSwxwdu5JXZvxxBHrZvzlZNanEo49ceW
	 Elmy27g0Q2Wh/mlOkc5M0F0tXRkfAh6i66QjQw4Jsd3TfSekoyrWRMdv6WGHkdfoCd
	 e8sbH/HKvI0Gtw72wHGjPavwz9pqaJ8fKlnjVdY1Kpd3A0FVcb1eL7j7IKk3EkEh9M
	 WLToLcHueQK1S+zaq6uvjWQrIuRYs8FVTbtZDAvDrb+Kt8vnSFNXbuTH43UkLa1LM5
	 fFm5qP62yPKkQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91812CAC5B0
	for <ddprobe@lists.linux.dev>; Thu,  2 Oct 2025 05:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175938359357.1820.15647411207015045606.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ebe0cea26391169cbc35ec75ee7d03f634f757245318e8837e9adfeb99496f74
Date: Thu, 02 Oct 2025 05:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759383593
