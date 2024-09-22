Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34AFE1EB46
	for <ddprobe@lists.linux.dev>; Sun, 22 Sep 2024 04:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726979754; cv=none; b=DyfPRhWVCLtll50tvbnJhyZXlsrkIYEsyI7ubORFCQgTRpb5FQxRmFsc6AKeXHar5OskhEZvJnuxNxOD7Ys8/16J+b0AMdYH/IIIRk6WyzyhRPei6xVtofvW+tlcF5XnMJvSepWQMxYBrr5RpdXf45wmHZxOxXGaZmk5zIGiR9g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726979754; c=relaxed/simple;
	bh=KtfPfUeoyq/HUNO9eq5mxvoqwercneqKBRSJ1wmYyCY=;
	h=To:Subject:From:Message-Id:Date; b=JOsNPToYoYrdpri4Tr+TbjKxI5CiDXjbClXrn3SGN2LHQ5hRUewcHl6FUVJ93lW5QGmJGHwb1CbMMe8D841H/8OvZxdkLtTzt/TMLQpc1E3GkmP/GoFKU1mVY566VkgEEQOSUQ4bnKVjkr7CHEoJ0UfAAZDirDqEIMgSBiohmAI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=S+mUVIC1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="S+mUVIC1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A382CC4CEC3
	for <ddprobe@lists.linux.dev>; Sun, 22 Sep 2024 04:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726979753;
	bh=KtfPfUeoyq/HUNO9eq5mxvoqwercneqKBRSJ1wmYyCY=;
	h=To:Subject:From:Date:From;
	b=S+mUVIC1C4Nr/zIj4vBDQHksxXtkx7dmX1vFDuIHnHdAKJ3uvv1AlXdzVc2fGYmh0
	 JoBactBXJmpSxefokU+FGDFcGa4rbj+9e9J3QUJDHRxn12qxCvyxg4ggvGRSi2j7K7
	 AXtsD5ex3E/BTrTkztLMYlDq0WdeMFldLFOtqIn+JqONlUJUdhOs4nXWEMy8s+n9Vi
	 utIQHozGKhbXU5E0m6D8B4SadVLmhUZ8dV1TySmgS1GTu1HLduScIPoXl+Ex6HN1Q0
	 5epgZxhmHD+z4yaHD2jgMFtlnpA2JlHY+vb2Ypteqjv7Tnwxs18pEodF67X7cZEbdi
	 ZEDpuJieA3APA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92A35CF9C6C
	for <ddprobe@lists.linux.dev>; Sun, 22 Sep 2024 04:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172697975359.1848.1045563672442980755.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 601f25134a68e75017f18381147bf7dfc096d520e11b3a1f5be67266bad43e8f
Date: Sun, 22 Sep 2024 04:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726979753
