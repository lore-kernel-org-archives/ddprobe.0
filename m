Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55D7B25B084
	for <ddprobe@lists.linux.dev>; Fri,  9 Oct 2026 01:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791509434; cv=none; b=gn3a5EAwoA61s2cpZcLDhF7WKJUYp4Lk31cl1WwOhQ3haJhUswVeYB4aieSaIdA+7DDxInjlApsFhYiCLM6Q3NtexR1W2wzpZI9WbU36TK8L6N9Z0/w/zjL+Y6npFCyRj3UOdCa+sII86N+KVWOzNcAcjCBe8GzpSlBH4CvZ41s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791509434; c=relaxed/simple;
	bh=5UBnfpFSRRP2Tm62MOub0U93lMfWUMM+vieYehuKQiA=;
	h=To:Subject:From:Message-Id:Date; b=JmjXPETd9zoSrqp936vW+jmfTiQ3BV3X7u1yui9ooGaEMEQjmXldR/H2Um2AAxZEQbpdgbo6rH0dRYWG/msYCbd/Dbt9ZvNOG5WydZrVzVtOvGoywD0u6V+2nD2GkRgkVd4E6haSVlWCnRaq3k+5Dyanr3RO/Vm7p8tq4hiVu8s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BkUGYxaQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BkUGYxaQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE38BC2BCC7
	for <ddprobe@lists.linux.dev>; Fri,  9 Oct 2026 01:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791509433;
	bh=5UBnfpFSRRP2Tm62MOub0U93lMfWUMM+vieYehuKQiA=;
	h=To:Subject:From:Date:From;
	b=BkUGYxaQd4HZt/E6tx5RbD+Wci31hJ/FUMaI5l6CFeCVeQUT0ALfXglM+s+LBvBqj
	 ZP8hFdM3EwpL521iPsHOFODA4HDSpwwTcKNx/CVg+MGYDEuyN3wpt+0Fxv8WKMxTXv
	 BZWwPqPHzs7+FvR/7ej4SNH+LMjsdB/A8H0JQOHCXQ7poP6mDnHpjaOjrsh9dANI1g
	 0dPnQ4IN1eJRh/c5pU5V3Ndj5OaSX7TBp0yRv4+albczl+A9+FLKgR8eqqsKcvkjmT
	 UTJRdtqzgmdliAchJmC6hwHW9QQHNLE3spoL7U6+C/kWzmTCUMj8VHnNZyGYoqPbVU
	 wQNi5rIHB15ww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB2D4CA6012
	for <ddprobe@lists.linux.dev>; Fri,  9 Oct 2026 01:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179150943369.13448.10196044326175526748.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 97ce5159496c317ebc914ab069ff7a14c1df9103d67168502eca154dfb32e94f
Date: Fri, 09 Oct 2026 01:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791509433
