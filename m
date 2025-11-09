Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28EE218E1F
	for <ddprobe@lists.linux.dev>; Sun,  9 Nov 2025 08:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762676994; cv=none; b=EtWu35Y0vr8jtn92nkw70BdghwS7P+2dpCdk4D03zIGrFySAFt/Qy0j5hfKRDRRI7q4/BwOzhYrDGsIgnkTeJcyqKIoH+YjRv45JnAeKH0FjfRge9Y5rjN6Or5g2dVMCi49reNi6S61YNnw5VK0ZtzRTGwzTp8C6Xpp8ulGBgmo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762676994; c=relaxed/simple;
	bh=8ns5YLaozfbgIjSWt9XG/G/8ayCVoRNRzrVzKNAJ8mY=;
	h=To:Subject:From:Message-Id:Date; b=D0muyY+Sx5WMKvNr8Z4ng+qmYHD4cH2ERuxHJCKMano5VQuW9fwjyjNHtIh+axKunEdJjEpI8A/5Ossw8Fl8KRAhSRjGLDnTQWLiMP90H3PwGnMCuBDA/Uj1H3WRKHZBSvaM3pw4XDYbIBGw+ID4w5BNhXU1cDjFKlrCDBMA9mM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qSxUS7pE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qSxUS7pE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EDB6C4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  9 Nov 2025 08:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762676993;
	bh=8ns5YLaozfbgIjSWt9XG/G/8ayCVoRNRzrVzKNAJ8mY=;
	h=To:Subject:From:Date:From;
	b=qSxUS7pEUUt92Oa6T/VT+8adbHAxo5mSW0jMXScJBkrvLdNGNK1IhzRg1d2LkKWor
	 tQjXkIFZX0lQ+QXSM35u5kvw1ENWozwU/4wU7uC00X8m1jgh7YaRxBtAR5MdmgV/sZ
	 9BFXsvWpufvmdj7YV+7EbcDy3eUMzulZf98/GA5xR2+Yaz+TvoFBsf/a7Q0H+P27ZQ
	 2lj3Jqw2DD9bdD6IB09M87YGDqqu7oJbe2HccW78w2mkXIkvuWL3jZtN8xxKZGbOmK
	 kd/XSxAZN9RKYu4w0mpX/T0KgEXXyuoDThKKy42Eztid4TTkeNrITFsxlqxonpn70y
	 aDagv5AYlbJjA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9434DCCFA13
	for <ddprobe@lists.linux.dev>; Sun,  9 Nov 2025 08:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176267699357.6786.9726855835730686151.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b74e734c09d8fe6fbcb9e57a65d03823c5149d5f71870ac1e003ee96cb20840e
Date: Sun, 09 Nov 2025 08:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762676993
