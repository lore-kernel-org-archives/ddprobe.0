Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 926B137EFF8
	for <ddprobe@lists.linux.dev>; Wed, 26 Aug 2026 18:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787767834; cv=none; b=unD/SxkNoufF7TFN0arX/ADWn+rfWqb/0O7wyQMTOnXJ3rXSNCkIR2eJhfxXMZRAnx2Qhc23HlmnBnBXwUDXrZI1lYq9mjaFFWl9HCzvsXSd8jAJK5dTAP/vWGkBOJktI0wiYo4t7HKo5A4nAr0D0zNnbHVB2124q6mswWfnrnw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787767834; c=relaxed/simple;
	bh=1h/tS8ZAhloGHLcMY9XamBNV/yHsFST2JdscnQcTW94=;
	h=To:Subject:From:Message-Id:Date; b=SsSOJ48v19Fir776gXafpY/Gb7DG0flqMSzDoBgSjaYycOh5KC8Y/XuQ/H4WlzaWltGxviclMjenRK/zynyWEOgtHjmSn2QpSNoAn7stqvn1hF4JVEcqXadqhNx7MSf2/0s/g6c7jJXDVbDR8BNMlukjJjGzfQ/e4RqFNCSiT+k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rrJ+/Abs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rrJ+/Abs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3D18C2BCB9
	for <ddprobe@lists.linux.dev>; Wed, 26 Aug 2026 18:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787767833;
	bh=1h/tS8ZAhloGHLcMY9XamBNV/yHsFST2JdscnQcTW94=;
	h=To:Subject:From:Date:From;
	b=rrJ+/Absnut1Q+99nagx/fT+e/XB2lEEhvdH0PJPWVy7L2QaR7oenHESYrbsZyiBB
	 V7mCrOJLVi8t2JjH9ZkIMm9NamKyu9zuNZLE9Y63SUB4v135Y3s+QB/bdCgukLTmIM
	 tfp3bT1srj09NDtoaKNzs96RhEDJYarwyb5fbZ+r2dXJNQHxWEL0V5tSWccKbn+xzh
	 b08/d6lDddUWoQgKXdIE5MGo9yj8cl7dpLtEEFe7JuIkmzg+s/mL5fL7McGse10t/Y
	 suTND0xpiuqpH1AZO5E/8YskW1iI7MN8y6TWFb2Q2kUdb4UXrZ+WPmZ4Jb+k9VeELR
	 0DnNAMOiaYK1w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFDF7C61DBD
	for <ddprobe@lists.linux.dev>; Wed, 26 Aug 2026 18:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178776783370.17336.11206905059365176389.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: af617cb0877410809358234b877363fbe7b54f018aaf20c392920f527b3eefbb
Date: Wed, 26 Aug 2026 18:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787767833
