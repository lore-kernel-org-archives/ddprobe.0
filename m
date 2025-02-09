Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49FA11DFE00
	for <ddprobe@lists.linux.dev>; Sun,  9 Feb 2025 17:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739120754; cv=none; b=PM/BMcAxXLgm3PEhFs6gfCfQz84tXB1B+TX9EQMc6QdWtLZ0ROLg1vinin7DUThDUO+xJ2yUEacwZ0970Je6EgRYwBEL9QAzHWxH2qRgh4aTSLRCQLXTzJdV/onRM0nwSeX29QIUNoBNA/CgmicgVOOv+yds1nQ4Rb0fVaH1+7Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739120754; c=relaxed/simple;
	bh=2040QQtACek4vZH1kYaAxwaWklPBZp7pqh53QFgWTAY=;
	h=To:Subject:From:Message-Id:Date; b=alf3EJVNrKOXSoNWaLyJRzO31F2/pC9nkKGHQnV8T5qjQyFtI4zrJdlGlo2nEZ3uHylLYFc7glhuIDGLqApKkbkl9WASK6WscdsV92bJo03wKC4yKwPQI+NP4WpNJfHGsz7O+1dXbIAYgKO9bawwy65jJ/vkimqaG32+vemmbcw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IHR8Qjmc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IHR8Qjmc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7643C4CEDD
	for <ddprobe@lists.linux.dev>; Sun,  9 Feb 2025 17:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739120753;
	bh=2040QQtACek4vZH1kYaAxwaWklPBZp7pqh53QFgWTAY=;
	h=To:Subject:From:Date:From;
	b=IHR8QjmcjwSWTml6k6s95eHJrSRfB8/Swlw6blPXR6dyG7hyfZnaygmaBYKOf7iTl
	 aKAp8Ez1ex67ym7Htkklf31Xfd6TWbkfX/1J9vGIOgeIW1NvlKie/xRRnL0bEvrL3p
	 eiJ7K/k3KpuXSzL83goHk6/Dq9Beage9iIzRKgRzPfD6FgX1GHUi1N5nCElMtzRaWJ
	 Y1sMuR48845qTkIiYTkINvgOWkSqzxBED7hOFhgq1Eflyz0VsEnsIjP87O+ASx8noA
	 YqJ26692pAdB7gUXZymTsqgSpMgjNUYYkle4Z4CjLu0K/lC2nwNN8BLvfzoEve6+Mr
	 MrbfPPEjmc9tQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD94DC0219B
	for <ddprobe@lists.linux.dev>; Sun,  9 Feb 2025 17:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173912075365.11634.13497787213328101446.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5af264d84f285461edefa85a89b12ced1f0715b9844ef9c51b82df31771f9f87
Date: Sun, 09 Feb 2025 17:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739120753
