Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0BF6423A6
	for <ddprobe@lists.linux.dev>; Wed, 23 Jul 2025 02:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753236594; cv=none; b=bxVC7VgRCvpvQ+tUJSb0mDDm1ENT2RuoGr8eAPRgg/TfF1vYO5HbweHOUQnW35da5hVvNGeV0dLwLwx1TukA3+blb/xp+vkRNN/rScKwmuILTQh/8OicPjdD2Xcw5aJv4XPuK88PYYePcYJh3ZagKFLQYqJ0Ud1mViP/7gdQLCk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753236594; c=relaxed/simple;
	bh=7SCBm4pkjSLbTaKbAHMDHEBHjal8WSGWO6ZipP2jvho=;
	h=To:Subject:From:Message-Id:Date; b=GxFR6tPD4g0Je08fg6JNjarKPIfcuYORmAl9YphHf86/R3XSbok5EXjGjNPBVETCLneCv/OIiaD81Sm1XK6729ECTkbuHLQhXn3DZ4qQCeKck6jYYhj6VlC9ac06A2Wd5+EreAEANkz3YeWQAGct+1nds7avkdMexTc5XvHoKQo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pMMwQ6v0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pMMwQ6v0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C731C4CEEB
	for <ddprobe@lists.linux.dev>; Wed, 23 Jul 2025 02:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753236593;
	bh=7SCBm4pkjSLbTaKbAHMDHEBHjal8WSGWO6ZipP2jvho=;
	h=To:Subject:From:Date:From;
	b=pMMwQ6v0sEnrN6wBP6VrIr6fbcH39PCNv3cDvLquyFgciMIOqxG534O3VA2W5X4w4
	 WzwyRjbzMG5EmxQk8gEr91iuTOspIj0rQMTCWUhlCxCL7cPqed589oO/acueG43wGe
	 sRx0xn8mLkb36abpgHo3QjZlO5/GpzvHCjLB6KH2dsdVviNNxoEJvfYz9IAd7vexg9
	 z1HUxbQTpLRImYpIFVBmNetTCAYSr8J9zOeR8pdJn5hbHTZswOLyF0eYMB76TbVmA0
	 PUsZJ2+RtbGY5hK8y8mrvP4cAX/RgW3LMmt9a00/2XyysE16mokidpyzIk9WYDlQja
	 6hxjhWfgsnd3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E195C83F27
	for <ddprobe@lists.linux.dev>; Wed, 23 Jul 2025 02:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175323659357.1039.62713256735964191.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 64527af59b2cf5252641970bb27a42677dbe18bf77ca839c0ccf74d10f75c1f9
Date: Wed, 23 Jul 2025 02:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753236593
