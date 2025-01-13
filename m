Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4332B24B28
	for <ddprobe@lists.linux.dev>; Mon, 13 Jan 2025 13:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736774754; cv=none; b=UtU6jPjPDsysJ+TKTPQ3LXsrgnKfRyk4iIFApUylQN0ekD6F8U5k3tXoupECp9p4kDypElzRPoo0SfzuFQMe8VtbERo8ArSVxwxkuPCUTQQDoC31NNf/75R0gaP1LR5Fw6HhRS2ptJgveCL/rxgiuGSGm9nVWSjSregGmNvu0Cw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736774754; c=relaxed/simple;
	bh=Ex0Ze9w57DqddZ75XMOneAk/4NnKuwmtlo8hDnn9TqE=;
	h=To:Subject:From:Message-Id:Date; b=Q2K5+nB/imi9ZxKc+wmRQSYMbOZXyjaPP2uqouQQgbsVX2vb6NX975K7BAWoZOJR4l1AEapxaoKAJ+mmPSQEfA1pOC5KzutvGWuFBS4DcSxCld2mMSXODe6XPN05tc21U3sxW9YAkN2do/3o7vGqacIg7lpxuWuT4DiAMdKd/dY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=figf7yrl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="figf7yrl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA6C3C4CEDD
	for <ddprobe@lists.linux.dev>; Mon, 13 Jan 2025 13:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736774753;
	bh=Ex0Ze9w57DqddZ75XMOneAk/4NnKuwmtlo8hDnn9TqE=;
	h=To:Subject:From:Date:From;
	b=figf7yrlrnlgOBT3pfCwXEjuvtPOp+8jphv52s9imlZ+4LnPZWJWcrIipggK/pVGH
	 KDDyW89IWBzIG3glFTnXsB2CDh0HzXYBKaxUgnaPOYQsSU1mCOfasMv5AZKp6N1MMx
	 2RrBO+r40XmQ1BW5401Z+ABlG5Ybr5JMoZKZfgEpxrtXSogINNCbluCuiKdC3HvFFR
	 OCtgB+kzYcbF4EUVOs7uHo9IsJDLUg1yEoY3cbqV9HeTF3ZozHCs5A+Lg4G0mlmkpX
	 Ixk91tFefwHHrmlf24i0HNSe8COv2DKgalwVHPdtmMYv5LBRkLlZouHdR8f7BtTV3X
	 NowVMrQFiiE9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 961C1E7719F
	for <ddprobe@lists.linux.dev>; Mon, 13 Jan 2025 13:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173677475360.29465.11878171234823968523.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6660e62baaea251708cc13fde59b38edf82e1b6302bd1697abc5bc7fcd9bdde0
Date: Mon, 13 Jan 2025 13:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736774753
