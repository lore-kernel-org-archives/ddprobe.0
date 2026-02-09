Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F9A923D291
	for <ddprobe@lists.linux.dev>; Mon,  9 Feb 2026 14:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770647634; cv=none; b=odX9JgWe7AwXE6I0VB+4ZSuRzsOy+ICD/oIev3SsQzeAN51BswROIi05PdQKMEEIsk2VfMDYVNHviCL68hvVaOCmcLJgp9ydRQTuseWASg430uq3QO6i81nsVIwA1quq97DmNuQMdB1jqOz9/v+rZuDS7n7oPzrS8c255KV5uPI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770647634; c=relaxed/simple;
	bh=9degTuuPGwdHoxchRueE7TSgCvKvADtVxhvpeBjPaMM=;
	h=To:Subject:From:Message-Id:Date; b=axcYIvp7aCpKnL40Pnt4uG72rtV8mu/s1YpzwgSQqqLBSQdVSjytq6S9QLd6ZkUoPFuLw6mWF4I6BkHtvQe3TX5Dx2zDpsXsz+pXAxezLnZG6TMK9dLukCqP0KbD4/3oRo656rqAP8ryLDeV93c6Rbnw68XM0OIgjZ10S5lLEDY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kT6Gvz0y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kT6Gvz0y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF1A7C16AAE
	for <ddprobe@lists.linux.dev>; Mon,  9 Feb 2026 14:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770647633;
	bh=9degTuuPGwdHoxchRueE7TSgCvKvADtVxhvpeBjPaMM=;
	h=To:Subject:From:Date:From;
	b=kT6Gvz0ytz44I6JQHt+Q0Hw4mggmN8J4iK4sKfxwRGWK0YhM+nu/Of9xqXUnw9Qsn
	 WUL1pQojlljqjRHoizLqK2bNyv6HJQhaeOoE3z4JlQiD3E8oJiLI4cLMFZEphkpXqw
	 PcjRWqC/x7/SyLZNPvVpgfHpVBRB10DJAGM0o92tAOK/kGa0m/dsGgUFeSq0+XjFwg
	 OZjZuPk63/D1uIVAx9lk1piTjT4ZRXUdUdTLSAYu18itYyxol9RukFH8HijVvjvGDJ
	 Uhezcoj2ZJU/zZUelZ+ItsMqUNof/EInoFkmcLWox2acInxsFJCL4CPEffXjy6g77v
	 GC3ufS8XOkhbQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB266E81BCB
	for <ddprobe@lists.linux.dev>; Mon,  9 Feb 2026 14:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177064763366.27610.1999818962119360739.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fce183abcd691ea7da1cd399a896c8cab0c6363728497352513fcfc0adb76e9e
Date: Mon, 09 Feb 2026 14:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770647633
