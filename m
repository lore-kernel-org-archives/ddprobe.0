Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D4C2185B48
	for <ddprobe@lists.linux.dev>; Tue,  3 Dec 2024 07:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733212554; cv=none; b=Oj0e6P0fXlC6d0fhMQSMDwaY9N8T2tZv0uz876Ar2RIcImxdoMqgOkWRpyxtDICIzSMCD/P3L7YCuXJNpJ3yBpM9vDi4z76rzvayOZl47ZRxsvIlrIiUI41BhXXhndO8hWr57IDenBA1j6zBBnk3EAC1wb5jOxZUISLqVV8OKlI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733212554; c=relaxed/simple;
	bh=7AQCKfDLsukKr0W9L/qplQzdYTIu8aqAdJ486Kuipq0=;
	h=To:Subject:From:Message-Id:Date; b=MXKfU3qJkVF7+NCHRZwGrSiI8jU1voCkDlkL9NSgFmfATQQX1fM9qdJ7Vu4dY7ldBChJGrQc0RJVLOaxN78GR7uk38kVOCflXg1Ass2bUmBAxkIckcPqH/x86oPXhKrQoupaFMaHrSVahSjefvVf3xhrL1IfXgeY+r7CNXenu8M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m5CqUtFu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m5CqUtFu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B15CCC4CECF
	for <ddprobe@lists.linux.dev>; Tue,  3 Dec 2024 07:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733212553;
	bh=7AQCKfDLsukKr0W9L/qplQzdYTIu8aqAdJ486Kuipq0=;
	h=To:Subject:From:Date:From;
	b=m5CqUtFuXgfi+zj+xUhq2UIcj2j9AeqXmu7OEoU6xgkW6lskdqVSBckqpezVabg+B
	 ugPZjAp7W4k+CqksRtFTFYbDGZHX6MPxfneGpX+EFXio/9ccjZ0To2NQv6JbznDFCR
	 ZgNMn4dhAu9qYynCNPHOnzpjAJevhvIibDqhiRKnzoW7RYD3y5xqU2DDFKhnzTDtM8
	 prg1mme0Opo2AOd8uqBuTRQxcDXBO97lIfK7qk8FWW83dz6KQUOKngqB5TripDlgL3
	 pERvWDZcXIQ/Ue8/rAaTH9n53QLdA6o0RqjdU6utUuD5x1k9XdHD1m3DuDatErjeP0
	 +BCMnLNYwt+JQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E651E6C614
	for <ddprobe@lists.linux.dev>; Tue,  3 Dec 2024 07:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173321255364.27005.6352468577174399431.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e80e1fe56d4b8231a1e09c0b1bbb20906b4708017a00056bca7c19a70572983e
Date: Tue, 03 Dec 2024 07:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733212553
