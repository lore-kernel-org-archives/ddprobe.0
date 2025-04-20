Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 453AD6AA7
	for <ddprobe@lists.linux.dev>; Sun, 20 Apr 2025 07:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745133594; cv=none; b=UAKgBX6lmsPxMbS3OOImIWj/H4GeldNKksegEPagh1JV0JihD9yNFa6tJI+UHs1QK+f+UK1wUqmlysSIRRIcftGky8ZfE3yZMZwf0Ejjp0QQcnJ8n6102ZQRzV1WQ6zuetH8o2h5dTYpab9hEsdHortVGtedMpAhT/hYVqpt9uo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745133594; c=relaxed/simple;
	bh=fBu58QJv4qk7xYNrGA8pLdz42FM6TTn87ADFDGjz6kE=;
	h=To:Subject:From:Message-Id:Date; b=HadNxUgzQwGPrOT2SGFuZhOLh7Pgd8R/Ft/xc+RBk/eAzg00Ga0V41Fo1BQqaDrZQSNk1pXz1Oc0DZoG9PrEqyrLmR5VH8M0SYRW2sR93tCoImvgZYnY2W2709efvcThnNBZAuEN+64OGeM2d9L2voeukpJi/yclya8I9i+FsW8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HF8qKkUk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HF8qKkUk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B149CC4CEE2
	for <ddprobe@lists.linux.dev>; Sun, 20 Apr 2025 07:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745133593;
	bh=fBu58QJv4qk7xYNrGA8pLdz42FM6TTn87ADFDGjz6kE=;
	h=To:Subject:From:Date:From;
	b=HF8qKkUkJFunEb3HjU7Jef/edlyXIQwIEflnHLo5xOFD7zsu+Rj3c+HHZO0XUb8dy
	 D2IZwPbiTCub+5pnJZlUFgkmaiRXymcMoHzXTljCSVnSl3YjeF1Y3CEFfif3M3T5yL
	 jgLj8McP/rByLArBs9G7DtUT1/C4vGALt+MQfngL47QjvzlI2KNvkgYVKCQEPRq88j
	 kd+krJUFnY30Uz2l7vTW6DldQUsOlfp9e0/aIB2X1sSvdGS1xFR1fdQPzbY46nnkhs
	 4DrSA6rfoLj8ouJkmGpmzeIldV9iAPqRmVv9TxXLfaidTWmbbw8nZxYtY10TyWsnbH
	 pTgHT5l0TkwJA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98EBDC369C2
	for <ddprobe@lists.linux.dev>; Sun, 20 Apr 2025 07:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174513359360.12273.15733116479757505061.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7a13f7c04b5fbb33520e8492c49258c913137b2c373f2f7a56cd14811523c44d
Date: Sun, 20 Apr 2025 07:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745133593
