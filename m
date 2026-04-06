Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B30230F93D
	for <ddprobe@lists.linux.dev>; Mon,  6 Apr 2026 20:45:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775508334; cv=none; b=B+gn7mFyEJXxfEM810qNiRrZR1okpgYEsjppmIyPoxaci5s6jwdyExnwbTW9qzv6VmonrNRsjno5ILN1bqd/2IsmLk89fZbtl2z8FbSB5KMyY1H6NC5L0IX3tLNeSz1F0p2aRe1VDA07jM9Gu78fG+Ll0z6Kbp7BourmdcdgOh0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775508334; c=relaxed/simple;
	bh=d/moTpfnuG4koRmvb1W0FAQcLjO1Zx45yTNfAeg+0+M=;
	h=To:Subject:From:Message-Id:Date; b=l17Z3+4FapOFI/VJykEmsnFooACPksyxPVIMZX11mkkbdqgSKYBZEyjkvQtWQR1hT6Y01+j98qntQQ006g+0BRoNGdo+fKfjuU30fBSyT/07KX9GP6U8zbqbTy/6oInLgXbS8IVUBFoKbBy2Yy7O1CvC0NiR8LcxpX7b5dBp5bE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LKDyPLOp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LKDyPLOp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8B63C4CEF7
	for <ddprobe@lists.linux.dev>; Mon,  6 Apr 2026 20:45:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775508333;
	bh=d/moTpfnuG4koRmvb1W0FAQcLjO1Zx45yTNfAeg+0+M=;
	h=To:Subject:From:Date:From;
	b=LKDyPLOp7LyMQLbyG5V7TBE1E43t9nK3Zcs1FqzWSKwm4B2O2SczRg3QpTCPFqjj0
	 lxQR14+OyK/E0ex79e3pYAPZh2VC5VX/wj/iYwlblb8gUiC0aOgfEzIjTeHEa4h08V
	 bh39Uwgpv087GdE9ckPEcB9nh4eRpsEZ6t3jfrbgk0qoV+ZQLJg4kkVuDAfZhusl2w
	 eTQPSZRJWy+aEWNcu3BT3vYQGxdfEd535n+gjlRGWXrkSfjmc7p5Es98QuI6/qm6MD
	 5zh6ECvi8PXrPXrqYutIWEYoCYDYoowQlo9evWvqXrDEp6bGbGcE6dUvsnulCKuHc6
	 mq1sBpUgIUcPw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6D7FFB5164
	for <ddprobe@lists.linux.dev>; Mon,  6 Apr 2026 20:45:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177550833371.29511.15576756838270085987.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dc8de87593d63d8dc73333fbd081c3151943e9dd63d892e77cec114a258f59e5
Date: Mon, 06 Apr 2026 20:45:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775508333
