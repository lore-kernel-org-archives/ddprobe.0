Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3486A18D
	for <ddprobe@lists.linux.dev>; Mon, 27 Jan 2025 12:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737981956; cv=none; b=dlVcIm5RqqBb7U0KdqJ2jcAFmQ9scYmkdWQ3cr98XYXP/+6saihrRfKUSsymncFHAEeJCV+btJN0sDgwqIc1sR3oKD3FicYGNJAleduOXexdNjS3WIGzTncoBbsc6MLRRTF+9RKAGzGs3uy5epjQl5VGy4QNo07C1LmXAELyfg0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737981956; c=relaxed/simple;
	bh=gOZGiMFIDLRkTZiziGE4Tn5YOQ75JSf34Q8j88oI0iA=;
	h=To:Subject:From:Message-Id:Date; b=YhNyxQw54xMou7gKjJOy4dOMVmAvrlfdk23kOpJwckDiodognpdSbRSMVm7y53/QjgLmIo6yeAT5fwDKwvAbSI01W4Kn8w0rSX9lRnFIkzoRx6xT/kS9zJcmFmv6frH5yS7DROhrhe1vnob8YnHNA32wU8HIeLD+pv2S5MW91W8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Is36r5T4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Is36r5T4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5E0EC4CED2
	for <ddprobe@lists.linux.dev>; Mon, 27 Jan 2025 12:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737981953;
	bh=gOZGiMFIDLRkTZiziGE4Tn5YOQ75JSf34Q8j88oI0iA=;
	h=To:Subject:From:Date:From;
	b=Is36r5T4SX5fiJi3h9wrRh16EZm4yu/jmTxQrSFFRhU5bx8MW0QBQ/97wxoZF9BMg
	 P5AxcVUYUDNVeeSWKmpvmruYPHfIJdPuCzsBJtnHdAz3ksizBHgSKKw8ywKCFZ5KXL
	 ckaVN29RfgIaRlxAfHgMElKPfxNvKLc1pPnuZhfmU7WV1RbWf4mJcJfcJV9hSmpt2I
	 WgMrONJCbW7Z8uK7i8k4i5G5gjJdt/jdvFlcCCrVW9PN/v5DSBGpNaJTd2OZ3O+Gzl
	 6LBTZE582dm/uhyAupA5Xq1DSCwLKdPth2+kh0cy08ZWEiTOmHHFM3Oj5NHuhqrc21
	 JYNM9sVMxZRlA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 954DEC02188
	for <ddprobe@lists.linux.dev>; Mon, 27 Jan 2025 12:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173798195359.11891.11129876947895785368.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a10297d97060a5b170ca4928ab83d2c51d0a0e5039ce07eb16eefa273ee2f358
Date: Mon, 27 Jan 2025 12:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737981953
