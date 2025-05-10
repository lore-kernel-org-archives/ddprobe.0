Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 468CE10F1
	for <ddprobe@lists.linux.dev>; Sat, 10 May 2025 23:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746919794; cv=none; b=t8AUpD6vfST+ltIMiEq8Ae64n5z0BfnTFtUC1kxz+mi6ZogYZFajiY+rOer8m51yhZ5ZMecfUXIH1++wVQNkbh2ZQ+qElNXNUtO0oH62oQnEea6LLCMSXtGaxoKkLU/vpf31XMtlttK3ailW/EKSvPUhlQWontmd/RbMSYfD2Ig=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746919794; c=relaxed/simple;
	bh=M/E8DniTlSZkmtj0+vtawG85kkx0OEBHCHOPbwqpzds=;
	h=To:Subject:From:Message-Id:Date; b=HfUVMOlpE/B7FgmPVlAX2xfC8QjS10fy2tO+rmluTWTMTuhixWXqtcXB08TP7BlIXUqUUQMHsB4dTUX96DHgmq6bSlBO753TZHoyAPr0TEJ5vr4xSi6J+Qp0I0pN7U5t/bSXzrWzUEa3/uVBd8G6kJy1bWo5n1ebaomBMWpigx8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N86of2y4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N86of2y4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2093C4CEE2
	for <ddprobe@lists.linux.dev>; Sat, 10 May 2025 23:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746919793;
	bh=M/E8DniTlSZkmtj0+vtawG85kkx0OEBHCHOPbwqpzds=;
	h=To:Subject:From:Date:From;
	b=N86of2y4lRtvHNZHGTB+rSXMc5uykm28ecY++GCyVCiX1wLb1X5nQs7B4iLqpnUf2
	 Vj+OLVUBKLFg8GtAciXKIZ9K78dceoJ4TLuZFP24cjHLKzmfM5yl84djQfzj1mx57W
	 KdwhJRkuNEZCpAtLmQ2FVfb8QCb0U4YKDxpA9gaTEKWYIHt2rdqQb6pVouQEpQgJLZ
	 sRgwOInwP6gF1IoSMWFupm0/PxeVsjP/q4qwfSb6z/TQtZ4Wo5XNixCMIbEP3px1DV
	 pBswFPgSYyTyDUjshIU+08ofjBR3IsWwOv9HPhIR+HPr9r62sVEYBzkBLvwHiYg2Z7
	 6ekZlHvRIZ49Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E7A2C3ABC9
	for <ddprobe@lists.linux.dev>; Sat, 10 May 2025 23:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174691979357.24896.1492949437105978639.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: af06e82c1966a34a78e71102c3e04bef99d63734bf27d4ee8b833dcb5fe67b7b
Date: Sat, 10 May 2025 23:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746919793
