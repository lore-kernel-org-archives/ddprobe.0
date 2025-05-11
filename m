Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 388BA78F52
	for <ddprobe@lists.linux.dev>; Sun, 11 May 2025 21:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747000194; cv=none; b=RqoEjAsNI3K8Q1J/AIODg+pYrRxq0ZZ4RI1xaiRk3GbVGYVMWcIIq8vwjhbWiSgPks0jkk7Q8EXMw5sbUtt5Ex7lJkdkF7iEVx1XLIrnYQTkIFt5E40nuhXBbCgfg+lWAbdB8CPnvaE7Hq7Ja54yxidCGLXX4grCjYHr/xraPv0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747000194; c=relaxed/simple;
	bh=ETIV7nerKUtV24FXwWqfElmpCK+GBx9sbfB5aLiw/q4=;
	h=To:Subject:From:Message-Id:Date; b=l30fgiI8kan1KcJdzkfrRdKB3Ewfr98L3ygak2t/p4uiQzfatAdEre4DWL1nEs27xn8FJHYV71x0TbfU4fHVceWM12iAaAAKR3QVGYa0Rgs21N7ia6cJCzRGAldLwUnXIMV+tYrgwfapjIO8jyC4dROgxfm3/AH7DAcfx2ynbzo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Melx2QP4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Melx2QP4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0DB2C4CEE9
	for <ddprobe@lists.linux.dev>; Sun, 11 May 2025 21:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747000193;
	bh=ETIV7nerKUtV24FXwWqfElmpCK+GBx9sbfB5aLiw/q4=;
	h=To:Subject:From:Date:From;
	b=Melx2QP4llhdk2V72IpdM076ylWg13CPHNOZc4ruhWri37O2SyG1mXF4omr1X/NQ9
	 O9VvVk8Ehl9mdP1OW8uROADJOG3KTf0ThpgMtE0tRzNkIHNX8zoLUDtiu8kfs5Gh+W
	 kqSwBLOlinKVZ2dZkvCnJjp0A+KcRabU+GhHxAHMBrOYCy7VVH+R7meMIiXabPuT7G
	 sgbJ+8d9QUWiZnKyhTEzfBDGo1ZKUJbZm5qNxBSW6JjI0VLMT5fEvkDCneukUGYXNJ
	 2Um+VR9RpTuYttWA25Y9kS/EWdtg/F/VZflOSValfvNCE+T8g+qkvs5M5jEBgBUhY4
	 FPb8SGOf/mzQA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E9D8C3ABCB
	for <ddprobe@lists.linux.dev>; Sun, 11 May 2025 21:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174700019357.26373.11885418266345118993.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b7ce782f22c9025ae378dd8238b6d29aebe2c4e3e0ab941f28ba54414d07009b
Date: Sun, 11 May 2025 21:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747000193
