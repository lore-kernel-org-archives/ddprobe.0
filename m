Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31BD630BF6D
	for <ddprobe@lists.linux.dev>; Sat,  2 May 2026 09:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777714054; cv=none; b=OcphClMkkR64LgBD2Aw/8l5jTw0VtEbn5WQvWiVGKOJsEDr0APCXv2AQuf4fK6JyhkxL6jfCp42yGjmjA4yRAVQNzyhS27nZKDsZqlw/zobc2/oOEGiqCpjW1YFi+Vb9dPO4piuTwCNZz4HZ4n9Rdi2FypLjf0Y8LPdkjzYgjWg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777714054; c=relaxed/simple;
	bh=FDV2WJNS0RtE2AIeYtd+KVC0YN7DJ9Pl9bNqezjwOlQ=;
	h=To:Subject:From:Message-Id:Date; b=MKlI6BfmET8MXyV7l2r54Gsmxpqu8dGzU6FiKbAgCNoMmcKV87W1+9by25GtRW/13c4vCr2g/QrveO7R7ke6UpKZdk+E5e1ACE/qSSnBLFLqu+5vSIUGL3ekTEo6VtqO/CW02aOdKqdh4Uopl2psFh2oKYnmQYXlNNH+6AUaoK4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iEP+H8Fe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iEP+H8Fe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C11FDC19425
	for <ddprobe@lists.linux.dev>; Sat,  2 May 2026 09:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777714053;
	bh=FDV2WJNS0RtE2AIeYtd+KVC0YN7DJ9Pl9bNqezjwOlQ=;
	h=To:Subject:From:Date:From;
	b=iEP+H8FeRWYvbSgkf3va/Vs3GWbfLF6jSM9fBMFkmgMfXybjcmqT0BQi1PBTY3Efu
	 E47Vp7L2Odj4CwIRdrWQG5yoa6B4sL8hF3G0mkOOVINSrj6mzOrv8MLa1t5JQTz7ft
	 H/dIA5ONGlS8oo7+dI6FwPyfd4rIzY8Zlczbe+PF5I2wznDNBu9rxgYaq1dZp5++uP
	 2Jv+HyNoeswC3LSuG2dRdpZ4AntUX2uFXQ+2jmPCb3imkCVsm7jcehG+rk/mwuNHqj
	 jSj8g24nTKnrdamEWnD0g+XnQsKpEe/LRV1alg3q5JR7S3pR5Shna45icBzKhIPJLf
	 MiAY3EimrKD7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD286CD13DA
	for <ddprobe@lists.linux.dev>; Sat,  2 May 2026 09:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177771405368.585.9299703534881821729.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9b397f02965a55dfe309f609b3e1a5332d1607aeeefa2e790775320760ade31b
Date: Sat, 02 May 2026 09:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777714053
