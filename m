Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 60A017082D
	for <ddprobe@lists.linux.dev>; Sun, 30 Aug 2026 08:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788077434; cv=none; b=oY3csfVweRYVzlwL0dWbv9lf4oEOa3/kxblUH8ByHg8rYJ05Kr/dD8O1EUcR0BU/0jZja4xE3ZfWmd+vuHNnGiON6PtaQmOANAUkFKtV5XNa8vAK5NMFm3ezANy4ko7GumoYk6/Dka1c+W1QHxaVhUDlVZabe4oKp6JVHUDzxi4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788077434; c=relaxed/simple;
	bh=ebSV8wrTEkBsqn3zQs/dTlTfICvZZgPAGvVUz9vk13c=;
	h=To:Subject:From:Message-Id:Date; b=o8WJrAnfndAPeZ5gDMFqeGFXr8hx2RZdohuAwBtkaYg2Ffi9jxGxjn0A9IC6CUHqkwhm++wgnlfoFhS/Cx0YTm57P9vFtRSNRbY3uoSnztt8pUUzb3L2lX4735cVk7EpnedHCHhDi1OYUTCL7ec2ko0YhghU8ymMLyO/okgnoBw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=koSAI0Jf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="koSAI0Jf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6F68C2BCC7
	for <ddprobe@lists.linux.dev>; Sun, 30 Aug 2026 08:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788077433;
	bh=ebSV8wrTEkBsqn3zQs/dTlTfICvZZgPAGvVUz9vk13c=;
	h=To:Subject:From:Date:From;
	b=koSAI0Jft8zi8lRtJY+BtP+E7KHFx+p8MTQRdcgWEDEk+yHewclPKVo5+npSpJMBu
	 HkOlMReWnhd9IGdM3/SltzdOIljGDcKI1StYuJRNhHjiq7yZrZLJuVkETGl+Hfut18
	 EHRevIa2wctRyq1/mQjRd2VCiFGYR7eOdj0I4VklqzHdulL031UK11RsrtNTshCOy9
	 +q+64fomksuzrPFE9+ZWY3e8IjRly6XdtfZpdJwBY50/IU1BXBZWdydoBFCL6K8GGV
	 kexCFgYYeIhj4EI6wuWrMqPGoFESU4urT+rW8go4lW+CihGu3KAfYgwGLYHUU4jU6s
	 tO6xoYLA9HHYQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACAEDC61DB9
	for <ddprobe@lists.linux.dev>; Sun, 30 Aug 2026 08:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178807743368.22589.6109524982952732024.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 907063a0e4b93068726732db67171cfdc4c5a8c6a93421382d0350c13bd5706a
Date: Sun, 30 Aug 2026 08:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788077433
