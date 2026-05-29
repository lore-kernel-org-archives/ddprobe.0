Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F3E23A7593
	for <ddprobe@lists.linux.dev>; Fri, 29 May 2026 06:52:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780037554; cv=none; b=oxG5VFTya9Ja3IJ8lir5eOas7SK9TlEzXFCe7DelcaCJFx8/0g3o3QFHbeqQVF/tmPMb/FoI+hWftU2j8eyhqMCwOqr+KK+d2Zzwd29j9Lo6m1WN9dyvT4o7UBcT89k5lX+F++vaIcJrNbSXMizDoH/qMEBDf/Vuws0qJpMVMCc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780037554; c=relaxed/simple;
	bh=cVYZFyRzTBsziJjEh0cJ2ypweCV10yIN+W2ybYRvH6I=;
	h=To:Subject:From:Message-Id:Date; b=SVI/PEmBdB9rI6lygFP4Nz41Fsg99MFcAJ25i0DAtQAcgoowVE5jnAdMLCtAKmuL2kQfMQdyeE3gtvjxXKlukRIl34nL6b4nN99A0uPABWGle26JERKfflhLilbRGm5kV7kbNKE12DQJYZZ3CLIRBuO8QRX54WZIOVJm/TOfnh8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Vagk+857; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Vagk+857"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1600C2BCB3
	for <ddprobe@lists.linux.dev>; Fri, 29 May 2026 06:52:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780037553;
	bh=cVYZFyRzTBsziJjEh0cJ2ypweCV10yIN+W2ybYRvH6I=;
	h=To:Subject:From:Date:From;
	b=Vagk+857ubIQbawZtOEgLn232ZFGlRiAX9jSYPDa0hQ54XgwtYlaoMprYIPpJauCh
	 7i//mJYLcxqwHOY130nV0aLnbTpOzszc61wzhxU7zw/A7A+MS3U0vFRSCzu/5kI9rD
	 0g5jiU3y2LbewA/zvYik/A7KHvBnOf2wvuG+FPS3huXTU0IThb0L0Gn/xK9nMWtJFe
	 4fPfjwavh27VzeO8hYgDbKKdXDeQI6OHX9rCeceTKV8I5E2FhcaC+qPsdrkkrDDJLR
	 p/cro5QJqzqW4yzCw18xq6o1L5KYOHecmhdQhYeBtZ1VzR6WqjuioCnLpRo4zdvARB
	 KgeEfnWM5xwOg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA780CD5BD2
	for <ddprobe@lists.linux.dev>; Fri, 29 May 2026 06:52:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178003755368.25155.11840042901268345340.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f104c2cb09666485d2162aee3823d531e00d07aec880423f63b60698dde607f7
Date: Fri, 29 May 2026 06:52:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780037553
