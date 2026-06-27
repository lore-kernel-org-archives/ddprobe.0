Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EA5481ACD
	for <ddprobe@lists.linux.dev>; Sat, 27 Jun 2026 02:58:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782529114; cv=none; b=qB7q4FxUFumAn0/SY7/e3eQXI0DS1/2aQcdv5uW6qKphfOluIc7y41oU10gqGDUkaOA/QeKPli1/D6oeruu+fAKgyaM1yDg5eNo1dGCYeaW3J4P/9b4d7opffjGUIAPYs9CF4ksXUJQySsmxH9+7k7FVRcNDdBLfqtFHvDvTGFA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782529114; c=relaxed/simple;
	bh=LOiH4T7BXrhfO/TJqWYjQb3dVPVDEGN6Py6g14VGcX4=;
	h=To:Subject:From:Message-Id:Date; b=ctuD4Bik7kYIppSkS1alzzwJEtfjOm+qQDiLGfhnxKLqvEgZrokJ6lyNTFYtZLI5Zj+RUqltf0nwm1xBbFi0cTJXQR9H3rkl6sTPj/Abxl26OHrA85rGv7VwQ2TsRbkCTXsLIbtosgQfusGzpPh3ePKNrac+qoMuyxzHD+GoJYs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uAmBdmi6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uAmBdmi6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C35E5C19425
	for <ddprobe@lists.linux.dev>; Sat, 27 Jun 2026 02:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782529113;
	bh=LOiH4T7BXrhfO/TJqWYjQb3dVPVDEGN6Py6g14VGcX4=;
	h=To:Subject:From:Date:From;
	b=uAmBdmi6C9vxpqWBiEjip6GmJ+JccPgm2IEdpVKA4ie1bjSLe3yCK6jjb3xD1LDzE
	 vUpERif7g1Z2y8mCZt2PRwE/jjm4DMG3QSx1Riy3fwxOy4J4KOsFuEzIV5CwQ06Hjl
	 m5pxruubXEjjsrp06mgmzZTnfUEDhnS/u360RVggOoxaLhnes82GAciYEM6yVPqIvR
	 RgDrIqze70qyk66NrFjGyH1beUZkLym2ADO/N4UYdImEAOBuavh1/3fWWQaorZo0C8
	 ZyLy94SvlMQa1FIJzrTlfV333zcCv6XuQqO+Hgd/qaXvxSBGhejYBEhyCSvyLtpkAI
	 dneewQdHdzFmg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA098C43458
	for <ddprobe@lists.linux.dev>; Sat, 27 Jun 2026 02:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178252911368.18380.3721446041515137140.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6d4e0926b0f8d25d0b2beee532ff64cdef78e00a3b856065ed2f316eab4b45e5
Date: Sat, 27 Jun 2026 02:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782529113
