Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36BE5366806
	for <ddprobe@lists.linux.dev>; Fri, 23 Jan 2026 05:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769147034; cv=none; b=N9Fgnq7idgta3yK3LVoZatfqZastA9hZbgsoXCFzewJNUzDO+PkOw7szTcSfE5KNaW4lsJdUmwCDUOKfiDG9F2kL0fUg7EYjfIdnCzwuCxRuxgw72o6Q0Pwse1JbJhc/QC9FgOfVxqR3zQW6MX6Wa4E+0gvNqQEbIPRetmZ8Zgo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769147034; c=relaxed/simple;
	bh=flTYTCVf9Ti7rY7ZgjH59JRUuMGpKXQ5RnpCRyW4w7M=;
	h=To:Subject:From:Message-Id:Date; b=XvWWPrJnGQibng9AS7XnNOoGil5qFySuiFpbfgEHvcWJIlBjRRmyYAQ0HVrBC1M1EyIK0y1eD4h5s7nG+asInmGXx6Fc4FjKFOs+WJfpyB2gp++415G6RyR2i/PATkJvDBcILUNRm0AwO8lis6mmWu7a4kypwFabEQGKU6z22YU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NTmaZ7vy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NTmaZ7vy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A69D9C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 23 Jan 2026 05:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769147033;
	bh=flTYTCVf9Ti7rY7ZgjH59JRUuMGpKXQ5RnpCRyW4w7M=;
	h=To:Subject:From:Date:From;
	b=NTmaZ7vywptwCUYiZRG4IQBor4yiWGyqlfjWbg2nQwCeEfHpNY4/HX0ENoVbZk9vu
	 CyeMGNfgWzwJlVcGzb/tzIPiBFOsDXigIHZAaDDPzhmURUkRrTcLSqYTfqTU3mEA7Z
	 G1c/TI0cySLG9KKN7AkUWVtkSHysXYlznUAbD5hvvEn5UPDCMx206Wzew2CqV4gZyQ
	 EY0M8ovGm7QJ/0B0mDpYzfhalel5x+FvjLuDXSqocMflPk47Ia/cc3gu3QARZzxoH+
	 LIF7cHiLLfvfqnWFI8XMcR8esNoAM19Smz8gVDmFtfUmofzv3gkvhfV0F/881nvK2d
	 BXyXbqBMW07gQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9521ED6CFAD
	for <ddprobe@lists.linux.dev>; Fri, 23 Jan 2026 05:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176914703357.23304.12038919884973877609.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 441530d79f188638e86b0723319716f62cdcef0a7a872f10544c556ca03241a3
Date: Fri, 23 Jan 2026 05:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769147033
