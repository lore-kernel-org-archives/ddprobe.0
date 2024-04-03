Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ECF09156662
	for <ddprobe@lists.linux.dev>; Wed,  3 Apr 2024 23:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712188097; cv=none; b=rIrGXrNuqSZAIUuBka4LRtIKIJm7q4t/RZdgOnXg4/D1tWbzKNbljyZBePhJ+EjV8tvsnVgBz9kYAgbcrOJxcIgiVVksy7V4fjUWOEbfMESlmgbfioMlU6FgLuuFewd86klMbxguY1K/BwaAMMFspy9LErKtVxWrAZtLlT4eTM4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712188097; c=relaxed/simple;
	bh=/dHoB0Sh45C08+veDqhyq5TduT4/Y/O5Cz2yFxzlzko=;
	h=To:Subject:From:Message-Id:Date; b=IVSV3MaejgjZvnoZZ4FOW61EcU5DmnPbpJ6rx+835GTFMtAxIHxnR6TW6V+BZomH8t8LdBSc2wdldpJ8fnNzPqc20yPp3/nmmGPLrK5YteO0Xt7Ifb3RLQ4iqEA1aFKyicTJoDIJPpnKebxatxkE0SDbzgD5oXpSk50LJeE78mk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cMYSietX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cMYSietX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 701DEC43390
	for <ddprobe@lists.linux.dev>; Wed,  3 Apr 2024 23:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712188096;
	bh=/dHoB0Sh45C08+veDqhyq5TduT4/Y/O5Cz2yFxzlzko=;
	h=To:Subject:From:Date:From;
	b=cMYSietX/he6vc36XjvhO2XqN2PyKviqNP4uTx70rV3pDYa6MLmh9885RMIj4t8Sn
	 Ad5TRSdggll32xdj7InydLZCIgF6a8C96Ax10UbI++DVkyrx4Vhq14noHJkR9+UTgM
	 274AKJoWGcs/2+jqmQcX0nMId3KDDfD1juGJEYEq44U65/GfVv6MSUDSUSTb0YWSO2
	 pedDfpUErA1fwNy2B0gp0T3P2iHqxE4wKxohlMk0RsGUIDr9BPFgDgiBDW9dqZki+W
	 kgZglf+iFyIQdP6N9sO8cVx34HLqCckhpjzOe8/1ugNv1FN/huDhmeADKHrSb5XrPV
	 0Y8WrB8e4ycHw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5F938CD1288
	for <ddprobe@lists.linux.dev>; Wed,  3 Apr 2024 23:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171218809638.6342.8238496207334225990.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 097fbc03dc186eca0bfd14111e38dcbcc1deb9c01adfde7bd735ab0088840d02
Date: Wed, 03 Apr 2024 23:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712188096
