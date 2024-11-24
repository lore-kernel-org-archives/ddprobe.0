Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 361B93F9D2
	for <ddprobe@lists.linux.dev>; Sun, 24 Nov 2024 19:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732478154; cv=none; b=ihfXCP+I+GI41CPGb5xbLbtWTLWdmHPrLJ4js6qYyXxHNKhy3BVFFWZLhKg1se4v6qOfr0HKu7hOWGm9YmkezgX507lARfqydawatOmX0Qiv6a0kFTbpVOo8jycxOjgwqJyuvBnEK5hi7T2Resz0bd8k0HtHwAu23EVQfivDkmA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732478154; c=relaxed/simple;
	bh=0BpFvo49WTQrnfVLFf0mEYjRoehnv1FYw+/yCSQmE9Q=;
	h=To:Subject:From:Message-Id:Date; b=hTqh4ED98q/IIYeoDrpI/CUp/gokx6OtxpSojDKGN6sBGgGg1YgRxRiAVacpkTHkmGKPUuyGBwSBoGcF6griicfzsVmgx1szY7ObjWhfiBmnOpSmKusGfp79Pwy3eNet2gxYODU5nYGrjzR3cHAwRcBPKqLF8VG6AS+XGlv76a8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m4djxDfY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m4djxDfY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA629C4CECC
	for <ddprobe@lists.linux.dev>; Sun, 24 Nov 2024 19:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732478153;
	bh=0BpFvo49WTQrnfVLFf0mEYjRoehnv1FYw+/yCSQmE9Q=;
	h=To:Subject:From:Date:From;
	b=m4djxDfYP3IMYLVH0lo1lV4DqXwGx7IXhencz07ZyLWdK/G4sjqw6wn7OtJiKt3ds
	 V6y4G9ZfIRXLx5K3NFowFQN+rJvx8eU48CE8eyJo9jQjYzJZcPTL2PjnnjjEt6rFR4
	 F0tAllEmFOM1vwAWahnAD4fXROScyMub659LKp5kPi4YUqitjYPTUI5wI44VQSyrjA
	 qOjKE5EabWOcBn/QrjGKN9bqWyUAOs/+GllTJCTQ4GY1R8T7JxGQoyh9Gip8cKzRKb
	 ji0p+l3LRnLWZJcE+ZAWH7nIJKnd2/NdkQ1SXc023tw5fE3Oooo/4RyBzS9SnuOeDn
	 ljIlgQC5wjeFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94438D75E34
	for <ddprobe@lists.linux.dev>; Sun, 24 Nov 2024 19:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173247815358.23590.5928859485139607798.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a7043c5548f23ee0f75a632aa9a71f033a6d1fdc0d955ab9d8464f6e1b10a892
Date: Sun, 24 Nov 2024 19:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732478153
