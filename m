Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E132349B19
	for <ddprobe@lists.linux.dev>; Sat, 26 Sep 2026 07:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790407834; cv=none; b=Bld3NxZsewF1JevGU0mSSyYqpieDxBts1Ylw2Y8SjxTvKSO8HuLEohmGrfhW/UFcI5nOfjSBayfUjpTNKhyneduP+lr3Nq6npCVgX1F/yp6qCyNdKmBpylz6mWKNXe06o6BMEcDxdt13u6RhDeyngbRhDmt9jHBmgrp3pIPEprM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790407834; c=relaxed/simple;
	bh=ItyWZH1Jr5JvMECQj4GKrp4ip2LpfZkdCciHhqFQzdo=;
	h=To:Subject:From:Message-Id:Date; b=VLdQ+ub8TFmsz4yIjq8xpB1oFCoNKqZW4n3ArVy3gOjBRlGonv1vR3qwpu2V0vDwZTNZ943aNCPnhA125MNl7I9+jZoG/ZV8xI7dJqZBGu3AG0qJe1t2IfLhbpdpQEVmijc8xLaO4qFEvQNvqXWrVN2Zm/Lgum8Bk68mtnCyPIo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C0Zngu1b; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C0Zngu1b"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2830C2BCF4
	for <ddprobe@lists.linux.dev>; Sat, 26 Sep 2026 07:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790407833;
	bh=ItyWZH1Jr5JvMECQj4GKrp4ip2LpfZkdCciHhqFQzdo=;
	h=To:Subject:From:Date:From;
	b=C0Zngu1b7bqzS2aaTL/RSxUgt9FWtNUPJ8rpeupSGyLYflv32bj2Oix2OP4mXPmLB
	 9GUMnpQIDd/4Fv9PupUCvxjO/PHIrHh02frDxcL6YvWYh1t/JGr7z7CqAHW15TUAPA
	 WNP5aJW3tMaDyPDtMN1unzIfvQV2Xp10YedAxja3j8TO3D/OPLflwzCPQM8yyzzQxr
	 /QvBAXdqOEAdQtthI70mWnrZnTLOqxnlhg/F8AKyOhMmi6f8wrEgydbw/qS8q+anQ+
	 ufneZOs37BUNjoOoe6jO5JglWuXFVVa2AeWs7PIrxAxuflQprtEGHC1APrn6BiW6uf
	 YAYlenSkmW3xQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0472C98318
	for <ddprobe@lists.linux.dev>; Sat, 26 Sep 2026 07:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179040783368.7035.7056314598601894555.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fd02834d631ddc89380d6b05848f473ca080deb240abea2378bd4ecbaa3c2028
Date: Sat, 26 Sep 2026 07:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790407833
