Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21F512D5432
	for <ddprobe@lists.linux.dev>; Wed, 11 Jun 2025 01:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749604794; cv=none; b=SJLTy2EqCAuB1gL/ynXJZhb5oJ5+GLJf4mzqotKZJ+88MD0kZF7FMeyhkK5pjIqBhYTPTgvFurWRcWVvjZJoiKw3k8QQm4dsW/oxAaGw4GbAwFortv2vz1phDvPV03urPm2wMOw3U+L6T1XeV6DFY7KOGPInyO4l1TMJAn1VmO8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749604794; c=relaxed/simple;
	bh=5HHqksNa9bIaNZrpqElzTDNM8wKTpdIaQ8b4JC1/juY=;
	h=To:Subject:From:Message-Id:Date; b=BjHIMou6jIrFy2J8AadPuR080wffq9XPIFqUuW6RDprAvXLx6cECpDmKOPKEOL9Nncq/l8V9AWIGjYgFLCdk1AY3YBnHx+ItkVypLtb/poFneeZyLpZcwFdqW1dDDDj+RKZ3lugvtSEcP2t8m83L6i+hL1ZMFTFZ/BIVGhBnnpM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ImZmnmZv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ImZmnmZv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9783C4CEED
	for <ddprobe@lists.linux.dev>; Wed, 11 Jun 2025 01:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749604793;
	bh=5HHqksNa9bIaNZrpqElzTDNM8wKTpdIaQ8b4JC1/juY=;
	h=To:Subject:From:Date:From;
	b=ImZmnmZvHi3sH/F9nP/c1pwXFj/stm6XKPicr5PXACA05K2fq6UUGNQq3X5uBKbMv
	 uNpvNLskuBiv1JZIAvqq/uG2ifHDpa9S9Dfpgh+GjIBsZwDCxeVeBVijRcmrXbNzMy
	 Vxn2AvJgKZc/ZUFvnuAHfNpe3CsQNkYdbQa9U4juJcJ8aKb68qJQa0JYS6EIfAn2yE
	 +TD1h034k0ZSxiSMn4Wtqnx6AxXXAVG8JTuws3sGF0pl4PRONcMCXiRu1pbzQHkDoj
	 /tcMjK2x/DH8Kuye5n4vhA6/Q0jzUR5squmVHm8S3hjl1dgHD6aMk+Ecb8OsMMHuPj
	 vPDLnmNvFbH+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 969C2C61DB2
	for <ddprobe@lists.linux.dev>; Wed, 11 Jun 2025 01:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174960479358.18217.11573815601847183006.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aa76d2c76a359d8db5582dd749c7fe34b4acd9cb8434649e888ba82307d0c839
Date: Wed, 11 Jun 2025 01:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749604793
