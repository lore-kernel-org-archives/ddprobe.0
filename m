Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2749F12E1DE
	for <ddprobe@lists.linux.dev>; Tue, 14 May 2024 11:22:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715685743; cv=none; b=Qq0+KVo48ecblG1IzIH4uYIrj4XgOKdrIjNBnHjsZsvAdBl4/d5ULfE5LGXkRag3gCqBwjcq2ztqLfL6g/qqDtYjahGt61/PxHL/DYHy4PiZN2AsDBCCAc79wVPUUEF7nNvrDi8+orqwKK6zuO2Qux9R+CrHq59SaehEY9+Dnd0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715685743; c=relaxed/simple;
	bh=mX5KiI33v9Xri+bjKsqOgRvhKgAvPeG0KWpXji+nyG0=;
	h=To:Subject:From:Message-Id:Date; b=EL5v6BDv979zN2j53E9yJWhZ59hkDXZErlOmjVkaOJv6+EU/h0KAeVWC4+PmXC037lVAVm3u8T7d8cBMXTEuNE2nRhyii10GCBjlDU8seJLaPzyxgvN+Oa3lyzZSV4eDQBgDxH40JLfgmBoxMkpdQhMF/eWJcR/reTyaMVXfWmM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eMP0gp0y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eMP0gp0y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE494C2BD10
	for <ddprobe@lists.linux.dev>; Tue, 14 May 2024 11:22:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715685742;
	bh=mX5KiI33v9Xri+bjKsqOgRvhKgAvPeG0KWpXji+nyG0=;
	h=To:Subject:From:Date:From;
	b=eMP0gp0yZg9XmACdhzeLkZxGJzilfqg7bG1ASbw+9XIePFZIqWzpDEker9y99AV5d
	 Co/4OPZ9t7B6IlpM7wq2n7WWDZRGQToB5ET7OfctKZzamDLnSrcfP+SwVadW0GYcEk
	 W9r1CBYmA7ZrEBXwzVzlCaODe3O+vV7RSW9SLo9Wr6DWQ3DlcchLaYEqOFBTjSvN5d
	 E53phLsXF4Qork8W79qwpJ9dGjXZmCbCXcRHLeB4sywl60+Ud7BNa02iYBPYdnSXnJ
	 ZOxtwVmQeAM8Di3XWblmLckGxls7/dGq3edwGXoBoKHHhV7UpWbkUKFxZaXTZ/OdRS
	 dwhT4E+eW85HA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C8184C04FFE
	for <ddprobe@lists.linux.dev>; Tue, 14 May 2024 11:22:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171568574280.3744.15240957605984935017.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ff3b34a4e795b31c5e058a126ef457a1acfe47316618a23d43a8e146fd0ee538
Date: Tue, 14 May 2024 11:22:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715685742
