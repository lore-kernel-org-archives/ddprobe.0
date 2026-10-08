Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4250E23393F
	for <ddprobe@lists.linux.dev>; Thu,  8 Oct 2026 01:30:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791423034; cv=none; b=A1/WWCCbtZtiMirhvWlIkPgXe22xGmndvdY7UBsItIh/GQ35S5g99FHQqtNkAr3Bv8bHJdKhZU56gvXBr9T1tT7wAOTyVzzb1FJ8T/Z4d8WPPtf/uCar41/fr58G9kVhs9j0ft2P4iDLyBtONb8c/W1uZdp4gbXZXN8qgBARF3g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791423034; c=relaxed/simple;
	bh=n0UjhAxEb0r4YEY6x54V0bCjCBACTkW20UAqYlBXu40=;
	h=To:Subject:From:Message-Id:Date; b=FBKiViJXHc2bGpyMXRnvFX1V3lsEkeAsHn82xxCQwTvBV57tyksDINdT/xTjPeNI48xiVxkkm40nqWj1ivC79enXwlZVaqxMqDrnkktpJibyxa1oMYdUkl6C2BVL4FSv1VHEmfgLwS7fjW7So9HwRAVlkdDlCxuPWL/qClp0Q64=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ctk+Lgv2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ctk+Lgv2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC3A4C2BCB9
	for <ddprobe@lists.linux.dev>; Thu,  8 Oct 2026 01:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791423033;
	bh=n0UjhAxEb0r4YEY6x54V0bCjCBACTkW20UAqYlBXu40=;
	h=To:Subject:From:Date:From;
	b=Ctk+Lgv2QrTw7fsDHF4sowecCGxlPDfVPIO2mfFfX5h034Oed8V19i9ru7ShFw59G
	 iOQ5RxKU+ohWonD4kAH1DJwyOLnL3XfrBEeLhQJzxPAqx8KPgtsdHIt4fKtLWCx3NL
	 e1wEhTuXSAqUDvfi3piAqCWX354pwblw+Qskwecey3UBrrIdXvNexo0QJ8lijjlgbQ
	 iX5Y4mOSNmUZwBUElcsHKKtb++Mqor2Iz4eFoobOc1HcEL0g2MFYLgvAhkoG8ag6O9
	 P2Ex3Cm3xfQplB5GnjKuXzGz+OWgCp3MEAzh6oZ5fECnIfg2w5+ibfkfSSbo5dnyU7
	 ja+jqVUJ8O3PQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAC7DCA6007
	for <ddprobe@lists.linux.dev>; Thu,  8 Oct 2026 01:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179142303369.8369.10072905892958016951.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 43bbaadc204619285f00853199dd000a5f99fce1e2c8f79c307475124798dd47
Date: Thu, 08 Oct 2026 01:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791423033
