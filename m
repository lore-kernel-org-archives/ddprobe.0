Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1922F271A71
	for <ddprobe@lists.linux.dev>; Wed, 15 Oct 2025 18:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760553594; cv=none; b=YcEMdm6ce9SSvlskB2QuBmqIpazNRVRLvpTXj1GZMuK5zL5GiWn3UtYo2UwPOqRqqF/ExvvS/jeZID4vbqstsCYXd/CEVkPHcn77K7LONjISg6eapVDKryK7IWLsMwVQitLGuSeltIUQymDzUPiaM48IzLuKQHB+lF7yfvCCo2U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760553594; c=relaxed/simple;
	bh=ZAqazWj87pI9UkmaYO1PstOfwL5CSZGWP/GsY8s/RPo=;
	h=To:Subject:From:Message-Id:Date; b=nKCiVdUMh3qZb54TN9D81oK1UEo08vDqnWAUaT7/DvPRSg05h+U/AYKXFYar0Yh1otaQK8gVFfsxP27x7JBGO/7SVDLWgVnvSCBc8FT9J00ch960qxy2YvLhugutVrmay7++A63dhHYkTbujqGfwSWb2R2PRbEsvB0w+AiUjJj4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DoLH0OgA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DoLH0OgA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A115EC4CEF8
	for <ddprobe@lists.linux.dev>; Wed, 15 Oct 2025 18:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760553593;
	bh=ZAqazWj87pI9UkmaYO1PstOfwL5CSZGWP/GsY8s/RPo=;
	h=To:Subject:From:Date:From;
	b=DoLH0OgAbVxzJaBLId3uYfRadw4wDYzhnHJpJr1YkkXvMz1ml2yoSuAfvp1jFWml3
	 9dbkm1mjiHYNYQBZn/UF01qcpI7+/cQ7ZBCiLshQ+Zu0mO4k/9QMgxraPaW/txYUI+
	 lNl7tDR25zOKpZQ2EwMJl6MswOupUJGFhOZfvB7lTupcFIvkY0t3YN4mpzearuyvqR
	 av0SWFuolvb+1dmeXF2bxfN2as9eBS6iSqOTDU7uK8xJp2YyM8vAjgMUSjVLFQx5iB
	 qtPArNxADvf0FyTuej8CoZPwoPNoIKVpVtRAmKn/pgoMWMURIvKscDeSXlvvm+7pKL
	 8tPEthMTi4EMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90152CCD185
	for <ddprobe@lists.linux.dev>; Wed, 15 Oct 2025 18:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176055359358.27373.13302418204001488034.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9ef83e50ae7022a3e0a72e046612a5c379b3ee8bf06f60c04b695a6dd3bc1ee0
Date: Wed, 15 Oct 2025 18:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760553593
