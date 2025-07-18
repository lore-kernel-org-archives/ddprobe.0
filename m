Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 193B13214
	for <ddprobe@lists.linux.dev>; Fri, 18 Jul 2025 04:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752814194; cv=none; b=QFuwK/K+RvGYi6ySbHiw5tbXZY7e4NVx0bkTY871hszghTpAnI7cla2odD5fvOxaeHL0wqnR+06HYOpO3o6UfGc1+o9iiefMSIX/CwnTbI2Yct9e1JEk0f27udyE78JSgoZOVIbFX+ioSim6Wqxa9iourTQPPzyLASMfLZqs7zs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752814194; c=relaxed/simple;
	bh=oI0reQvcdSr84PJSmEByWekEoFKwqGr39iI72l1ainI=;
	h=To:Subject:From:Message-Id:Date; b=QdGnSvgcMLWuqmZJJhm/gb1WZU2K2TtyLUETNh285qHYjP4JOod82N4nrwGv3yoSrswcvxy7/leuDbmh/Ofo8CRHIcnb7pVNQGhtSJvN9IjN4ma6m4tFjJulV/HX5ERf0dTEQ3IMpcnKhtUwcVqwMG6WTpjejBQRyIR8QSuE5hs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hJIqHPDP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hJIqHPDP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E1FDC4CEED
	for <ddprobe@lists.linux.dev>; Fri, 18 Jul 2025 04:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752814193;
	bh=oI0reQvcdSr84PJSmEByWekEoFKwqGr39iI72l1ainI=;
	h=To:Subject:From:Date:From;
	b=hJIqHPDPr0g+xmnEjmtjnGJkivm4czq4fIvq8say/4jg0ojRJmyT6c75WRwOqdo+M
	 0/JrqpS7Z3+hFXUVo2gRbSLYEGf4Y20gIoIhYeLTfPFTcJXBXuSs0WJkchGpXfpaoH
	 3yXGRVhHu3DjuhxRN9Kudq5F9s6Vi/WeUjkhVqBJ+e7L/ijxrKDlAqXQBXe8CKj7ZY
	 didUOFHtx/8Gf5kFtTrxZ+eySl1Ds+m/r8pHZNruZZ+ihHr0DDXoYYjMwP97tiXZQv
	 H96Kd6wb6g/Qt/+LU8YJRGmrKbsSjiCszJAyOsWNDRGGveEn9ig37/6Tkocd4kdxLb
	 sak0dNWuGipUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F893C83F1A
	for <ddprobe@lists.linux.dev>; Fri, 18 Jul 2025 04:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175281419357.28145.11115923373096879796.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 86253ef9e716cf5c838f95b933b29f648b52eba9fb019c4c4e4577ed8757a109
Date: Fri, 18 Jul 2025 04:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752814193
