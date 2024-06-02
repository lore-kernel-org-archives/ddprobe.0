Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 843DB1F60A
	for <ddprobe@lists.linux.dev>; Sun,  2 Jun 2024 20:35:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717360523; cv=none; b=W+0b4tMEmufkI9Mgk4+j84IpxFHRrgFQj7ufJzU66FXT/lb3yH56ecPm4rNNMEd+OuwH4SVOo17NJSX6SDMlqUIbp0oMqSJfDLvDCBt5Rkf4Rh4rstVS+bhRUhrbmjP06dRumxe97FDT948JShRIu+dfadyyKHaUgwrjPKYwk+w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717360523; c=relaxed/simple;
	bh=3O2drGvJIU9SrlJpzUG0BAZu2obfBqpDtdhytXJSNYc=;
	h=To:Subject:From:Message-Id:Date; b=U57Et0SmD/qsPSIawmu5WrR7CxqCsbG8YFi+o4knZv9JP19yytRbnC/XAZT9d4UDX4HqWG6xGZAuN5XQTfcEZK1vphdqkiWzc753j1+PhR9QU+Cfl5zSAfJ744LsRDofjkiABOX8G7Dl+iD7OCWqjX0245w45RfnmRz98GD/gOA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WbS5UKUy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WbS5UKUy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 15B84C2BBFC
	for <ddprobe@lists.linux.dev>; Sun,  2 Jun 2024 20:35:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717360523;
	bh=3O2drGvJIU9SrlJpzUG0BAZu2obfBqpDtdhytXJSNYc=;
	h=To:Subject:From:Date:From;
	b=WbS5UKUyt3ftigUc3db/++44FyRLTFhMUkTBjxtd2qMTUm6PENnn7JF+/TC6nwqTN
	 u04sx5DO2NUWfLrMvsEtDVjMMGv47zWlafuFbuAlwt7zVzGgFI/0PAftKFrFuJnioE
	 /ZOmseoSinj/D+by55pbfMp5yR7f79yHm1k32u/l5BF578VpxOju+UF/8PhFdWRvxs
	 OyGqqDeEeNhqfRcmAKrCCOTyxgYDYtDpfEl6n3UIcOW2uA1h9mLBjniWTiDhCt+N60
	 QdAJBK1jQIdq5IboANi+c+PogalwMN3xp8IRX5YzDQ8Xe3TXAcXyPXULxp9S3l+Khj
	 OOyQaFKWe0Deg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E6AA0C25B74
	for <ddprobe@lists.linux.dev>; Sun,  2 Jun 2024 20:35:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171736052290.2724.12975359022205461591.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eed37e625d48e918dd664df651ebd4a9892ba147aece49152ba409206af56929
Date: Sun, 02 Jun 2024 20:35:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717360522
