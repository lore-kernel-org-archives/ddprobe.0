Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 67A5413398E
	for <ddprobe@lists.linux.dev>; Tue, 18 Jun 2024 10:09:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718705363; cv=none; b=ntwPPyfKjPQlHe3dlR+JtIbLGY3pgZXizUXxF1Cg5E9hsTuRtiy26rUq1iz21BpFJlDAzMFOXT/3u5/pw6VwW+3M8DohiC6qURHlgiDmIZTrRW7Fhdy8It9cUHic+yNsjKNQd2uujAORiecjUPvqSBrRiMfK1Uzb2R5aB9gcTTM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718705363; c=relaxed/simple;
	bh=Zl0tSMBgp8ixHOLXIojJpbx1fGvl3boGQGGOGJpmrQY=;
	h=To:Subject:From:Message-Id:Date; b=S3zXbSzM/APzEVJHk4CvljSUJ+eDOzn3713Q0J8kC3JkELZOrixbtMdEErSHR+fEzkTk7MqV1Xzcv4iQywhxiy0pPHI5Rn4qlNc7rGACWAMiBZXbf75unjoRgNc83lrpPNrD2Iy5kIAuFlPW4ez3zQFsj9s5w+87dBbFJI2a+Yk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o7b22i0h; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o7b22i0h"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EFE89C4AF1A
	for <ddprobe@lists.linux.dev>; Tue, 18 Jun 2024 10:09:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718705363;
	bh=Zl0tSMBgp8ixHOLXIojJpbx1fGvl3boGQGGOGJpmrQY=;
	h=To:Subject:From:Date:From;
	b=o7b22i0hCT+9YGurtIHtEGTd5CWr/TQFIGDRgFi6uee42KuDFUiRRbL/ALMXKkFOA
	 q4Y2r0t90pQh1CPmAzYHHScwjujCl0ce28Xyym3r/J6zpIeElEqofvbV1ATB8xPgpz
	 Tmb234zs7P8qiX0dKgrBfVlk4aWrBtEKPPMiNzmf/qjRInoPydB5GxtKAKm6vJGpPI
	 YF+2ZuGHPZm9/TC3O3op/N7idZm+G4l3lFDo0lR53Y72xcAbxwNhVCpqKJQkEkKhhR
	 nC7wXHyTbwCUZN2OHEhAwi793oh+n76dtTV7LJQ/eG+nKRstr6aCSKCmWxonsRVQaG
	 1vHaLDyThpEWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D51ABC27C4F
	for <ddprobe@lists.linux.dev>; Tue, 18 Jun 2024 10:09:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171870536286.12118.2003377937936588342.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 85ef4947f0c43d67780fbf1345a2e33a8ce3f257728baf65c4591775203ebdbb
Date: Tue, 18 Jun 2024 10:09:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718705362
