Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E44124A7C6
	for <ddprobe@lists.linux.dev>; Thu, 16 Jan 2025 03:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736999754; cv=none; b=sHqMmbXtTGKC5bcQ/lf20SKds0c7ilH+z6cpdcD9UJ/V4JGePm35UYP7i1VkSFNeT0TR+0dfxJLhOrq5G90MUj/c4V/jp82+8nDPcKEWp2I0ft2tAUPQlMeIjZnvllHgOfnjefJFcz6X2A0vDyNdn4j4VivCChgZusRDW/Q7v38=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736999754; c=relaxed/simple;
	bh=d7u7HqBrqmuHbhzK0aQW92FMRTa+cAGpSrRunHSqbRU=;
	h=To:Subject:From:Message-Id:Date; b=ed/zCBgxXtDDtQdJkgkmUrCdw5OWnCVn0TM+iU3jjq3Laa0oJ+TzGxJpDIZTBeXqBuSc2hxBgGA1yVi9MgjwdE93v+wbDK4RnfQyM6rL6yBC/U7sn/aHmnRM7nL0yIZduK9I7Xd37f3KUGq03qcgQUOPUTpsg9Y6GhmoAAdlfeU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MqDUX7bf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MqDUX7bf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3B0FC4CED6
	for <ddprobe@lists.linux.dev>; Thu, 16 Jan 2025 03:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736999753;
	bh=d7u7HqBrqmuHbhzK0aQW92FMRTa+cAGpSrRunHSqbRU=;
	h=To:Subject:From:Date:From;
	b=MqDUX7bfG0blgYFa5V0RmYbgcVwzRMCEXMf74O4O1YBkONuxbBJ2W5AOmyatfshVi
	 Hp6hBEFiyojVF+skoOGxUKOP4k/C3M5Fi8RM3tdp+1st3ggatQ8TyHW7rCu7DUby6V
	 mEWbS6zju7pzCUVhSQZa5hi+kanexGJYfusRsYF/u1qKTQWX4Sg2xyMHuN+qD9Vv/2
	 rcc4iusUNEUxnBzLu7BuQPe0DyOHU4IuUYIXMm7Euo7yMm/2eTzO6hf94OdrYJldjz
	 EVG6ZpKrs3WePkMm58cGCyZHzwEoknNMZ/23EDmQo0ZOU4rMg3e6TWAjrxt/uYRZHN
	 b3B5jtHMA8KjQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90418E77188
	for <ddprobe@lists.linux.dev>; Thu, 16 Jan 2025 03:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173699975358.14835.13146309364207095989.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1a98ba5ec6401419405eaf571736010a7938447124adedd3433a30f50b04ed08
Date: Thu, 16 Jan 2025 03:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736999753
