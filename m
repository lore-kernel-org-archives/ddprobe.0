Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3908336B90C
	for <ddprobe@lists.linux.dev>; Mon, 12 Oct 2026 22:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791845434; cv=none; b=JdzzIKFBg0Qa/v2RE2d64pXD7+PFEzovi0NnuyZe4uLzb6/tulPdvipfjAVrLQ8/7b1ZOr4P8owntbs3RnQjnV7N5rbiL5WfJAJgVyJSXfngk8lQQAXf2r9XBtWovNy+K0ezE5qVl4c941+wnlci7RxfdGIkAwJHyMHV3zrr8Wk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791845434; c=relaxed/simple;
	bh=AKy5f+XdlSFVS0x8/hbVyNsM15pFPeBSNhMnIQwbrPI=;
	h=To:Subject:From:Message-Id:Date; b=Sd1CoOpu2Y+3S/blUmO5y7yqDrVMOI44XnN1+HLr8lJjo6u7lVrICMkRDQtOjgz5CzUxX1Yct8k+xw1FIdgqK5LZMDt/LQ4q0xm4M/tx/RpqEdz/dz8QATabnjzgH0ffqUBuXm4Ar7cn61bm7+7ogLg/YympIR3ei05swMjw2z4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ISwe+W8t; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ISwe+W8t"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D172EC2BCC7
	for <ddprobe@lists.linux.dev>; Mon, 12 Oct 2026 22:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791845433;
	bh=AKy5f+XdlSFVS0x8/hbVyNsM15pFPeBSNhMnIQwbrPI=;
	h=To:Subject:From:Date:From;
	b=ISwe+W8tm3myHU1q7OjeT6el72J8jLvee0DJ04MYfp9RiBAGXF0vl9R/5JxSkGiXM
	 Y7YPKo49tdMARqTUgFqDNWdKTK+BtUhpAlO4gaM9b1urdC0grMP6BGOCHilTHovXl6
	 bk8rswa2EJnaCrFYLocBPXrBApW2aS5u9jTouYpcn1y0PRXz2FMmY4BA/zo52uATOJ
	 42Y7VNfPKI+nmYSw4Cx1SwGjQcdWhDHbk+nnehHpcvA0nIBrbEfF/cUm0pyYRDLY37
	 vX/hdKnv4xYMM6czelarJ4l20lgAV5vNfk6KJvSeV/Mq7tnD94XRdlfNW+DNrC241b
	 C0Wrq+whQocWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE309CA9EC5
	for <ddprobe@lists.linux.dev>; Mon, 12 Oct 2026 22:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179184543369.19626.15081034009523895998.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bf3d39d64beac45efada68ebb5f0e0b8ae62be6067c65957682e9c25ab608ee2
Date: Mon, 12 Oct 2026 22:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791845433
