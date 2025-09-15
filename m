Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16CE5285CB3
	for <ddprobe@lists.linux.dev>; Mon, 15 Sep 2025 18:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757959794; cv=none; b=NLqisZWfnZl1z+qfQIpAeV7/TpXwnivMkcX97tTSR4R3Lhpjbzrms8E6s5d444Me4dD3PL8xMUzr024TotHN3+60/YjjGNiZgl2apjOOVvyhDMEFRZx2SaqB7QKWG92D+iPLkDkCJhmzn9dxjHAWHHE0B+Qs7D0fouz7cD2Jvd8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757959794; c=relaxed/simple;
	bh=b6DKJ5+1y6tBIYWh/VNneXaPsDg/JenluG4f9VmRaRM=;
	h=To:Subject:From:Message-Id:Date; b=tGH4YA5zw8T9p4sWUDMESOr40p6ze7u4SviH/mi0sFrXBq2nVcTFW1bYdbg6Cp97h6g4Pb67lHI10UOGKAy10l0ilYt1hH0U4ESn7iu0phAnYrMXkZrI0ot/7urTSF6yjVkwnosBDB8XATecQG9SiUfc+/toTlj6yqno+yo8tsA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PKqMHnI1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PKqMHnI1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A981EC4CEFA
	for <ddprobe@lists.linux.dev>; Mon, 15 Sep 2025 18:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757959793;
	bh=b6DKJ5+1y6tBIYWh/VNneXaPsDg/JenluG4f9VmRaRM=;
	h=To:Subject:From:Date:From;
	b=PKqMHnI1zVs9A7lvmVTkvQ7ONB2/fPVDIN6V4INeyKAC9KKJtBrNDk1vwAsuJtVCe
	 EENEyIqAbfYGwqinAcZ1mkWV+gWCD8lfyj2qddEbfACHjn1ggOieyM8nVykx/nG0Sw
	 ocfQ7+zCHdlqMvlmIB8TIJG3Yd4P5ZoKuiWu1K+CgaE7m6PG3PC/Upw7T0w6PfPmI6
	 +sVooY0OyHwhzPrLkgndutAnLbJhPmCkAqW8X53r7z/tlKoT/ZiwExmZPibQ8fgNWr
	 uHDC7GpB04DHxBWdI3QM2rP5F3MVRm0LaoWu80BhMubI6EiU6WWgMGWbJyHSSms+HT
	 TVJ6dgaPINV5g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A6D2CAC597
	for <ddprobe@lists.linux.dev>; Mon, 15 Sep 2025 18:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175795979362.5213.18088362041834834205.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a6162d56a600af675c36d964c311dc9ab0502ad1089425af84867879c29bcdb9
Date: Mon, 15 Sep 2025 18:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757959793
