Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 211FF2F42
	for <ddprobe@lists.linux.dev>; Sat, 12 Jul 2025 08:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752310194; cv=none; b=fFizqc5ngCKrzQVezc9JNEjsca8idUIIV+6en0Mo0zh4ZZ+Sd0PcGj2rYhtLs6oSH5QLBN3udlWdK6k0M6RzkrK5IHRKtlsaEjFNt+UQ4zW2z8HpIwGnVzrz8hAwSRwgmMqmtXsnsCmZJpy46Y/meU/rZh0Wt4crUdE9lWrRuXM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752310194; c=relaxed/simple;
	bh=1tWfZbInYg0/6qjBtTifA4p9BuAAx/zuAbUIDmLiQ00=;
	h=To:Subject:From:Message-Id:Date; b=OIo3Gvo8HFuqK+wyMXhR6M5O8HVmcMeGY+4F/UbD9bCtgTT0nXXCtQmG6Nh9+jefUUc3KUROE0K0cnxQsNf73slpC3SzZSY/X3Zg3knnCI+PPJFNhqOc6Iih7D6QmW6Ajk5yu8AIvRs3BquBocefHX+JsusgPFasgLjZR3OG/34=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dMzL4igr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dMzL4igr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E43EC4CEEF
	for <ddprobe@lists.linux.dev>; Sat, 12 Jul 2025 08:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752310193;
	bh=1tWfZbInYg0/6qjBtTifA4p9BuAAx/zuAbUIDmLiQ00=;
	h=To:Subject:From:Date:From;
	b=dMzL4igr8j7K4/h2o//CddCXhjHhRuFx7NVOA9sL7K3o0XX4mqvqWosW1A523G6N7
	 qMirhIIUAT7YWmtEl6C9JAJBY1Ae2gvtpXiD9tKeH5b2+p84OFlG0Jk6aMGCtZ/8vw
	 BfQVnc4YPKwqoPqrf166a/7UjM5VNcuSn6byTyd7iqSQO+UFefFugk7FCp05TqJ9xd
	 k4yQpFXaYXBg8GqMBg8O/hyHdYdob18JPUSNEs+yvy03g87dU+kajvW0cj7TW7opzT
	 oZ20mnarCmzwZvj9cQnUxFArjW8S1XdxmXpOZVwXcl3Sc1Xv5BRxriBPwABGVerbA8
	 zxPiizAlV6iuw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E1F1C83F1A
	for <ddprobe@lists.linux.dev>; Sat, 12 Jul 2025 08:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175231019357.23596.17999932594129129191.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fa332bf166e220453071cdd96cffb0e8b3fef9e7396ff7dff805f48a8875f944
Date: Sat, 12 Jul 2025 08:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752310193
