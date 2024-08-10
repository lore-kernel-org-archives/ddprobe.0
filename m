Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B5EB101EE
	for <ddprobe@lists.linux.dev>; Sat, 10 Aug 2024 03:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723259754; cv=none; b=smas5HUpVqxvRNQX+BMQ9Bs1iVbC5lt45mj5gQBQk7lPf/kat07U5swc06rZUKnm7vxmq97NollRH0+BEjYwzF1zyRZC7iIWCLnLEBaLpj2VFOD8L5YGzle1L8xD2AWVwjG62lnCn8DSp6olV2QpcFcOK4e9jadSU6jn7gidiso=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723259754; c=relaxed/simple;
	bh=LOFf5Lx7fXbe5fbJGiusbrtxk5SkaWzh7DGb+m0U9+o=;
	h=To:Subject:From:Message-Id:Date; b=uymoKriyj7A1HNQP/NNSZGNlm+rBiwJA0XZH3C2bopgxDzLHrIzorhRpkNS82Tt7mpjEfLfcepbo5ofcVUwjMKBY4M59neVN7w8hHZ6U23a5MeelQgiyQHrCDeMaBOJ2V7Dp36hYA4MOx7bQ5k9C7xM4oKEW5kpycHnrkxX7fhA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MpeG8fJk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MpeG8fJk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC97DC32782
	for <ddprobe@lists.linux.dev>; Sat, 10 Aug 2024 03:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723259753;
	bh=LOFf5Lx7fXbe5fbJGiusbrtxk5SkaWzh7DGb+m0U9+o=;
	h=To:Subject:From:Date:From;
	b=MpeG8fJkRTrCs5g7q/QHd7Jo9c6gpn9Xdx5IlrTHMvv/9SDrQxO744329jVXPLX5T
	 oszn8O6oWg9RPmz8B2e3vZ2wjoNVYKy9DMVxVjPKGebptZY7JkS82COsNR9Bnf5GoK
	 MxxvoGsAImPjbj8gM50rSwnBY+k64QIq3nUzrZJXYs7c7wS8+8BMTOxd+Pt3QEA0Em
	 OJrZjWO8aU1+dLFfJLTGAMzHoNdiFIRivr5QvtsshXq+cu3BOXwB5xTgY2+9EQQWbT
	 sccIbc2ccBbdQLD9BzBQad4UIilJAMk5KsbuY62ReUBA2V72KG6tam5NGxsMh/psGe
	 68qmD8wjx0o9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98C8DC3DA4A
	for <ddprobe@lists.linux.dev>; Sat, 10 Aug 2024 03:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172325975359.17452.2768930732050966653.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2da9d29fdcb5b12be4cdee997102e7bb274b596776847ce73d93c2f75c97f661
Date: Sat, 10 Aug 2024 03:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723259753
