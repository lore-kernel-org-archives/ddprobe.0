Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53EF8171089
	for <ddprobe@lists.linux.dev>; Fri, 12 Jul 2024 13:58:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720792703; cv=none; b=ZDHxQkKvIB6jTy33fIdorthf5hCWJc4VJnUvtdaD8N2mQhbJhZw5qVWWIks99VQYHpfyXQfSEHxi9EhL37TBllGl+rrvz/dB6pxcPwZo1QL0AwSA6f7vF1pAIAqIu9b7Hbi7SclsnxZslt8Tf3yZAS5NUSZ4RORiVT7DQWQbzO4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720792703; c=relaxed/simple;
	bh=kOrCzHPDXFgr0+qN6YL4eQojfgTOyxPAN/UsrJDFucA=;
	h=To:Subject:From:Message-Id:Date; b=AKWeNYUBt7Z0jTQeWDkj/dvAtBJ0MNOwHkwi5rJOf5lRPnqoB/94QBpvHVU0fB19HwBjtbASUS+APiyJOyzYtMCOPmICSC6hLoLSi27jZfxLC+HZNP26IyqhAu8kpji9uf/4ITqBFVafTFxDEySGBay5RG03VaXY8FlKGfsNqgI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XjTzsTbi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XjTzsTbi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 09EB7C32786
	for <ddprobe@lists.linux.dev>; Fri, 12 Jul 2024 13:58:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720792703;
	bh=kOrCzHPDXFgr0+qN6YL4eQojfgTOyxPAN/UsrJDFucA=;
	h=To:Subject:From:Date:From;
	b=XjTzsTbi1kOrdt8aPu8eqqSRHFeoXwy2ryWSBnZCZ2t45HAi1v36DvMtqaSPptZsY
	 hO/R8HnP5ekeQAuWYPDNJCHZOp3kDP4+X2E4kxSH5G7Vz1E6xEI6h1KJ2Ej6Z7xeNQ
	 cu0pkSzzZxe/s8zEm9FMCrqIJpncYgye0ZBCX5UXxNkTcHC4udF6UAnp+XnTuFLQ9T
	 Syykpa0CAX7ArNxqGF2TWTkMurHwETdC/XO0q9wPtZFgpbs//FpOfYIGmHhClrkDIi
	 n8E/ICNhjRfVcSP6eHI858F1lsriA30b26MYrIfYLINuDLHrBRaU9Nabi8I+lxPt1a
	 Y7jPhfiQ++34A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D83A6C3DA4B
	for <ddprobe@lists.linux.dev>; Fri, 12 Jul 2024 13:58:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172079270285.20924.8351448949972570115.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 765a06abd0f8f326c60c8734c541ee38b718009794122e78094fca15c7dad257
Date: Fri, 12 Jul 2024 13:58:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720792702
