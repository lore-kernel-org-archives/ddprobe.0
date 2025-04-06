Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 57DEA1BC4E
	for <ddprobe@lists.linux.dev>; Sun,  6 Apr 2025 03:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743910194; cv=none; b=BZgdLIw5QKjZmWEEqygl5xd2p/Bj3XocjarI6hhNgZRwtp2QdJ76jUx52w8hEbHedb6dzXQt+QwRq/DbUBbrnNEgk4mwtjVz+UnpjOZszGBW0lTlOGCkULPKkHd4si3YIvNwKvxJTXRR6FcTEXIPIB6EMNV4pSwzjA2aK5p0J8Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743910194; c=relaxed/simple;
	bh=zPOXBne03hhl+iW5MoldLC6lzgLyy9Cf3hz2ChNaOaE=;
	h=To:Subject:From:Message-Id:Date; b=TERWsEfohOLHTvvBHF+UjO1+TouZ7vGVC14CBrXDZFgiL1bnCQDc8ji0eIawA9606R4ti9iW/dEJKkCEiZ8vqW9Dr/zZ9B5QaHoSP3frSOZK9DadiuKco/tZAtKMEh/PuJGjsjzXyd/ty690sk18fhI/wLehEpN3D1pXuK2AG1U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CXarqj8I; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CXarqj8I"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE071C4CEE5
	for <ddprobe@lists.linux.dev>; Sun,  6 Apr 2025 03:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743910193;
	bh=zPOXBne03hhl+iW5MoldLC6lzgLyy9Cf3hz2ChNaOaE=;
	h=To:Subject:From:Date:From;
	b=CXarqj8IYnjMmJ6cYXM8d7y3G4AJHMIvI+xE5zcZ4C8Vtr7/vz3szVtCdxP6I2b3Z
	 o1FLY/ZeazfqoOyuqMOIKHRmv01UG0i0k+wIRNR8wMiPapztXrAaLiDylmNcZndhZ4
	 HyMivGKOic9AKVgPSXnT6pl1yDCQEugS/3auTIZFuJR5W1PKPl6d6mgdMgKlJL0IxG
	 J9ZfQ00bKETfkXd2roRNaxQRi1leZpzsWALbDiDPHbBo6Yny887IKlAQYChVaVGUZz
	 Chjt9rVsi1qwzmqcUozxcukK3IVxAEhS3sv54UQ8pR2b8qN+erQSKCY1xu0Ucy3oFa
	 jZVETy7DG+rQA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 955C5C36010
	for <ddprobe@lists.linux.dev>; Sun,  6 Apr 2025 03:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174391019359.20393.16810302043147286240.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3811604c5ddfd110a0b37a9f5aeb2b0ba8339dc010f58e3eeab7f0e5c7e55e9e
Date: Sun, 06 Apr 2025 03:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743910193
