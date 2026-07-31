Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4722049620
	for <ddprobe@lists.linux.dev>; Fri, 31 Jul 2026 02:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785466234; cv=none; b=B5p+I2N2QabwSOoXjE21Be6ZHGH+HFWhMIpLgTCNqO1700oSzXxTZ9VMzbkQgh2TbBkxpyg36U41p26/Mxv6CAgB7KEaXlCAERqfRrmrWcs3UpioLC6dYaPx2DDW2psX4bRuTtA18RVBWm3b4bQPvF12xQAW6NeF42zKoV7aJY8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785466234; c=relaxed/simple;
	bh=BaMHGbhBqQJyT6fP9G7YTFU7NMon1vvwP/Ip5oc0bpI=;
	h=To:Subject:From:Message-Id:Date; b=M3eW6QSh0Ixk6us9w7PD58fvAobzZwy0hBGk8jKy5bzBpi9dYE4K6eS9sIb+8Gewz/3BKdBNFyigVJc0c0oV20mS0gnv0Y08M3dXHQ9WVRTxkUFUol6ZEbU9efnPCAm5zvAsAKp1qAGSTiYR/+N84Y3CjdJIZHf8lSQ+D1J3VQk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NQFRE6At; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NQFRE6At"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDF73C19425
	for <ddprobe@lists.linux.dev>; Fri, 31 Jul 2026 02:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785466233;
	bh=BaMHGbhBqQJyT6fP9G7YTFU7NMon1vvwP/Ip5oc0bpI=;
	h=To:Subject:From:Date:From;
	b=NQFRE6AtMgAdLmGz5x4O1ZKq17n8Qac6Km9DX17Hj1s4U7EiEFp4CD/qvdBE991VD
	 XmbgOd3cmxDuSEqwJRZz8vnjTqED+R35PVRUqGpfQ5CLD3NrZ+Idsk4LJx5xBQ1iuf
	 m0HmtEcYkq958XBChecRx4auUeMW4RXKRTJMKTuX8z+mdXB8bI5n2JEWB0BIDwILI/
	 iKvlEAGBldWav/pF/8bQI8aPV3kHTJ8ASqMAOReauJZaB6Bn71eAzF+dnC1lRacR0n
	 56heALa0gbY7lf6u8bUvqFFIr5BRWyvEoDg69vIFe/DxFonvcKmZggcBVU8hMsd/+1
	 9bNMRzq9Avcng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA3BAC55167
	for <ddprobe@lists.linux.dev>; Fri, 31 Jul 2026 02:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178546623368.12104.376068907942121135.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3fdba685cd987ba20bfcf088eebe33a0b0e9f16bd2caf3aec0bebaaecf1944f4
Date: Fri, 31 Jul 2026 02:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785466233
