Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36C6018BC07
	for <ddprobe@lists.linux.dev>; Thu, 12 Sep 2024 10:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726138554; cv=none; b=YVoTMDIbJmUScIql3ncWlWMMCYlGo5QRv4jEuOci+Xc9M1fl/evgmzL3pTm0FJahd+J6n5raCUjMjort75aiQGFeQKBhyULcKPZGC78AuXw7HqBBdzZotMebd20Ps0TtotIxx3w+GpNwIhXbij54xPGG8gFIwwzJ2bJtC6weo4U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726138554; c=relaxed/simple;
	bh=meXfK2zDVXbWqMzQi6ccO/sSkd4qhw7sFrm60Pubt54=;
	h=To:Subject:From:Message-Id:Date; b=nU5BF/qkk1aE0agS6CKifsY9lQS8T9kucAyUSVS4b/XP44xYS8wi8ovQ4AZ5/9imDyHWR1BXeLIqjuxP0aGm1tIlxto7RZuYA1eGBY5MDifAU/j27YD9UxSxVcvhBYhPuURkf5q+CX+xQSIWMv6zbxa2oJdIf0ZKMPqlDHn+krM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Hq6aoj7I; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Hq6aoj7I"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F281C4CEC3
	for <ddprobe@lists.linux.dev>; Thu, 12 Sep 2024 10:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726138553;
	bh=meXfK2zDVXbWqMzQi6ccO/sSkd4qhw7sFrm60Pubt54=;
	h=To:Subject:From:Date:From;
	b=Hq6aoj7IPignv0xFd/LwJfO5YLpjYABN3+4nb82h+0g+L4MRZQ5L0gjYjRbGveMVE
	 i+q5gUyvKB0pFNbSLKkkQ5cTfpSrFCDvcqZoAxP8nL16TgNqZpACOC89SKhDhUip1L
	 wIYLBv3rA3gn/h9RL5BHuc1Fm6AHFMmGshjIlpE8SQsbIZt9HLGHBOqcK7AG1Qud8Y
	 6+DjCU+A8PR5yxt4XfFKebsNJL+ElNhQPZFkdcCyJ5ryKu6MahZ7lxC7mtNzKuINgA
	 S526Bhg0ErHbWsX1yVDFEDrHf+seiXaVyFBaU+qVxzU0jda6e5rPyq4XuKX6Y+w1mi
	 Cq2vmiOVdWp5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90A86EEB58D
	for <ddprobe@lists.linux.dev>; Thu, 12 Sep 2024 10:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172613855358.17200.9599553590331990794.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 017fb5a4e58e79aa9836ff334bf5dd923b22df025bf5bb43c556c19b072e3146
Date: Thu, 12 Sep 2024 10:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726138553
