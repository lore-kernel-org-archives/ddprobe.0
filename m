Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AC83515A8
	for <ddprobe@lists.linux.dev>; Tue, 29 Jul 2025 04:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753763994; cv=none; b=sBLp6StBv6ev9MSpZEbe5xChYVMaG9MtEnBq46TlQLGk/K8Vh0uJ4zl32l/XYQxBuvzTITh6sw2tm5TMY1ufBdTnTcoywUQ/whYrnlp7G+DAuWZTX0QROCQyuYsWhNqiQrAm+RlgwBjtfG8EY7K1twEubD1ULHUT6tKxHskwiJA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753763994; c=relaxed/simple;
	bh=eQ+C1AYmUhcJaQi4w+CDLhlSqomQVOgSGrZDT87U3FY=;
	h=To:Subject:From:Message-Id:Date; b=aBKyjoXySAcRypa96pyIW5hrq/8Ksm69/fsz6sF4xoYB+JEsEzVkd+srlm2tL7ErIxJdCnqemo7Y3etQ0cbd2Gwakiaqu0DvD71Q4s8k4e0FU+NNmgKJfBLPfV1ZkIvbh/LP1EsFZIZDExgwk6KxSQQBwcEQeGKbFiMttFPFYgc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t/hgJcj4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t/hgJcj4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6848C4CEEF
	for <ddprobe@lists.linux.dev>; Tue, 29 Jul 2025 04:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753763993;
	bh=eQ+C1AYmUhcJaQi4w+CDLhlSqomQVOgSGrZDT87U3FY=;
	h=To:Subject:From:Date:From;
	b=t/hgJcj4OlHfC8NuE8coNyGrVNRPRiKFX5dTN/zQwB/ChRcmzs+C6BUcP8i6DEc/4
	 eVfBuZucsuina+cS9fDMTt9O7idy/+LwgZTvihvJKV8jB8wUJi/TX0kVBbtrm18e/D
	 IUM5RqmdcPaDsBOxYzULmL7k4AY0e1GmtCvzDBFRnsMPSuBT8ZT4LJSLDky8nozXf3
	 sf9V5G7Abu+yRiwKiOCtNy738z+Hfq/05xXxmWsnPOgDqqTqBnBu6PPsx9kHkys2V8
	 8umyu6usQdVN40cNhCJracQY/FmFYllIgRDUrX3lv20tjeS7zhzx15HPqYRodP5j39
	 oP3GL5WcMSXHQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91494C83F26
	for <ddprobe@lists.linux.dev>; Tue, 29 Jul 2025 04:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175376399357.26171.14521776915499432537.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 23ea401e9bae056e2ac256a30f5dda3e6175dd85cc511261db6e3b79d744763d
Date: Tue, 29 Jul 2025 04:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753763993
