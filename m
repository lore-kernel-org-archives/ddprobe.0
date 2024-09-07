Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C39FEED8
	for <ddprobe@lists.linux.dev>; Sat,  7 Sep 2024 19:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725737154; cv=none; b=pZAuN6+niYfCptiiokl2bQSQOGgWTkZK9Md6eWRCM2FgK0QLdcVdINjCWQxGBp6laIJN9fbAbr2mZRwnmLz6Yk/YbNr7WJxoUXjZ6CQC/ZOcY8tDuGCzgyIQknX8dNIOZT1CCWy/Zs4r1RdQ/MXyv4vcGJiod1f6+ehrJ2gd7ck=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725737154; c=relaxed/simple;
	bh=8pwDH2EmkinvXr6rATMGQJzmr0qQlinbtIEVW0KYX+I=;
	h=To:Subject:From:Message-Id:Date; b=kcvWcOKnjnq/Dji+bcvxym61hK4ALNNpNfdTkB1astf6rCIRZ8EigBvJNnZknpAGBfTIkVYAwcXIJpFDW371rgo8BYoqaXGKZ+7kbP2OHqEp/VR4X4qSKnzqcjClukWSvsOInoReFSXSdbfv2ZS5ySARg8L7Pdv/QT6XDxRS1So=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=is3fkKBw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="is3fkKBw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABE05C4CEC2
	for <ddprobe@lists.linux.dev>; Sat,  7 Sep 2024 19:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725737153;
	bh=8pwDH2EmkinvXr6rATMGQJzmr0qQlinbtIEVW0KYX+I=;
	h=To:Subject:From:Date:From;
	b=is3fkKBw58EBLkD17t/CJb6lWQmtgjBCzWwmkiok3xgIv3kzVe3lVjAes142SboEw
	 IIYuhSoAb9SPE1DBNlxnlxYmoGzNvsAqINQsbX+CB1mUWuedpkb/1ViSUybDn9ez2g
	 ayUj+72y6+9F5CtdPDVdHjd5XdWLcl03dLFoMoiTBeTn1s28qNftoC54t1FyqYq0rK
	 mBF6pMQfOZhrZQcWDM3FxOnBArEDxtmRxLH9Q1m0Ae/efP4/To/X7cIeVUS33pfjfZ
	 6EadQ7G1iEyVm+oGtGjOzSsMzptYlepR/J61BMdTMzCnXkUfDqsB9m4kkkd52KedIb
	 JOtIbX1OMarDw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 950ABEB64CF
	for <ddprobe@lists.linux.dev>; Sat,  7 Sep 2024 19:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172573715358.14284.6655394738593724745.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fd772629b636864d75e386c37efba88b6f347029362f6c3a6b0a1db183e49bba
Date: Sat, 07 Sep 2024 19:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725737153
