Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20B442FF675
	for <ddprobe@lists.linux.dev>; Mon, 24 Aug 2026 02:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787537434; cv=none; b=icOVEuqfCDjGdsR/cz4uZ3h53IRULU4CkLKzi0PNXpy/XntbbUOK/4aAhBbi6jxvB99JKP0GmrwghviuouBe+NnWuduXBSoBqE3Bb+nwGk53Mx5uepbzz0OUySgKCIBP39LrwkrWPu/Ng2JbMzPz51DuBMK/f6zHeREEwrkG9sU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787537434; c=relaxed/simple;
	bh=Sm33ILaxSEMy4ucWrk20hpyxFvgFnd7UM3NOnWcY4gE=;
	h=To:Subject:From:Message-Id:Date; b=Jd2Uwa8ql2lX+EoeBSqHmsCqW61c1jVSI7qBYZLih8EMCMLiLghYEUchwxGr/vV0SkElcMg1l2LOlKhWwD5V6y1gnfCDK5uXGv8dqqCVXfK28utfjf6O5UOdqN9T2rTORet4EYPsQzaZV4YkXPwssqGcwq9jg3OjYDAGoEiC3c4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=haBbENMq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="haBbENMq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE110C2BCB8
	for <ddprobe@lists.linux.dev>; Mon, 24 Aug 2026 02:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787537433;
	bh=Sm33ILaxSEMy4ucWrk20hpyxFvgFnd7UM3NOnWcY4gE=;
	h=To:Subject:From:Date:From;
	b=haBbENMqCl0l+6LGWUD0+Hudm8rlOatvmfm0/XFY9eVBQYmEckxAfTuYsh973fDMq
	 pmAfvsfk8czd6prJCmI+O8dtJdiM+2Vu3KOe5wS4SpM5UY/pd7SBRDJHMAM7SMcYue
	 ccdBVSBjxzON6b1f0wsnAzn/ROfwk+arbFdDsO0lKMY4RGD83mBj7NNnK50wfU34w7
	 LHRiRnapSAFGBTXd5TRVUZ+iWjfzhrMkOzD4E7GLMdJGtyJ6W6kYmB5XWq5H/VHh63
	 8iZV4Y/s4kf1J63futmMZ7f230Tp1sUoBzzQ4C8rqgaJ29kfLhHPXlZJJtIPraieRy
	 o398/Ve3qrWAQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABC23C5DF9C
	for <ddprobe@lists.linux.dev>; Mon, 24 Aug 2026 02:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178753743369.11818.14308080247971926574.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 93dbf31ae43e55ad468378351ab708801e2e0a927c319f4d5ab5db576e5dd8c5
Date: Mon, 24 Aug 2026 02:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787537433
