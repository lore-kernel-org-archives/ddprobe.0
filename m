Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27FEE305692
	for <ddprobe@lists.linux.dev>; Sun, 17 May 2026 10:20:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779013234; cv=none; b=DzpyTo1Hde8s328DHkeuAQ+oVbZ3CO4ZT+VLlVYtl5Owl8qaZcnl2x8bh5NBEgN8j7Y5lgL20LWchCQibMh0CBrel0rXaNXy3lyfnl6o8FNoHU00JXW4L1Va9xDacl1ZxNO+DN8a/5Akrq02rbK7YaclOTVB60PqIn7vFXEfERM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779013234; c=relaxed/simple;
	bh=hIygpgbcnyrUe4fQx/u3YUQ8ZRhhwjU5qRVVEEAtR1U=;
	h=To:Subject:From:Message-Id:Date; b=tFaTtlV9OX1YcQ6kNqAuBZQYjrPxRHED7Oj5S2jATkOq23ankL664FOVPknsaMLLC++PmI/UD4EjjnoatJ6kCAhxa+cootL919KQEpIs8sS8G3A60LmECE+o+V4gwQ0st6q5t+pLrSNx3B/yTsZTq6VUSLySC1U/MtvGZShoAxg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pnAeYKCn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pnAeYKCn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF0E1C2BCB0
	for <ddprobe@lists.linux.dev>; Sun, 17 May 2026 10:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779013233;
	bh=hIygpgbcnyrUe4fQx/u3YUQ8ZRhhwjU5qRVVEEAtR1U=;
	h=To:Subject:From:Date:From;
	b=pnAeYKCnmGywdly7sGMhuRzfzMPXvTWAEun6rP/JbPoBc21KXNLLtSFla2ueIjOdq
	 HI9cYgY50tc2WyX+XEdFMRYAdjAKQ4WSf2yuCyIoY51I6ZVdAWP+h5pXKNwte/ya4h
	 xvniT6M5//TQA2TD5/nOf8ESkzhn7b2beNCUKUKNJT3EXXt2TvjvI5KnhH11JuxYw+
	 MshWpo/pIBIn6TzJkcoLY5VgMuYn3OOsr5hGXDIcmhSu1b9qOAzZqufax/hrp/FtqO
	 FJFWAHa/zJBXMoZyS573GVCow6dwT7UNLPbf3wcRhNRTcVZmYPEDqMBstyrdmKsgEl
	 eibVGYwEDXPRg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB2CCCD4F21
	for <ddprobe@lists.linux.dev>; Sun, 17 May 2026 10:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177901323369.10194.4112987277670683285.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 60c8e675cf9ea9a4c6ef1111492eb71a16be5234f70ef3e23dbbf935e1da7bc4
Date: Sun, 17 May 2026 10:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779013233
