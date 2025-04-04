Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4628E190462
	for <ddprobe@lists.linux.dev>; Fri,  4 Apr 2025 21:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743803995; cv=none; b=uiu3F5aIGjMK77ROtWLA1B1tdq/ONNhOk1skJQQviu6rNvpSk47IXvOt+lkpPOz3olgvYxKlAxJBGscSX00i1kFdCH/SITC4nO9IvPqVdwX3ygUv/ow+Jo+Ju40QeMOfZxyVUeg7sTEYza/Nv4Ne12HuwznGpnjqfgpNHJuyVNI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743803995; c=relaxed/simple;
	bh=NvV9jENHhEerVcgJiq053S5rwIUESo6wowXoujJgUGM=;
	h=To:Subject:From:Message-Id:Date; b=A6TQwutuvpoEmfBJro/OgO2oGTpphle1hG7Slw0EjcPmfPR6KifE1bOCn0PWarOum05uzixJ9X7z4RM2rjaUA7bmGbVILx5YHwO3exOXLOaLYWbcqGv33VmnjVxOIfbUKpbT++zZBMdNUBBBj00HhJsD37akFirexUcUPpynok8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RdEht4i5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RdEht4i5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA1CEC4CEDD
	for <ddprobe@lists.linux.dev>; Fri,  4 Apr 2025 21:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743803993;
	bh=NvV9jENHhEerVcgJiq053S5rwIUESo6wowXoujJgUGM=;
	h=To:Subject:From:Date:From;
	b=RdEht4i5dRb0cybC7LvMMNq10VHmgSjPqjSbNdL3W8hwf7jlFBBwMNN7jzszbAWCG
	 MceR6NXY0K/6CgzXByXig7AcHET34C5zyYh6zdK+vMAMUOSYbgw07STuxBbDDO58Zd
	 giH5tU2adjm2WOPvVq//Eu5gCk4dKQtGycY60ON0YA7tPOKZ920Q+85bA9hNneBdJv
	 pF5gzg5jXENYxpgqnznvmiqJhaDjq8X0nMulfewU0/vBPQHc1bKa/Bwn/7UUXwmPJf
	 rD977fsjbsxxeJDjReU5GyxAfAbCuN2pAFAep4SO4s1QmfhXqt91NX0JSnqedKxreS
	 tkJYO4zu9YPGA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2CE2C36010
	for <ddprobe@lists.linux.dev>; Fri,  4 Apr 2025 21:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174380399361.14341.15071573269478649751.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cea57ba8704197f24f77b22b467dde4aaa2e60249f8bac2fc56f38982ca7c902
Date: Fri, 04 Apr 2025 21:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743803993
