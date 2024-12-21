Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C7C91F0E50
	for <ddprobe@lists.linux.dev>; Sat, 21 Dec 2024 11:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734782154; cv=none; b=NssJ9is004XElU2QLKlKoVz/qHAMRHM7izOBabBoRwTdnijaSGPTJFciCT/ugpq5/JQkGPAEareKq0376wHVp5PdGVRInnPUXBDjJ/U3jMH5KyOz+UFBDdif+o2Gl/FpNbHcaoPUJzipLGx5fk29af9e2AiyhrzBJ6u/ljw/tyY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734782154; c=relaxed/simple;
	bh=0RQBYgXsa4C9hG1pGh6tCZI07jqJ7s+rfNYsGCJGftg=;
	h=To:Subject:From:Message-Id:Date; b=Q2rik6nxzQtx0ykO5Gu0VgBvicXbpWbjiM5iWsuYl9XQX+hNG0kvgnUAg1qnc2eHO4WobSqWose1bQwOlBlvByE8gjg6CXaAGgM0DG5E5M89fhieS2aHArRwhK8yL9blTNy9MBGSudP89su/KReoKSsE/Qqx7maTGx60kt964U0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hcFsUINz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hcFsUINz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADB95C4CECE
	for <ddprobe@lists.linux.dev>; Sat, 21 Dec 2024 11:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734782153;
	bh=0RQBYgXsa4C9hG1pGh6tCZI07jqJ7s+rfNYsGCJGftg=;
	h=To:Subject:From:Date:From;
	b=hcFsUINzteqfU4CAWIwzTvTg0+wfbvnxBo4EDr/cYRyKmOCUghTJylte9gDui4TD2
	 xM3gWA61sSy4YSdukIr7ihtTmwRDtMaLZ31K/XQIrIAAzjBc6QfsH0+FfprQOVgaxy
	 q570OLHDxzUSnYUsbLNPwwzPc+Gz4q/PBV0BBEbJHr38Bf9vl5hLed3fR6kc6SIpnP
	 /6esgpBBbVJK+UjMLwNDJmigOrm7K1avQJ970l81FtwKy11noJMUOsRd8GnYec6mhs
	 zPrbUsmSY/Y9zbhq9Xa7ErAlU/0V1WJiX6vi9+4Kb83lsKKTewn75Xi28swk1Ux4+2
	 2zlrwBzY3CvwA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96F35E77184
	for <ddprobe@lists.linux.dev>; Sat, 21 Dec 2024 11:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173478215359.29209.11512956955951272977.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a6f64b051f952dafdb455358c570b20fa292b5d37ee8291d4b8d341446873deb
Date: Sat, 21 Dec 2024 11:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734782153
