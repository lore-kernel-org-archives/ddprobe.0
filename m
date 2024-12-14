Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3227ADDA9
	for <ddprobe@lists.linux.dev>; Sat, 14 Dec 2024 20:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734207954; cv=none; b=p85vjK9YobY6EYrW78v29T20PsHBSnGdfAK39Rtvdt7qI+KSG6/Id+nrr8pgSH/TbCiAV3W7kkSSl8iittbsqSEyOFv7Qd1xNbrla7ykc5ZckQ45lSW3INu0hMZ/W4A+SLDCxSuDaaXL6XUJrWcrCAF4uOCq/VmLjEsFBDBmS2M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734207954; c=relaxed/simple;
	bh=qiGL+16lq4ptNv9qGBD73heQVwtMG/m6bMKclRCJvyY=;
	h=To:Subject:From:Message-Id:Date; b=gy0gZ5rrvfo97aU3ZZyErF/yuH2vnjX0t+OiRrfIRb6QFJJPQi7RsXpPmA1BSW7seb7dXMzrhPZCV3A/GAAGvQgmkOIBebypXg5VOP2/qXB1g29RtZ/V6YOvvqhDg39t24+gRtYW1e/BjSb0aSR6cqRjktPztZvVNg3zuwjDTYQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l118ARyi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l118ARyi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BBF50C4CED1
	for <ddprobe@lists.linux.dev>; Sat, 14 Dec 2024 20:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734207953;
	bh=qiGL+16lq4ptNv9qGBD73heQVwtMG/m6bMKclRCJvyY=;
	h=To:Subject:From:Date:From;
	b=l118ARyiRWaS/+Ea9K7Guc0Bf+L/YdMqAoLQVd7K2dASF/qpT/HH0VvREwl25d1mm
	 EPDZU/pEEhFL20YxA2zcaP/9d8VH8op33+wVXYRD14+1VqppwtJmPLeysjB2IbiO1q
	 1lkBSZ7P+BLV9g248XCIjzDBGNtMdVPZPVGt3xvnZI715oBic0h+wMw7jp7E1DjQ8Y
	 Lb3wGqqa/DyumLi8EdSPYjM1p2MHHHudPc4s0LczS6swX2LyoB3Qgd7TluFn8co8UL
	 qliPp8cUAmCcmSby6x8NifxWdMiOSq52SI7o8OJl2vKn8zZCTN5b+x7ByNJaL8h/rn
	 +R99vt3TrpUgw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A60F4E7716A
	for <ddprobe@lists.linux.dev>; Sat, 14 Dec 2024 20:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173420795363.32243.12651547602255737869.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 67863653a3900102e29fc3986e82f4db43c54a1f7aca64a5f01a9e13b1d7eac9
Date: Sat, 14 Dec 2024 20:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734207953
