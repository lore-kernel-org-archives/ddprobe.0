Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F24CD134BC
	for <ddprobe@lists.linux.dev>; Tue,  6 Feb 2024 18:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707244697; cv=none; b=N1F6aIR4IT0aAbNrAfMcRp4CUxWZ3saNIelILhUguIi+Dob9x/L2Max7IkmkYZJNF43tYwqsrBnJCE7cMcxx0HbHkd7lMZQFH1IK//J5cJRqOcE0VsMY5w5a1tnxAmWqDrfo+VRsKJaZEpMI1LArx6TAP60G8U0WK7QLkl80JWY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707244697; c=relaxed/simple;
	bh=68sV+1iF0tXMJN/wZuOqnP++TdGqhkETmNcu/Nxmguo=;
	h=To:Subject:From:Message-Id:Date; b=DcC3wTgPuSAxRWaY47DVrJEcGJpyS81mVDw48OZKo0tifoShHZug734uC9bLoTBYCsXOx8rB3UgoFvWboUeBS1y0FGZAxUzrWh4xR43Wa0zUk2paeaLQ5Aj9jZ8xYapd4nca7D73Krj2qywHdePswrNlS0/6xQifmj58k8dIJNY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=S3YThq2o; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="S3YThq2o"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8449EC433F1
	for <ddprobe@lists.linux.dev>; Tue,  6 Feb 2024 18:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707244696;
	bh=68sV+1iF0tXMJN/wZuOqnP++TdGqhkETmNcu/Nxmguo=;
	h=To:Subject:From:Date:From;
	b=S3YThq2odOhaqCBhb38tVNciRGsyf8QEK2Q+PCWrIGSC8WJkdHKLDfYyVMXPJMA5V
	 o2ou0e/h43GyNn40VfUG4So2zSd2tzfgoExJpG2WgEVaHdBF8LkCneiB/y/01UTiuY
	 QHts75n68JVZ0uXte+qfYOQXFcuPqM7Y9m9YdaECKWhtpLkPWSm2c5y3ebWu6PhBuw
	 8elObsrsW54yuY21S159AdfYGL50XBgXdfU8obB3ICXkKH+APD9Zl+7RTbnnV0WgUL
	 WnnvrI+8U2v5DhWZdQYObTNJjZGID4jYt/Lgck+2ABXrxsFZFkJoUuVCUAN0FI2NPU
	 z/+DUtqwAMw4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 67965C4828D
	for <ddprobe@lists.linux.dev>; Tue,  6 Feb 2024 18:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170724469641.2266.17702216153199315513.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b0bc6a40909cb37c9142499146e002187d3eda210b72786d7766b9e09c4f1318
Date: Tue, 06 Feb 2024 18:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1707244696
