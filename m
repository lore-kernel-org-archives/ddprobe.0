Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1509B233D8E
	for <ddprobe@lists.linux.dev>; Sat,  9 Nov 2024 10:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731147354; cv=none; b=A5+mkxcHbcqR0guWshCFl97fGDUqkkcfxq3KUlYm3wgMhTekbRJZrz6o7arGq1cpKcdAyedJmg12KUu4KSRIJGJgWARENQ4G1El2kOZ/SLMKQnA5napmxl7IaA1ALwksaZ2+VxX1wnTjBNGf79OltCJDb+2bm7xmuuRg7QnalC0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731147354; c=relaxed/simple;
	bh=sg/CRdp7aPEwJUIVlAUo7WRbE1vOchMfCBHtqCiK7NE=;
	h=To:Subject:From:Message-Id:Date; b=aYptGBZbtsJOiMQRCyK9eXytOyk56BmySAcldUU8+S+vC7E6h/z9pCFmy28sbEx/F7BGg2FMTzfOo5zNPiv/rNdolDK8FB7vfJsN+QefXl/AYWQQOwBxXCzAjmXGL65isjm24txZUkaWKrHlwmeQS3q0kLLYxQbC7dDJX/GJWkI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RQdZeuNN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RQdZeuNN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E087C4CECF
	for <ddprobe@lists.linux.dev>; Sat,  9 Nov 2024 10:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731147353;
	bh=sg/CRdp7aPEwJUIVlAUo7WRbE1vOchMfCBHtqCiK7NE=;
	h=To:Subject:From:Date:From;
	b=RQdZeuNNocZIvid+V7oYYJ+uUCCDhlpF8oUag+yZcOvLJui5WG7mEqaISyuVlGXyk
	 lpl9QWQSp/tv+eu5mazTH39JrGVVhwhlbIgVByTlu5KPFURIIgeRmkvRsKuYtHksA4
	 dpzInYjKMou9gAuDd2Iabqsb7NCa+HT3nBPglLmG8pse6jvoJhnfBFqlbvY6wNwC2U
	 j9fu2SAuUxOeo3hXP7UHSQW+XON4cOsfeOCQDwHPnVT6xGBNyh23EiC05pS2salRPc
	 X4Q/GrQ8b5rN7v7NeryRPsnKN3fknGQ6XNq0VyyZLJU7mTC2rAakplWvENbt30NoxM
	 5qQz3PbLtVs/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F8ACD5E362
	for <ddprobe@lists.linux.dev>; Sat,  9 Nov 2024 10:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173114735358.21777.1735245224002339528.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 305f28f27431cc8c58dc1c3754c3513b562188b68317acdcd3f7650404b3c565
Date: Sat, 09 Nov 2024 10:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1731147353
