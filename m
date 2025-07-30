Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F457199BC
	for <ddprobe@lists.linux.dev>; Wed, 30 Jul 2025 06:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753856394; cv=none; b=B2qdNq6zNwxAXE8ZHlGWppunK/3itgVSUgfc4qGpYX61jWRWzb8x/2JpXcolXdYW5zNxMK5MWeWDZ7Kd3Xi+OhnCDt4b4Z4OKI5bwVBvt7P4Yt3JSPCqbbUdGV6Zjd6WZQmeMznScs6cl0Ju2BzPB2C6/nNqyjRfOVsZtq+X5GI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753856394; c=relaxed/simple;
	bh=fh+dEjJzM8XLYn4CyVOGe9yNWP5hOpjJ/gY1uNfQAho=;
	h=To:Subject:From:Message-Id:Date; b=aSNzRLQkxD9aZF1uvtwDaESzlsWDAGJMfHMT2UujmGEOcLG+rs8HIkiIED35N1bBNPsoYAq5K7aq0gNWHi1oDUctyXeiOG3O+L697J0lOfA7+85eZqDoE37KHFVmJm4XfwwRpu9OwwqRX7x79QfOoq/3FhOJmUDuJIKWRWom7C8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IzR1taeZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IzR1taeZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0741C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 30 Jul 2025 06:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753856393;
	bh=fh+dEjJzM8XLYn4CyVOGe9yNWP5hOpjJ/gY1uNfQAho=;
	h=To:Subject:From:Date:From;
	b=IzR1taeZoz4aqiI94whf8rn2LNkCke7C47Dh24RZWC+xINB7c35smpMwIJlwP1EH4
	 iUb4ao0z6J8+eRxF4QHuAD5obs4PcaftU8ScbHf9MmD8/Gsm03YriJWKE+z3J1/+fr
	 TBPBGg81qZaYrh2Ha6wdLhI28XWUZbjNvUzi2ADO6mISnF4/GCA5Le0NO1Hi2gVnRs
	 B+SWQ2dz4iC+xgTDLeLksOOJyQCqn7w9X997WWAWR56+gf/tZmghwc1plCVuaGnopE
	 AYaDlwfV5PvrjEshFk4A7VZqT//fom3buGcpkAO7LbzkIrhERCmdlB1KDzJheWhsnA
	 s0QDDI1CM+PUw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ECC2C87FC9
	for <ddprobe@lists.linux.dev>; Wed, 30 Jul 2025 06:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175385639357.14576.9398220713330621310.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 42e9fbedcfd70ef359a1017e78c87bd7132e55bef5771aa70ab10080a73abacd
Date: Wed, 30 Jul 2025 06:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753856393
