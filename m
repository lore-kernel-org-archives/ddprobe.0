Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E52A5304CB
	for <ddprobe@lists.linux.dev>; Tue, 13 Oct 2026 15:30:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791905434; cv=none; b=BtXzNrqiulGx9Ju0LQOpyNwvYb9s3A2iBiPTtKdfh2eE/7BZiyEym0ZgnuSwBSNdI+ChA2wuJLXNLSl83eVwuTB0qCjSF8U7AM2EzDJ/aSNqIBbeIrV1sn7kbCVYpV+12vN4awW3Uxg6TF7IzPi/DsHQh/fBBjXlECYLbCBs8jc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791905434; c=relaxed/simple;
	bh=RqVqIB3tl7MsR5YfSSbhGw17XAg0AAc9zJjfZAui3DQ=;
	h=To:Subject:From:Message-Id:Date; b=pAtqhH9DTNa6FXijnVHsk1sCUpA+PJ22/rODV2fRArMw8MtmActuuzZ9t/486E3WEq0g5PYFYf8yHhiOcfKrLOLe5R+mEHUW/lv5j9la3g0uPT1cK///ooE8XB37lkVD7qnAWb0C+4W+PTWXk5p1ad6cLPn8WfLbOrkSvsErmt4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YrKWmFJG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YrKWmFJG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2212C2BCF4
	for <ddprobe@lists.linux.dev>; Tue, 13 Oct 2026 15:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791905433;
	bh=RqVqIB3tl7MsR5YfSSbhGw17XAg0AAc9zJjfZAui3DQ=;
	h=To:Subject:From:Date:From;
	b=YrKWmFJGdePpFL8AV/SiVZLWQ8fVTX4tFzNZTbzDTn4XRfCwhg6tSySPDU8v5zl0P
	 gxxcDIr9ix0sKyOr+KWlyWoszWHYHQsp/Y7q2od0F6Q6ucay88mb4LqqgUoT2ByccU
	 i4Dat5dEQWGbdkWbA+3D1rR6xrlCbjRv1/mVLVCiHyPW6bday2SGHnrbTfgoRw45yw
	 4vdsdopuUY+2VZCmBi9+I9aVmRpNcAy5QAiVV0eXWmS/Ue/AfYfc6fCt8bWewpz+ii
	 KjvQshogHoKdaMvO8A4GjUwp7K7SSZMUupcHiSAaDezT84CUh8Ts3HaFv/n7hzFOi0
	 AYS3ljJ7K+9FQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFF80CC6B16
	for <ddprobe@lists.linux.dev>; Tue, 13 Oct 2026 15:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179190543370.9969.13059591170203169144.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 294651683e011737ea111afb4abc777fcea29b18664d5e1ec2ee12b2c8121256
Date: Tue, 13 Oct 2026 15:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791905433
