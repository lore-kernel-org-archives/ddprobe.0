Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54C5921CFFB
	for <ddprobe@lists.linux.dev>; Thu, 27 Feb 2025 07:38:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740641934; cv=none; b=iZx+KrIMUDRGLs0ezSRGtkmktkhk6n/CKV0GTrsoisham/bBfg9AJ8uJJ7wW1GvV3NYwBS3stclnIwXETGacFyrrZRvmDz43Uc+yY/Ev2KktoTmHWYAAPZqeKStMpC9oCJ51JqdoTlQqFFdTUfFRSVH5rwuMMwzOAg/v4A+Cx2g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740641934; c=relaxed/simple;
	bh=wHK5nPgI/632IjLJIS+lyw4eO0lWSMuyiupyGFx1dPs=;
	h=To:Subject:From:Message-Id:Date; b=GqNdjPrcxsu7dR3kWyUBCKwZXp8VtuxBwdLK5ZLpqOVy+Ke503k8OeAn19HdgRlMye4Ed4184kKH9dXs7N5NWe7FUdROEdw0ijH1Qenc6/D9SaqfZGpXdtOIBlTYunAfHJWUeXD/wJDro2d8ht3TVU1KzZ+Lj8kFM3t8N2T1KUQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Vxt1HnYk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Vxt1HnYk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEB9EC4CEDD
	for <ddprobe@lists.linux.dev>; Thu, 27 Feb 2025 07:38:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740641933;
	bh=wHK5nPgI/632IjLJIS+lyw4eO0lWSMuyiupyGFx1dPs=;
	h=To:Subject:From:Date:From;
	b=Vxt1HnYkfna1qgq5wAteH1zABybuldzlb00Ohrgz9AUHKyPzDc0OF1qw5aO+VML9d
	 22Wxky+plw1iTegCtacOqPFKhZI+usWSappWZqb67EJrr5Y6L3/ejMyCOWL4PUoxEd
	 JAvZFCOx8MRr2KiGzjNVkX1ZmZT0ro9SMzTORzxJ1FNRsGzorPtmv5IdZgKnAZNF5C
	 TYjjP6n2SQgI4Fqm6d4NHzIAUbjkCyFnffNS2cDhLQBW7BCVu1TRwDpfNLrGrTCsF9
	 QMQyYhJopdwsRNDHx6CTdmjFa3k8NnH5YEddaKeniGrv0X8OEgQGOVavU+XDnWO3Nc
	 MrqfGLXlvp0qw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97160C021BE
	for <ddprobe@lists.linux.dev>; Thu, 27 Feb 2025 07:38:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174064193358.5451.4577034472139983693.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d12c115c62482f1b0671daa7e8e0b1a090fc4da89d9f814ceaa0e394e70d750e
Date: Thu, 27 Feb 2025 07:38:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740641933
