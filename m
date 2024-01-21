Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EE94C374FA
	for <ddprobe@lists.linux.dev>; Sun, 21 Jan 2024 21:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705872497; cv=none; b=Y8aoe9CcLeVWhIUjCMspoNGImUDlOn86ctq4yyN2qJbTXmwSlvPVPGwPJs6KzxJgpn4pZcO0XBAKu8lpxFInnwG93YT2ZfRRpQWS53dQLknQ1LER5Or8YvXHowhRg0m4m4kjfaTMUntJzwb8XQAQ7i+wL7plOzawD/10NkACQjY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705872497; c=relaxed/simple;
	bh=7xmHEocJBnHMulJZYFl+xalOOlc6npWT0Uqouc0K2qQ=;
	h=To:Subject:From:Message-Id:Date; b=NeD5aEd9f3vd3F/aggPVCGbRjN5/7N4AYMXFY3RUKeZ1+IZQbgyLdJBKugUsVVMhfUslCCDvhAdorJuH2TpzoFJS3BnPDFWC3Pk+BGbiPhdYLB2bI2CMppbFbsyhoOPUiXp6FLAWhvz/mp5xMMduFDxhGWo+h3FEroeYuvDiwGg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bamC2oTU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bamC2oTU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 74E96C433F1
	for <ddprobe@lists.linux.dev>; Sun, 21 Jan 2024 21:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705872496;
	bh=7xmHEocJBnHMulJZYFl+xalOOlc6npWT0Uqouc0K2qQ=;
	h=To:Subject:From:Date:From;
	b=bamC2oTUzbKQaSG3Kcs0QIqd55lsDNfyWlnLIfqttpO1tbCqdNts8Afis2N9iwTfG
	 3br6GXE+//8TMf1Qj4EUx5ADDVLZPqSgPxSUA0+OiLjGQKG1yc8kf0Xqo85lOjpOyh
	 NX5JFkyoDmk4JKsvJVyHvUXSF0Ta6VmDHsPegBQ6VXvHDsMef/8kZNJklyzLBAxesX
	 q+geH0Fdywo4BLtA8I+q7vthnJpmRUVIzMzTcvJcL1teFFOzosrgTWIHgJdpNw2O7D
	 5ppSAJEeZ7Jn/Fx3mdRPm1ZaKAcbGJuUjVdphmLehjjrOolQ/IkRsDlnlBxpw2nCDT
	 k1g5kv3qewN/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5A930C47422
	for <ddprobe@lists.linux.dev>; Sun, 21 Jan 2024 21:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170587249636.21281.12892503694315213875.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f04da2f41e08f323696b43db6881145702433701db7df034f2fc348b6981153d
Date: Sun, 21 Jan 2024 21:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705872496
