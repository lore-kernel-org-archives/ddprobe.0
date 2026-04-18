Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27B974A23
	for <ddprobe@lists.linux.dev>; Sat, 18 Apr 2026 10:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776506854; cv=none; b=InOR5OdsHRd0HEvI/nubLQOdzEQYSBENOQ3RYguBHOw5J3iTVxuqDULfJNSnisHJ/lIcsTCv6+OqJvGYe+AtOEa7rGDCXOzFiFOqeFQ2DeYzAfkC2TnRizekzTSUYof9MO2bhE268AiRPZGbYyS0fy/cNj3ZwGPxYN/xhREqnAI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776506854; c=relaxed/simple;
	bh=7Y9xsHD5LHNppWja5NsrVsFbWCp7cdro5W8DHx/DY/Y=;
	h=To:Subject:From:Message-Id:Date; b=ANj6erjOVOHZ55QueKiSr/296UtZGZoF07y0b5hn/uaPsAozRSY4hsOAca1BFPb+/8rVMMsAUkUjEIPYDd0QL2yzAA2yoW9voswsFqasBftUXHoRkSJvJnDjnCtjl4DtWp0SQi5BVjaZ00S2Iecxt8aKz06JVRcVb9yE2NCLtZ0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N5l1AdXB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N5l1AdXB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0CF0C19424
	for <ddprobe@lists.linux.dev>; Sat, 18 Apr 2026 10:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776506853;
	bh=7Y9xsHD5LHNppWja5NsrVsFbWCp7cdro5W8DHx/DY/Y=;
	h=To:Subject:From:Date:From;
	b=N5l1AdXBNgOIObq/tZjsOLhRnYqOpzrUrw9yCYICnZpu1V6GU95zuzA1uCl34T9e7
	 MqWPDFL0aW5yIkIBXClvnIHhscczpGCPP6G2nVJ9oDP4RU0CGy9XzrYWWMrmM7VFSr
	 EATfTAYv1u3CGPsj7pOXP5yFyvyNPAaN+dRL9r6xmNct7p3Jw6lP01sIC5fVnDZyhd
	 1XmPrzb8jnON+HrG5mi6hHi3PiXEfWVsn3SPl2q5YLxVH3VLdMrUwnO1tDwqYeVjl/
	 TjPMdVmpAA19C/xYCQ2XAZKDYlbJlrgt205sIh9EqRGh1PNBMyenixIh7JViArdPV6
	 LpqFZAk5I9WMQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF812F99C7D
	for <ddprobe@lists.linux.dev>; Sat, 18 Apr 2026 10:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177650685368.29953.10487320961077240231.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 39ed3b00d9ef98dfb7d604cbb28047d7b7b522ce7fa84c30aab0bd325e841370
Date: Sat, 18 Apr 2026 10:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776506853
