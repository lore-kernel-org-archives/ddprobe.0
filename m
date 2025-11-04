Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3898A29B8E6
	for <ddprobe@lists.linux.dev>; Tue,  4 Nov 2025 05:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762232994; cv=none; b=e+3YWq4iuJAnezvQK+j1YlYzxwLzWM5jcoSsXMBr4mL2UURdyowLJBr11qUYS0UP1u+RrLxQ29qS5bGMtpb2O6Tg4ywwiKb4CRGKvHtRhFTs5Tjmzb4rShLH91AI8ptnpSMI1TicUGlwlxADCougJov7RlFlR4yyjnxstgvIpq0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762232994; c=relaxed/simple;
	bh=NZtiwUwu4c+xhTuAzUyDx2WnGj/rTUZtw6GJx4bcMKM=;
	h=To:Subject:From:Message-Id:Date; b=BQAON5Troz8MN9vKcDuA4Zjcah7LZwoDFWKJTYna+dS913FWGalvfDo6IhZLSVd3UkM57oKHwb7mJ2JFBHRh5Wofat4Sh+aXgqklJy5JBKEz0adKAbl9BfdfFNiX3cmyFlY5z08DsUcjFY5I6FnR7bgbYwEUi0Hrli/u/tO0Ci4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fJ+dlSR+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fJ+dlSR+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7AB6C116C6
	for <ddprobe@lists.linux.dev>; Tue,  4 Nov 2025 05:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762232993;
	bh=NZtiwUwu4c+xhTuAzUyDx2WnGj/rTUZtw6GJx4bcMKM=;
	h=To:Subject:From:Date:From;
	b=fJ+dlSR+gnRrfPmYL2t3w6hLoH1tRL5iqYRSbXWW/wqxHVwRab7lkNb/IcQs458zD
	 61g9RJ6b1MBBTKcrO4qX8GOYU//BNCJfx108mriro0glXahWJ2VnDit79xL+Wxvkw4
	 2w9tXSiMLA6X1Yj5wI5dWWK3ODS7efU6INNnzun4g9vm65d4QoKS0nyAiUo6XnKyLi
	 RNjADEfi7rBZcATrcR9rMjpll/vlP4gu7rz68WSJyTHD9rG5KuWd83P+I5N/EJGTT+
	 9wYIifebWpETBIXpZKaGw+wrbGTvMX6aAtdvuNqAk1mA5DIam+pJPQU9MNKBE5pYen
	 1PANuw1ZpjPTQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95CE1CCF9E3
	for <ddprobe@lists.linux.dev>; Tue,  4 Nov 2025 05:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176223299360.9087.7081074856947150931.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7ee90e2e5ca22908377ea4244fed5ebd2deaa24f2a76b1e1916a6b9fa15de792
Date: Tue, 04 Nov 2025 05:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762232993
