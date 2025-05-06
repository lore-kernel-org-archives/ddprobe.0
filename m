Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 322A121ADC5
	for <ddprobe@lists.linux.dev>; Tue,  6 May 2025 23:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746573594; cv=none; b=RODFvbn1FntIj3sVw7FFsfhDTr9krdKzSlbw9yvvOzO3MrqJ/w+Ttrm21uWlzqYzCWEuWxzpHObGANqNnZmikIL76AgD+xTkMOsiw0OMM2wHJ+/TRTY5Ay5g9PI31eFOIBkgRt2PSAs3WZYCm8ZGxuA4dKprmfWwN9PW9KTrlkc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746573594; c=relaxed/simple;
	bh=TRiNGnxifnEhRNBX2hCnbYe5c2HI+P31yHiGbHbxqiQ=;
	h=To:Subject:From:Message-Id:Date; b=Kjuu8dpxzwqBSHUfhK/vFjGMh884O5QUC9QrvSubL4YCY4/OnTPJkB6ruVspje5fRyhTU28jBgxBJvl/5sTAFup+R2flrEQKTEVUCYdQjySqqknHkld8zrjnijwebeZMQrTLK3p7opJDIfU7xlNeNUueL53yTj1vlYUBIKAd77w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kGZvgEQp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kGZvgEQp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EF32C4CEE4
	for <ddprobe@lists.linux.dev>; Tue,  6 May 2025 23:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746573593;
	bh=TRiNGnxifnEhRNBX2hCnbYe5c2HI+P31yHiGbHbxqiQ=;
	h=To:Subject:From:Date:From;
	b=kGZvgEQp9B91RI8Z9AJ4llmyqhjpbXeBBT359WtdenckkzWWjievO7uS/DZSvgZ72
	 gtVHrp62JB1jWxcQzE9W7W07WasPj1WIJN/7FUacCXdlr6+vcbEV6oimzXWQkHWsaE
	 +TAGmTEIyNSyglbwvZtUpsZGV5gmu7+8FFh4/ZNu9mp0WIeo1ab0bqYRz5x/e0faHV
	 mCJMJuQcaXGS0aISt42Qt9QZPGh9SKqrDh3Aon6INdxrQtOCtstXkM46ua9tYKpWky
	 Z/hjCoFOLjL8uhP+ZWLgr7Q6R87kVXBVSFCLPrgIjpkZxuoHZxoFWxwibeCVWcc4QX
	 t1fJ459Ja/r2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F99AC3ABBC
	for <ddprobe@lists.linux.dev>; Tue,  6 May 2025 23:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174657359358.3914.978458819781901669.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 878c9c6aa530752507972a62e16d03c13f7eb4f5e2912203e29a6e556c2af0e4
Date: Tue, 06 May 2025 23:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746573593
