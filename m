Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 476DF3C343B
	for <ddprobe@lists.linux.dev>; Thu, 21 May 2026 11:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779363634; cv=none; b=GbYHkeJk8VYvk8kO16XuPLKWsBnkmOBxe6pAeJOWmOO8dUWo6NW/Qx/QtdtXVMi7DXzEKXUZ5V98SuRjJWR88pTFZL06os/G8gGwPwF/6KO/Q8d98icuw3sxf1qzTywvyRyUNBRI2YgzrimDfUeXm9iC1W/adrZsgdZjEkEv1q4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779363634; c=relaxed/simple;
	bh=umpXQhnWr1U8unuF47OxRAnUxCA2PKH7gDAnzFpe+fk=;
	h=To:Subject:From:Message-Id:Date; b=ChG+rzspzPkm0qx5cq1fr3dXmm3cciMyJ3zbRcLa9deSfMvKiM8FfyTXmyx2Z4abNNnU74m980D7fhudRNhtLuPZcPv3P9AwytpEqhhNQ77PdPPGep5QYVstOYn0oz/85PdlIm+57k2aR5REwdqUd9Lx76utWv20fdzMYn5JHlI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PyDwBCMM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PyDwBCMM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6800C2BCB4
	for <ddprobe@lists.linux.dev>; Thu, 21 May 2026 11:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779363633;
	bh=umpXQhnWr1U8unuF47OxRAnUxCA2PKH7gDAnzFpe+fk=;
	h=To:Subject:From:Date:From;
	b=PyDwBCMMQtxtcsjnZgF43T8DrZEDzQNtNMzeFF1U6t+23eHaNo/qwkvWBVzCJwQRf
	 fxEI/xb3/EP5FGmEaB1C0qCKcwMbx6gN4iHZULZYU55eKQlfkTWpI0c/BydIFOiOUJ
	 9gfHmWuDR6q28sNkjVRyKL2DLUumV+TW2lVbgX/NsTdEHPGO8n+eZj5aBBPQWh49cy
	 3X0vJPkB8sSlIFHp0g5d59kwaIFmanf7xC5ADKGOers0nOh2TLujjUiz2Jmk9SskYe
	 ha19QbpKso7YJbRljphnGW/DqONRSi76rAlE+IMAfMxhCVDE7bsCy4y+BWREDysaIw
	 MfvSdo1g8E/vw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD516CD5BA4
	for <ddprobe@lists.linux.dev>; Thu, 21 May 2026 11:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177936363369.21622.12952997105625632325.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c80f1f9f21a48472b079953e5d70abc701cbdff20bba8c4877ee2fd34849920c
Date: Thu, 21 May 2026 11:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779363633
