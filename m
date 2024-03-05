Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 093A8405F8
	for <ddprobe@lists.linux.dev>; Tue,  5 Mar 2024 05:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709617097; cv=none; b=bVZj63WxWBBus24+69wKTzrRb0ckdDfHpxc7cwaUVXWNQZGel95NOK2QuB/H3GChN6nn82+FEPn7GU0lsAypOwsyaonI+PZpmimkbL/dCnaTxO46T5j3fiP5f1kg1Pe/iqVAswNYmOyGjeGZTnOuXCjsVrigZYW2qp8dugJYzxU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709617097; c=relaxed/simple;
	bh=IqfZ3LP5SsLUpISJ9jSMG7wSAZfniqGV422bJDqAan8=;
	h=To:Subject:From:Message-Id:Date; b=A9pqXzRWDKd1Zw6eMdSldKx/2nD2FndtJ5N8QYFITd5GRPjWQIILBEqiqWUaIlzKvqQdryUpaO/5W6cfJVJVYyphmr9QusQ2FyhNQZqO5tWwhhaOd57lNsnVdC9dmLIuojTgDva+KZGXn8jUHSvOPHsTqltSh8LqOFgPZq94+8w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oK3BJNds; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oK3BJNds"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7A4B7C433C7
	for <ddprobe@lists.linux.dev>; Tue,  5 Mar 2024 05:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1709617096;
	bh=IqfZ3LP5SsLUpISJ9jSMG7wSAZfniqGV422bJDqAan8=;
	h=To:Subject:From:Date:From;
	b=oK3BJNdsoJ6PUe4/K2mAITjlegkubD9dADt6kFCBED+Q/lBsEL9D9auPJJcb5qqwE
	 poj1FETIlYmGWQVdjzb+WYsH+ofAmi+8STGKooWIwvEBYQiFl4RNOH4SVx+Q+vqj2L
	 hrm+n8Ef9OQk+xN7ZDsCvld03uyW5yaaAnVaxFuRLNN3NowNN90KarHgkBaJw9lqz4
	 3RGrDwY4+taU6Oaom2VsHlBKwXWQmEX1gtQorlM9LXw6QxMdOi+OMOxCY3NNgNgS4u
	 9voLCFv4UysFJFIRlEyKsz51xOudAmbWRO/rRAW0hIovsuFBXxaO15TgWM5WtzerST
	 hCtbacAWQ+5ZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5FEBDC54798
	for <ddprobe@lists.linux.dev>; Tue,  5 Mar 2024 05:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170961709638.23368.10522093511045225705.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 844ff194a96796f7efae9d7fcb7305ef378151cd68a9b4f75151bcc1e5efde5e
Date: Tue, 05 Mar 2024 05:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1709617096
