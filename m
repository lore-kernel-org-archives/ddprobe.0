Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2089E1F2BB8
	for <ddprobe@lists.linux.dev>; Sat, 28 Jun 2025 19:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751137794; cv=none; b=ZM00Qw3d+yt0OAz86rID1xkVjEx8mq3W7bcGHjuR98O7EgVpwEeW7mrZbR22Cp6e++V9abY1gYuyhlESHy7UfehnHcRnVL5bCazUgmwBQ7wSlpHBicbN++CEGt5tZHpWyinE4XnHHbyi+3PuIyz8i+PO5+gtmLR275G/H0B9RdE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751137794; c=relaxed/simple;
	bh=ZZBVuB1zlTtLPk0AsqMmkkJ/UrOxwEZjNo/MVhMzyRc=;
	h=To:Subject:From:Message-Id:Date; b=VL7CfJ8dXMv6OAqX5V1LE7HH3DxAqoKeLtTxu6HS8vAIFK4tM0pVfvp/wljCCGB5BeP7ZOmxuiF93+myn67an20yQxAtQYBFVD+S8c5HjzLs9fwGYz0Elr1/sM4cqcGR4twS35wxdW+eP75jqjKiTj5DqwSu4JXMIyD+g9AeDls=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HM2hTJW0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HM2hTJW0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A01A4C4CEEA
	for <ddprobe@lists.linux.dev>; Sat, 28 Jun 2025 19:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751137793;
	bh=ZZBVuB1zlTtLPk0AsqMmkkJ/UrOxwEZjNo/MVhMzyRc=;
	h=To:Subject:From:Date:From;
	b=HM2hTJW0Jod7KHZnQL06kZhG/gJ6R4Wice/dsShQB1XB1AKVlNLF4qzZ0xohp937R
	 S3reoC1aFq57fMfbRT7UTlmLdoQU+4h0LE6J7wUvv6vSJ/NuVqb83/BxpLLN3ahvmR
	 sR/aQAUqqNAKoxNpUFXPyPmABZLlFnFhRctxxV/VU7tDMkhT1CssddgiUUaQq1gqjB
	 nwPWtFNRRRW7YoxtnyMz6SX+j6Tn9MYVQl7pEkfkJIlK30dW3PODeQ5qaEZM+jq0Qf
	 RPPKVxKEj+AoKK68ThqBE+PRVMQaiLol7jOOg5Yg+2lbUDHhO2YeM4pJGms3qefC7O
	 UdobGaQjmb+EQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E804C7EE39
	for <ddprobe@lists.linux.dev>; Sat, 28 Jun 2025 19:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175113779357.21624.13028317449119153827.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 720f55bfb2e602ace408ba1dd09a2b4393ad2a23bf1374b7573383305c81f2eb
Date: Sat, 28 Jun 2025 19:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751137793
