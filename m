Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0DAFB288531
	for <ddprobe@lists.linux.dev>; Wed, 22 Oct 2025 09:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761125994; cv=none; b=oxtHR12KjBoEiYXzVOtMq8VhKkX6/lc2zysVqhK5DyfkCPYHXhhivPIoCREgK4J5IT5zRd6FxnHPeoQMdXd7skHZE36h/sTVNKHPXyBJcd9fyt0qPh0KeOEX167NXVfi36Bjp70Vd0QP9aW0kRFbyYNNnFiwzwdMHxhPJzE2ksc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761125994; c=relaxed/simple;
	bh=bNrCgSWRwGZoDap6RsDtKVk00YHar39CsWvjOCDBWhA=;
	h=To:Subject:From:Message-Id:Date; b=F80CSie1bYCRWYHKKnyBwBKj3sQGJvIV9Z/nNC3iVcdFIZNeT6yUBvE7q++Y2O7MB+yE5eHJcT8PBrz6lrKj+QByhN5qGH6m478YsYuPSUYRxmSrtstnyvKCqSkCaED2LOGxH3sYVsq3jneHVQKcKHWOO2l9PQcaR+6rTcc4r1U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MVnxmcZK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MVnxmcZK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DFF9C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 22 Oct 2025 09:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761125993;
	bh=bNrCgSWRwGZoDap6RsDtKVk00YHar39CsWvjOCDBWhA=;
	h=To:Subject:From:Date:From;
	b=MVnxmcZKwoQBm0NRDU6Yg/z/InqM/ehJmJ2Vi4zD8VoNAyfq4ngSgybW4930tBy/c
	 9aSJ6ASfeaoOgws51xI8S8NzH0wAsXlY0EZQOvX3jS7kcpE0+Q/WhRCYX2CvoUGJ+Q
	 j/WPzhE9L0pyxj5fRPLgijJRghqXUnp+1fXo5K8khAnIZO+EGt2V8aEiR52OSoUxJF
	 K6aIuTVPS9Fe0eT66U69KWb0e+GKWbfIitZHRO69RHH/4ovc643fGm7ncHC/Ojh9sw
	 ArrjGmOMQhLECFV37NwBUipV3spkLm+nIgllsN1VXyx1zPwtKJ1m0DJt9NX345gpoB
	 GB1bn+S/shq1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E93ACCD1AB
	for <ddprobe@lists.linux.dev>; Wed, 22 Oct 2025 09:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176112599357.29860.11401052338380753397.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 06f9dbd8a43a37ba4e1289ab1b46d50cf3897ddec08c506ec067ca76e8916cb5
Date: Wed, 22 Oct 2025 09:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761125993
