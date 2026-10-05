Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 224F533B6DA
	for <ddprobe@lists.linux.dev>; Mon,  5 Oct 2026 06:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791181234; cv=none; b=bXc8V47lRUM/a9GiT01rEtXPlrWJ5jsRIbEiYh/jl11rwGhXrLiu6KyIzKnVsCh945N1Gv71tU7cvN8Y7Wrx1xtLkkaqugbXgXWyQppWd9SqPunJ1kJvDreYJpXBdVoxW+/5FN9JpUmYI0mAFJ/3uE6UiXczpIthMj/EhHxzvDE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791181234; c=relaxed/simple;
	bh=irxL7sJ/TJUUGQ08LpTANTkcpOGCh+5Xx8cDV/fs4jc=;
	h=To:Subject:From:Message-Id:Date; b=hVl765bdYib3bNGmsA66ij4tX5VNQARxZ5VaALRGhRozonImHKFTMUYFOWQRyQ2X2FCgYO2v1Xj9SkheqoxTNoOSoHr8I+4heatwEvp4MbjvIMHBAEqh9aETVI2IgJUVVL1S1egE+PVVmdcCUwWt6hDM8/mjIdHW8U0Mh9Y1GmY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sA4NY5lF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sA4NY5lF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE0E8C4AF0B
	for <ddprobe@lists.linux.dev>; Mon,  5 Oct 2026 06:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791181233;
	bh=irxL7sJ/TJUUGQ08LpTANTkcpOGCh+5Xx8cDV/fs4jc=;
	h=To:Subject:From:Date:From;
	b=sA4NY5lFPCezMr5snJ3Rwij+5FN+Jn9Tm2NxdVXjmUfcRN6XBllFaEY2zTSLUuajt
	 glROrUeqJN9Z4KD+FWxaOtjpiae+OGMnwvVHxsHeOA5gbCXdCq4eI/LIV0EI2WvoDl
	 fRSxGtWGugdAXaqp+n/YVCA5ST99lrSGY+wq9ZkR5WCL1MdiwfEwzzdqz3dvLa+qnS
	 9T9JxVNaBCYM+Qvsi5DKyk05bmBV07Lne75swd103ud/7DJzvd7YPGBs21GkBhjQ5W
	 PmplUU8CZYKxET9SzT2U5fMGXd+n6tZtCshCzvjayjSDaH6kht/cIjX+sWdHrFf/Fz
	 QdIX4nAD1E9Ag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB21BCA5FE2
	for <ddprobe@lists.linux.dev>; Mon,  5 Oct 2026 06:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179118123368.16377.10117698585136006052.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4cb73a6777cbffcec9882b8c96db63aa5ca41bf3a6f7454a64c401a7ee8ca398
Date: Mon, 05 Oct 2026 06:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791181233
