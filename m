Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AAEC4F4CE6
	for <ddprobe@lists.linux.dev>; Fri, 18 Sep 2026 14:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789740634; cv=none; b=jz97jsZup7iQszC79oITz99IZABNONGfPJ6smMIQ6FAN5spFNUk4xb+HbWzQro7f1+RMlVo5jJScs+R/p8lbVWVkeLFu7ot+Rz4krnB6cyV3/IqWQyHp3g7JeAnE8TozXguD6iKT75MgUFkz2BVczNB9EHvL+S3izfCzFElbcGY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789740634; c=relaxed/simple;
	bh=RDrzR8LSPVF4NgCjcQWDgLRTcMFcJ+r+TgJi+YzVHCQ=;
	h=To:Subject:From:Message-Id:Date; b=lI7k0zKbK4kfGH1Q4r3ETMYILhpnFH8a8Lq+A6qDHqRL3vrymIHSbdyETjaB3WwdQ1le/0FFOy/clCUzRPjd029p4BRFoAsOdWDwNTY+p2qmkF0jWWBqYZS9zjtzIHxBW+6vJZl74O2MmLwo6j4nGykNpes+MFPZwsq4QX/Bx+4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ha1+B0LK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ha1+B0LK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D181DC2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 18 Sep 2026 14:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789740633;
	bh=RDrzR8LSPVF4NgCjcQWDgLRTcMFcJ+r+TgJi+YzVHCQ=;
	h=To:Subject:From:Date:From;
	b=ha1+B0LK7Op6APsaFRW5+Sm+sC416p8wcS/y7GEAEGBjftjahMdpNl31TD7XA92H+
	 6Jx1K1BMIW1f5TtOiAII00aSbNeXokz38sgBcaKrJ/T6IkkR7ymLLsBrq4ArN4ZIiH
	 t0/po+Mes8QGGS0GSIK4krYf39zuqiyXdNIHobAtvNr1tUZ5Qtu2DsRUGRlFnUGAkE
	 hI8TTUKIoAu0Yh/Bani90rUWq0Trrv33Op0fMa9yIk+jL01Qc+IlbubjdIgCGAVAU+
	 /Y91/qPHfmSAmTOq4vUGlcxwL9PiR/omIWwyoX+jdFu3++I39lgvRS+wLHLifEw3BC
	 9YV9/yOsqFAyQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADFDDC982D8
	for <ddprobe@lists.linux.dev>; Fri, 18 Sep 2026 14:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178974063370.27625.6688695428559757034.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 12338875115de1109f5b7ded4d8659ab782247fdda3bb5b6c378e6b9e2871b23
Date: Fri, 18 Sep 2026 14:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789740633
