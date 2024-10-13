Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EE3D13AD03
	for <ddprobe@lists.linux.dev>; Sun, 13 Oct 2024 13:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728827754; cv=none; b=BL1LnIdYcwpszAHvvkLwb0zEBaSi+VQwpqj568YIMc+DRFYsEpgWQyifH3ABuwcSmIXDw9s8n4VJRSCWW5Siv0LkS3Ebx4aa/rMpV70mL6RD+zK8juYntJZeQEPz0/Q6l73mnt09GgRRfiMDAMjfzT8gAcZsJW0EZXbMiCUYWCc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728827754; c=relaxed/simple;
	bh=X2+VcWIKwd36VTQh6gjjeGoO2YKklWRywkUEluA8hyg=;
	h=To:Subject:From:Message-Id:Date; b=uUQqGcSpG46aw4bToFDCWrMfjnBzoGQzMqukV74jsNeoC11VlsVC3SfK9u5o6y/YegujLT8nJoGr5IpHIT2P66LeA5A2ttR9i+qwNVCrj8SIq4IJRzT5RtUoVh/qMedIQPGi3qEqiR18ST8qOd+tZw8uPfWY2OkgwGscVBZWXSw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PkTRLvJg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PkTRLvJg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B837EC4CEC5
	for <ddprobe@lists.linux.dev>; Sun, 13 Oct 2024 13:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728827753;
	bh=X2+VcWIKwd36VTQh6gjjeGoO2YKklWRywkUEluA8hyg=;
	h=To:Subject:From:Date:From;
	b=PkTRLvJgguk0GJQ6wSxHBiJWal0svXgJJZm75FGUB8fcQAbLGPNE4eMGqPHVb6yhr
	 w/0nJv8yh3nJfMOXr7ZUKzx/mq9+8gjfIA5kUc3Gl6jtxDI1Zw4F5Znye7a8hVXwsL
	 OQ+EsiiRRDNsHigFp1O040bPXqHoTpiioColm1JU1ij9+VoyGo//oMIMYAg4Kuncw9
	 Uz6Q4h+nQD0MKxA7xFeY82fWsKKaLBUMYH9NDnFSQI5Kq8AtAqSS0J5ThQ39RoHduK
	 Uq5jaO2nIFqpvLdjsaUxeCLt3RPpLTIpxjLAxfa9r/5V/0xUowde+zIUDJzPcSJNHX
	 G5tYvRi1ozZpg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1860CF2579
	for <ddprobe@lists.linux.dev>; Sun, 13 Oct 2024 13:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172882775364.7439.1505983779002324760.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ad4b6d56c4e6577e1d882d3b6d761326eb95983104e61b258224efe77ed97493
Date: Sun, 13 Oct 2024 13:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728827753
