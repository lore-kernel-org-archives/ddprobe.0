Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D5597260F
	for <ddprobe@lists.linux.dev>; Mon, 26 May 2025 02:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748226595; cv=none; b=SovvKA5KernC9BJjs6kamzQ3khkWd7zUH9ySOt7ytf9X/LkQeYne/GczL9MfT1hYyaHc+4wCL5dPWZgYjTmdzzDy907Bv3mCIMxJichBDjSu0oPZIKFUfgEjaC292HEQ/bzM0G17vSyqNEwbXKIeGJsjy2ctEVD8Hogw1/QcpSM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748226595; c=relaxed/simple;
	bh=oyXYQ8ehAgspMETiyEd7oXlY0iQuCjy0kGuVAlSyHHs=;
	h=To:Subject:From:Message-Id:Date; b=Y9GY+/cHQpVwXG2DqeVwe3CuYbatHqfA85A24QwU+6w6cQsW/nhoQF2fxIZuTx6DZ04rq5OlKa7R3c6f+FxfaJUDLmbKusq35b6+5wIAIX1bU50RPt6GxIlz602foymiaoPgt9hn2sVKv41aLzOu2VDyxGhDRi1BGS/+JNHmXH8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PIiFwnj9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PIiFwnj9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A653AC4CEEA
	for <ddprobe@lists.linux.dev>; Mon, 26 May 2025 02:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748226593;
	bh=oyXYQ8ehAgspMETiyEd7oXlY0iQuCjy0kGuVAlSyHHs=;
	h=To:Subject:From:Date:From;
	b=PIiFwnj9qSLhyQ37HxY3OginXrkLOJRMNEnqFVQU+iMT/e9RKNPd/Eeixr6bZOCzc
	 HusgffaKuCMDvmFNFJPUEtt/wyQXI9ly7r5MmRpKlKmqoylR6ZENAMLYH0MCuF6uXv
	 fUf177YzadkP2GE/9y2kOUfi47F7bZCyDOlYpfynsA9GpDmrTIpyLCBbX1d+mZiWnJ
	 7rDjkZyUBRiYxfRk8KCyN/whiosY9n0yp8GLAKyJaMqKVDOo6hkGLFY3WjywTAjDSl
	 NzoH3NfPpmqiYR9iosziYKPk0yxyxzPXDPsGR8nl4eItGtTotvN6575R7VZKikEJ9E
	 HfOQLS3th2FHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92F4BC5AE59
	for <ddprobe@lists.linux.dev>; Mon, 26 May 2025 02:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174822659358.8363.1475739829478000036.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4b96452992f8251e7c451a3df705321e8e718f2b55a9f731eba164eb0a6cab95
Date: Mon, 26 May 2025 02:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748226593
