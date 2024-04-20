Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49132205E16
	for <ddprobe@lists.linux.dev>; Sat, 20 Apr 2024 16:40:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713631223; cv=none; b=Cvf9it8+PLtuanOm9zRlZpTqjLHI/WzwhQ28+dW4Xgt/6tnquSVwTvVTDcRQWATuh4e9rYIa0vG+BXm4aEXBOjssPGGDOWpuprGeO2eVvxnaeyJ8WqNX4uHJs2UGAtgbh+Wqf1+mpxM2Vl5pzAW5ToEZrXLRoyQXk35yEMTIEMk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713631223; c=relaxed/simple;
	bh=43Cy8osORwIOVO4FrPURBxG8Rid2NwWhv/a/b5KhECI=;
	h=To:Subject:From:Message-Id:Date; b=Gp/AKVmx73wb31AP1RhjpXDNyfKwMzPo0U3Qbnjp7Vo1fLwBO15UQnsU6bEHSmVt+7PkvkafncO9YLnrwiEmc4ki6z3Rh7A3hjFsrv0FGVKJFFFHZUVM6c/tWVaDxTYI0VBw1hACFrDfPfO99Ek0oFIBYkQCSY9NwUFEwNkyYZ8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=d7GMibUQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d7GMibUQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3104C072AA
	for <ddprobe@lists.linux.dev>; Sat, 20 Apr 2024 16:40:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713631222;
	bh=43Cy8osORwIOVO4FrPURBxG8Rid2NwWhv/a/b5KhECI=;
	h=To:Subject:From:Date:From;
	b=d7GMibUQTDCjwwgiKkHqLJecCvwQcyl9POcckuPgHup60fzKmYAIW/BATGKYuGILG
	 Jsi2AAmRjmpsfPyq2MYEUC3wxL4eb5dMtBfVw6b8YFxYhz2TVdvwvpZdD93fV5hR7u
	 xRxv8JYkcDkyUJqp9isfvNqBqWF0e+M+sxqcjU10uundlv/BIeRPx1j2yHZ3vWVofO
	 wIB6KxCC5dOLk8A9o/9dIPWF+ChdCF9knrpqtbtu7j5DIcV9CYtOq7+fary04wuj+j
	 EzeUILBSBrIuKwOZFXRzr+KgZ4f5di54QTMdB1lW3UXQ4sVTopG7fPXcFRBUA5rSoD
	 OR301U3WBsf9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C01BDC4345F
	for <ddprobe@lists.linux.dev>; Sat, 20 Apr 2024 16:40:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171363122275.11866.14730556540929904816.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bc8974a630e23cb59f6f7921eb69a278d27f3e02e3275e4195a7e70b96610f96
Date: Sat, 20 Apr 2024 16:40:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713631222
