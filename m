Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22CC41C5D77
	for <ddprobe@lists.linux.dev>; Tue, 16 Dec 2025 22:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765924434; cv=none; b=T5QprS0ibzKAEwhFRr//4RKONbHp3YkF56O1EtUHjeKvSGwGu4nZU/u+CQY/ytCSlHw5sRyafH8xqWIte6+E0323AE0O+7kZGrh6THffDOmMcihS6vIOVZ1yXU1P/dJBXxn9kJEPpN7PsBfPsjt1LPMRebrbRuuFKcUVGb9FBoY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765924434; c=relaxed/simple;
	bh=cTMVd/MatQJrdHfGfjv5rfSRwD8kuPDxblxP+d3UH0I=;
	h=To:Subject:From:Message-Id:Date; b=ApWI1U1Ye9RMC+LZYpBhXoQ7tV3qoxOUTuUR83ljuu71e5R9a/VhU9rsF0TWSawushq3c4WIBYDeCnMyOsHupD7vmbWb3WW3q35XmwesxpxhtqdUne4s5tlgXyilQX6vzG2uI3OxCmCCW1w9QawBxXMEECfCsQ4jZ48tUIrMqH8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jywcsj5o; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jywcsj5o"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABE34C4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 16 Dec 2025 22:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765924433;
	bh=cTMVd/MatQJrdHfGfjv5rfSRwD8kuPDxblxP+d3UH0I=;
	h=To:Subject:From:Date:From;
	b=jywcsj5ocEc3dwUR0GeLYTPIrpblJIOxNjFHvJ1JkU2eQpv2wgA71ZCIlSSl9543R
	 ab487E9PBfjtdgX/JhTu2aLodn7I+HEvI1j7DRmsxuPrRbiT75S2LtkkToXnPJo9qK
	 qM54HsFwtzZs9R8vETKnFsSrNanUgpNPG+YYU/SuPZqQDY473g0+x8z8J9kgSWU/Ql
	 9HWdE7tGL+HuU51VDdrU63hrOrvHidwzFq5+qGb0ejwuGszAv2ScOziY/upBByinkk
	 cmdgFs9p84VlKDIvIic1eMBblbv4XxKZi8PxvZfXKnOpciZcmGcID3BP8O85COKiVf
	 gafSz2alX5XCQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91DFED637DF
	for <ddprobe@lists.linux.dev>; Tue, 16 Dec 2025 22:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176592443358.18124.14803940105485488365.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cd030c83d95d3c4aa5e4ff03f8fa35691592a8648805c03dbddfbd24e268ea01
Date: Tue, 16 Dec 2025 22:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765924433
