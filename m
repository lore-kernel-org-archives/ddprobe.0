Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 087CD37D111
	for <ddprobe@lists.linux.dev>; Fri, 27 Feb 2026 20:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772224494; cv=none; b=Sho9k5yCIPf8/7Z4ky3WxzEljeDR3Oa0M4Si815D85Lkj2luFpbTc2ETn8Vq/GGV1oPni4g21QoamC+QJ5pjOGYb5W7GjCXiRIxEshya8diPliWdZ9pjqGE/ch+EewkwQ/+Zu+5B+YGJC1S/xk1QJHAHmIcNGPWqLLc2rsxj5CM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772224494; c=relaxed/simple;
	bh=YoPo1yDVUHe4wDjLs4oxTNMyYZ9XI/TQQSlE3iWrAfY=;
	h=To:Subject:From:Message-Id:Date; b=S09l3t4tAn0EWemwt9d0c5kx4oe3XyXkgfQ5cu9ZOVjaVgcW2txNBD37VVGgmgslFVj8mD8clCXw9p2q3lF+93K5RwJ+ujruQ91+dYnx/p5M/ZSFIhBb6QbrsQO/rotH0QW2AFAbepqdRXa+QOjUP6zEoTwcznaAMwkW/ZNd+bE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rFR+iAgw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rFR+iAgw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A72C2C116C6
	for <ddprobe@lists.linux.dev>; Fri, 27 Feb 2026 20:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772224493;
	bh=YoPo1yDVUHe4wDjLs4oxTNMyYZ9XI/TQQSlE3iWrAfY=;
	h=To:Subject:From:Date:From;
	b=rFR+iAgwaltBv8jS9fYTfrNRNBRHYFjF1zFsfAIn/8zbdxBQgCHZLvM1DrGpuo8VN
	 XSSO78aigAyWQRR0QnVAtN/nxJG3YQHSovGwpABEMFN5aBthQ9xhddzdqCPm1Or9fC
	 yBLSrC7iYqGDgpkdlTqoxHyViNl22jTWtMtPEUpLPTgEtuJ02f5DP0OXGHEL3YgpjD
	 elzem4NS6b/hfIc42zpxPNxlEqF8rJZPQRrWLcsmBe7LmtQc4F2i2MtOWgdBhzwB1r
	 V9vVbbFKEPRTMJAEvLfHIz3rf3o0+XpL+Fg2m3YudjuUmfqbUFA11+PlUzq+kDEVZq
	 T4ctj3FCMr7bA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 946831039893
	for <ddprobe@lists.linux.dev>; Fri, 27 Feb 2026 20:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177222449358.17343.11149415452837372782.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 08343d6b0c34c860ad41b0946dcb5e6925da770afed25119b9c4c28713f6c0cb
Date: Fri, 27 Feb 2026 20:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772224493
