Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 030A819B3EF
	for <ddprobe@lists.linux.dev>; Wed,  5 Jun 2024 12:26:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717590383; cv=none; b=BDZWJw7ia4qhjtGfbRj+OtH9zbZMr0P+riProQL2NGaD2HbaF3k81YkPJoCgcAT8hYhqjxYWft2TB4jLACMPnHum/v1A9HQLrz1dLe17+2lQYNp29l47D5iOxQcyyDgoIGEiN6xxyJnkMOBhsBp3RcJeyMmRHvcbJRwapabbJ/4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717590383; c=relaxed/simple;
	bh=X1si9KPB8xehBLFD0zahkAt0CoJ29Mlh9zkOeOTfMCU=;
	h=To:Subject:From:Message-Id:Date; b=hVtY/Abhu8mQqtxKpR0N06QA+VOSHc5Ahu7xlY05R3BPp/yqgwbo+IQL36gZH+zqyMl14BSdXiFxWJaRXC+2EIhjDZUVWOmoBcbV6AnG9HV46rzsKLVDBP7PkYaxqhBh70trs3PpKdwPXKMlT+zswq1NpEwpFA9eklJb1o3toFg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pCCjwkmD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pCCjwkmD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9F56C3277B
	for <ddprobe@lists.linux.dev>; Wed,  5 Jun 2024 12:26:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717590382;
	bh=X1si9KPB8xehBLFD0zahkAt0CoJ29Mlh9zkOeOTfMCU=;
	h=To:Subject:From:Date:From;
	b=pCCjwkmDVaU5aqTFth+WjARqKONxNtIzHBrEkFEde72vRwz825L2P1FapY2W5lHrR
	 oTYs7VcnwDaqI6CqfPLQeMnLwk+XGEYAvckiEn49+NB7F70U+IXw9FhzJYW1ONRRo8
	 6gV1cqeMQ3GryfjFOyfgzHzoHbI5vj2VW/eTjPiucYIYwtpQHUEeKwGzp5Z+ITKZcT
	 13vhPMbhbx55NQrgejtgxx4OOgiOFl+3QVivIPDfZEfiH3Hwfuq0xFBJfjdy3KMdZ3
	 AlVkXdAznJvW+nbgkwK6nvX5vJjM16FMbaGNl5ksh6OB3wtIpOSlpw0SvPOWLOK06H
	 RZ/gU0QBOa2ag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C7C42C25B76
	for <ddprobe@lists.linux.dev>; Wed,  5 Jun 2024 12:26:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171759038280.3381.2563258137947764716.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 137c20d0dbed02fc98cce38c227dd7e8392099e2d6e6fe21104fd5e1ecde2324
Date: Wed, 05 Jun 2024 12:26:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717590382
