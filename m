Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6FE5532B985
	for <ddprobe@lists.linux.dev>; Tue,  3 Mar 2026 08:54:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772528094; cv=none; b=k2udcTk/LPxpvLt/ZxbeDXXR5E51Ce2gGSkB3Co2otjq8AE11AKJmo2H2RZiyPUmKPfEXNt0NO+iXx/eZ/faMyQZyO4vH52FYzPwLd+YjTSzRHVVs36nbDnEU0D44iqbMlqHbL+P5Vd3tkt+rIkBmyBIC3KeVohSzkY1PvmJgGg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772528094; c=relaxed/simple;
	bh=d04NXbVD5QWPCAq5/WnmZR2urcq7EKbNPC1RX8x8zBw=;
	h=To:Subject:From:Message-Id:Date; b=PnGUOC8AXf/Os5xg/BC/l5gUzc/KaYl9XLi3hVQZaX6CwfHrJbInrwurflYIkTkS/MANnnQdBGLnZGTVypaaWqlMM547OIGViq9JbAwso3vdTAzyf0H6064VPn1MQ3wU2NBPB84yFmWA7kSy/ZQ7NcTMmnd/VkYMPnvDAVcFUqg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uhqNZ0Sb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uhqNZ0Sb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0A270C2BC87
	for <ddprobe@lists.linux.dev>; Tue,  3 Mar 2026 08:54:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772528094;
	bh=d04NXbVD5QWPCAq5/WnmZR2urcq7EKbNPC1RX8x8zBw=;
	h=To:Subject:From:Date:From;
	b=uhqNZ0SbKszOIea5qObJrn1CY9EE2qMqNPHaxc//cK/9/BFu26CU1BIr7y6HrxERk
	 275gXr8wCzGJr1PSvV8EHOGsYOcBg4Fh/a/IZN1CvQd28qqKF9ZnLZ+IpfhjxP4pfU
	 zFNcLprp7Dw0PDkj4BziKZPh/BUFKplUUkZcFYa+A52Eayvdxy5FXcW+DVcAOcV2bw
	 khoqyQPRCNCfhM7nmkgJJh6FdeqJj9+n3lqLyhH1MEOhshtLqaZwQi5CK3W9S2w9Wd
	 5lX8eP7I9E688umeUVYJh6AtMfMhmCvaR2DLaeRAUYkg4++JfLsLeCM9fnyjbTLCNT
	 Bjirmt0av9eDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E6FC5E67A98
	for <ddprobe@lists.linux.dev>; Tue,  3 Mar 2026 08:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177252809392.6309.12374132256017319638.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 95a843850512b9e2f0bea97ecee4440d9e580d8d0a27d56b2271f1f20e5a8755
Date: Tue, 03 Mar 2026 08:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772528093
