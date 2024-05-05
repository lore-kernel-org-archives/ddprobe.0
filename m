Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50FFD7CF34
	for <ddprobe@lists.linux.dev>; Sun,  5 May 2024 21:32:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714944743; cv=none; b=dGnb40j47C32HYdtbk6et8Js4vqPqkABedSzIWvNhQMMGuOSbRUvkLk9vOQJg7ZFm9SdPaC9SzNYfvoRKXwL50V0Vb3Nz4U/Vdj0gqd2hOH1T0V9hr7mAJu9XF8fw20D+o6AcbjO7mXdRgDvqIdprkF1htfAymr4hPror9uN/24=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714944743; c=relaxed/simple;
	bh=GRUjpV+NGjW1SOPmAGGKoV1/wS0qWJG7AIid39ypep4=;
	h=To:Subject:From:Message-Id:Date; b=GSlX7pP5vkL3zxSVhN3YcdqmEVoBEKRC/KfbTDeATREPj7evzjAyEEpLWkTASL7etJfyfuVK2sREB6Eo0s7IO5GqPJswMOrAskB7kF4n6Tx5gdfE+clD0o9ukTzNsyHJdWGYxyfzmMOB9ErmSj5ZMSQtKwRhBwEbT0ylM0DICN8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=txb+ENf0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="txb+ENf0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8F27C113CC
	for <ddprobe@lists.linux.dev>; Sun,  5 May 2024 21:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714944742;
	bh=GRUjpV+NGjW1SOPmAGGKoV1/wS0qWJG7AIid39ypep4=;
	h=To:Subject:From:Date:From;
	b=txb+ENf0rgJ1xV8K8bai+xkBC5Atf55mAIUslSHrCRQjrYtI5CqoOwSheQvy16p02
	 5JesdfmdVut3HPOHgV/CwMI1UtHaC53Tr3JNLlD9oOGMzYDWyCax4Ff1u3SwSyMcrH
	 +W59MoIkZ9xaZqMz0NdOziIAa6Sxubk0aUh8DVXWBpQXd7nr8PPM0i9roj40dSQeqj
	 oJxYPEcVYsWPlxa8NcMzUYgfu8BrYSBiFk4WrTq9yfmm8SDT0gmfln0OfasjpkBqhp
	 99LJFxCk+uDAbBhvBLCIDxDxVpdHJ2qtZArNvn5yR371RtI+jBW9RWylO35ZOjaEP0
	 b1QknyCztELBw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C40B1C4345F
	for <ddprobe@lists.linux.dev>; Sun,  5 May 2024 21:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171494474278.1502.16544466419301629045.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 83f6dca66a3babd1667d7311eb6b602910b832cef4254d6c4875123c9611db27
Date: Sun, 05 May 2024 21:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714944742
