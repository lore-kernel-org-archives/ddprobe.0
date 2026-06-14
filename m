Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 382EA17BEBF
	for <ddprobe@lists.linux.dev>; Sun, 14 Jun 2026 04:06:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781409994; cv=none; b=I5nH4CSRz3O6DN9uq1NdHVcPx8OtYCPNYVs7VuLMsq2evdkJymxrWO8E1bQ1nVhQ4/hmunFt4QSLBXFWN0PkE5oaYuBgbkJbraCGXZxv92CIMM4RCpsORyGgSDrEzhGCrhNEP/2OI6LwA3tPW5217r/NmMAfKHijIj/Qr0yaU6Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781409994; c=relaxed/simple;
	bh=tWe9VkoaeVPiLrPbcsTCcyxKQPLFFzcDFkSkraPmHsM=;
	h=To:Subject:From:Message-Id:Date; b=bI3jVHGWggl0y6Fr5i7werag6q4MTIaOvOcnEIdSnqIb4gN8UqsMTZipXSEByfkBB4s3kyZbTmhdb5vKMyDtyArtA3Bd9sfpdZuDB26WyfneAKn2kWdZzftHoJW85ky7Nd+Jtn4xG5gkZQo5szjNIxMkM9V7fZUGLEavCTDpRoo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SfriDUNN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SfriDUNN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF217C2BCB0
	for <ddprobe@lists.linux.dev>; Sun, 14 Jun 2026 04:06:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781409993;
	bh=tWe9VkoaeVPiLrPbcsTCcyxKQPLFFzcDFkSkraPmHsM=;
	h=To:Subject:From:Date:From;
	b=SfriDUNNDZYkgX7H2VmDv9tJtoiItfl0d2yDg3Q18zTWoBxMHq7LTAD2v9ZxIVaLv
	 FNvlS5htPgk0zM1ZaywAkZw3GckKVN/Q4WE8k8lYw+Rotbvs6fPoT5NqlRc7uc/ZJg
	 La5T4IzhPkZppktFXpyDgd6FHd9mn0HVO4xRZRdyLs/z0RI34sfFn7/f4XrbdRKzJy
	 QA8RTauozzzjR4DyZy3+IjMD9RxQddcIuQDX7HcdwHdlL+Pa8ZPiZk6+WQCmOG5bBw
	 03h6TVBe+osdDJUcdKUUdd1fZcl/El4LX0lfYV6syrBScTgAontUsEwy3eHDtxKmSQ
	 FUuWAd6+iR8Ww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B515DCD98C7
	for <ddprobe@lists.linux.dev>; Sun, 14 Jun 2026 04:06:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178140999370.11673.5884417872895950198.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7429c2f9bcdc6cc74233aaba5b3f437c49247b47217226bbb5ec2e1b5b2471a1
Date: Sun, 14 Jun 2026 04:06:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781409993
