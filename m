Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 108DF1684B0
	for <ddprobe@lists.linux.dev>; Sat, 21 Feb 2026 06:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771655694; cv=none; b=p458AOgoRMvwBQvb4MXGSfJERM/k3hOJpv9+7U/pCGwHW97ISkp1JT9v7rdGT7VaLzHKIQNenU3B0M8FqGPWPbZpMYJhoWc/Es6v1vdpGQ8Eb0qCNPsYVERW93wPVZ+95b1w6eAJpkOQA9V+c0pjL/bTztEfIQG04yxvDWFVk4A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771655694; c=relaxed/simple;
	bh=zWi+O3Isy/zlZ814Xf98+D6cv+sx3NJS6253ELZQyjc=;
	h=To:Subject:From:Message-Id:Date; b=c/49NE0hWE+W1l0wxLqwZvzLsAiDowUPVdeyIBJeeT7sJLbC2I4/HAfe8fZc37oDLaJPwqeW5vpUUSysNnqGnTnuxAVSYv8tQl77+f5lFfRDHAlLndT/zk9wwBvz/2r/WbxYtmUKRfiNkmdUeKZZK2zKC0IYS0AWb69WB/zZ7JM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DP4NRw9f; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DP4NRw9f"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4830C19423
	for <ddprobe@lists.linux.dev>; Sat, 21 Feb 2026 06:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771655693;
	bh=zWi+O3Isy/zlZ814Xf98+D6cv+sx3NJS6253ELZQyjc=;
	h=To:Subject:From:Date:From;
	b=DP4NRw9fYjxKB9gkn8FQHpNxfExxg9d7CZBSYRKPv/ZvrG5KlXc35xDE3siSvd2LT
	 HzKa+OOw8O2zz3QjTHCZlsQXMpjgjVqWwEmTx17zq4fCoW+imxkfwEjdIJ/+LKrVLJ
	 /rVWrQjdnMfrQhf/JUJCFKUbikI2IXFpn4F1c3UjrC6mxBaIQpgLCY/Eq4YLpAytPS
	 7VXdrcYIod82cxBVg2aynFU9440h24PciITo2OKe6zy03e3Y0JZZohL8qCibf7Uqbj
	 qwJuiftjwo9Rvbs8qdnk/MrYp+QvZ+FnK5jZ44wAhVUOTKCZNkRMMhVOJrGEAYiltM
	 kl5hM83m44TRA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92C08C61DBE
	for <ddprobe@lists.linux.dev>; Sat, 21 Feb 2026 06:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177165569359.32697.8032451909746484112.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ddb590ca64a185e8b8d0c0201dab14d386cabd1f6ffe7b7c377d7fe91c454b80
Date: Sat, 21 Feb 2026 06:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771655693
