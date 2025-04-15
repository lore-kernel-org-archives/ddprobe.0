Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BAA41AF0AE
	for <ddprobe@lists.linux.dev>; Tue, 15 Apr 2025 21:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744751394; cv=none; b=T5aNxz4FGVxX2rwQDxH3Pewl+3+PwVoCp0P0F2DnlqRfa/LAmxwkBKenRJZalOLclP4/nfSi0O4dlJ/2W4yTSPrKYl7kadaE9e/4CrtbY1KF/8zsP8Y0+KHhKPD9Wcq7oYKfB9NiRw8mzSqURoBTNZU08esc3s1bWfXLZQZECIM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744751394; c=relaxed/simple;
	bh=8mGRUmliVxi8QHoVlha+UqBO8oicekBhPJza8G0nVfs=;
	h=To:Subject:From:Message-Id:Date; b=NEQU6TwHwFh6O8/UrofVL4j/wLxISDj2+4B/0kkmfqynie0VLP2OsiayTopJLDq3InTUoll53gChZjN8Yw/m7wFA/d/kq6s8iCVGm2Oc4Lqrl7IM8FVrUFfo8SmDYXKua06wcPImFQKgtvNwaAPl3JrU4XTJHz6tHqvTOre/0FU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QCJ5uUH6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QCJ5uUH6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2D60C4CEF2
	for <ddprobe@lists.linux.dev>; Tue, 15 Apr 2025 21:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744751393;
	bh=8mGRUmliVxi8QHoVlha+UqBO8oicekBhPJza8G0nVfs=;
	h=To:Subject:From:Date:From;
	b=QCJ5uUH6FP3iN+WDGZ4l6JQpWAx4mADbNlLhKwXjXsIzLwCB0yVdA+xyK1UQZsXjp
	 IaBQ/9JWqEy1L0wcf0CU0+TwQoDhUZsRs4eFjTtNvZcHCvrrFtTE4Tqvq5eH5kqRrf
	 OKxSv2SZYNuykH1j6bbK95TpmgrOeorwfYit/DZmWqH5dwwii1Jdzzc5v2DdLBaFAN
	 9PZy+BVKTFPLi7B+PwS62NHYRovQe2uuhCGOIYfA3bSn8h9frETr/FDAbvIs6CfODG
	 Vhu0Nqd1Qfv6RQs0GfbHW5pKiGTctTfm6TQMFaE842711Al8xWw+UmGJpsi5HVJG93
	 QiYs8osEHQPeg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9183EC369BD
	for <ddprobe@lists.linux.dev>; Tue, 15 Apr 2025 21:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174475139358.5297.3978636122970856907.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f599d7db0c0b3fc97c6b6f1fa6add99c7fdb7c50fdcf2ccd24749804c8fc6268
Date: Tue, 15 Apr 2025 21:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744751393
