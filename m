Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F1042C3248
	for <ddprobe@lists.linux.dev>; Tue, 19 May 2026 05:20:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779168034; cv=none; b=ktrHZzxtwt77WylDCAAStFCDUmz6Z03xncuknmyhXXtn2eBPBcVNstTnMcu+UY8jlOoMgNtOquzD35+C1LQYzgY75yO3Py7mvAHWJ5uNaWiozLWUHFH0fDgI4jYVQpyIzZ4cUop5iBXFERpoHSOYqpAUmHQasd3tZtbzyfjjCMg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779168034; c=relaxed/simple;
	bh=EVNGS6fz8MFMyhTkerOd6sroDUYUxIyr+G3IKAhosmo=;
	h=To:Subject:From:Message-Id:Date; b=SU/4Fwb0eW8pjzRbtn88o+BwyPwpvQ2vob2VmfggNIIGXE3YFvGVGnhjSMCdGyqT+PDO/dIzZgXjl+ZYJJWXBYc3d4Ld43ivlvUQrsOiHyDvCW1DIgqzdEkJwDToUpeInq2mV45w5Fteo2YqG6PTODXnia+vpiehrZitbUtXYRQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dX3sz0sz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dX3sz0sz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB77FC2BCB3
	for <ddprobe@lists.linux.dev>; Tue, 19 May 2026 05:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779168033;
	bh=EVNGS6fz8MFMyhTkerOd6sroDUYUxIyr+G3IKAhosmo=;
	h=To:Subject:From:Date:From;
	b=dX3sz0szipZeAvw4OZQjktoYkKWNQtxe0z5LbagcpGne3Wdq2r7dOg9RoqBBnWkDS
	 VzQjZmS2x38E/1ePPxCNZRtPgfeI4Mn8aXscTD4dDp3DMLwVVQw6KWY6QkiG8hSyOq
	 yjwlb5t1DzXSKTOWtLIr+EwqDVV7LQ6cuTKbvepEAnnz5P8KYk8uGFpm5mgPnQ0sN/
	 /OIZua0yDVmCbiCYjKe91ckWuJTGHZPFQ+NsbZx4G2qcXqz8sIJyaXIXdY0QNLIny5
	 0wuXrpwCcQLHQKRD78eE70n911cX7DkyC6QU1MdV8VEgjCMvNcd1IEEOjBpoeIi5dJ
	 Zozddkz7tpHfA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA09ACD4851
	for <ddprobe@lists.linux.dev>; Tue, 19 May 2026 05:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177916803368.21692.12572154144047734197.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4d7b77649ea007d079d3bdec6cc502162998e91cfee972e52e7ed5a728284ce4
Date: Tue, 19 May 2026 05:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779168033
