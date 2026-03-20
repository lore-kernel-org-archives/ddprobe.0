Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DB811375F93
	for <ddprobe@lists.linux.dev>; Fri, 20 Mar 2026 12:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774010093; cv=none; b=n0bKPY5k5FR4oBZ3Ltoldc5rFDEk5bfvHLKJndBezz0+968JSVqGQGgMHHM7VieFmlLz+RODEpDip2JeYMTiXJgtYa5WLCwAdBylbAO0+r6dZwWc3lnaP2hSDwak0ie5GmwI8Prps1ELs5O0E6sFIDelntD422yVWOEw2bLwwUQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774010093; c=relaxed/simple;
	bh=Mt8C4CnuKWPCqHlPoY8Pgb0VcSSmcbe+f70u52yfTLM=;
	h=To:Subject:From:Message-Id:Date; b=YZ2R0G1iLLl0k6Eg8z4Kn7vmllSaFif58CuYo+utMGs90jmqP8UbK1DYQqNge6RVm+R/rNbXqBW0vd/W19KTqXuXC9w9DC8KHCt2qDdeXaJjdjiu341wgJo69INIU5Kd8b6Xme2o28TNFl0+oXxS729KS1AtqBLwB7lw+yc/0TQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DHTbKE8U; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DHTbKE8U"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F3DCC4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 20 Mar 2026 12:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774010093;
	bh=Mt8C4CnuKWPCqHlPoY8Pgb0VcSSmcbe+f70u52yfTLM=;
	h=To:Subject:From:Date:From;
	b=DHTbKE8UqQxaspSQMFbU+EOTAJjeXQecbHuFXvHrSKQqeuv8fzzoatwqCWeHs4acB
	 SkbARnH4JA+EQgQ2kqRlXt9Ho2hmOqWjOWaCXiaGsEc8uW27u0+kIsfietRgsU0NnD
	 PciehhShcip4TWMpKRnPtM7SAwux86vqKuB1sbCF7Fgrqv1kZnYKbTPGkkA4kubT4p
	 A6lqpoqOnhePDnLsOeGNA/P1Q6SaP0oNSDPSTfBgrypALkgvmv+rd5KFyHSrkOlbRY
	 LKilmHqalVUnlrRYM7+vYayulesgf1zdZUoQAbbQq5KsBIxAHIht8OuiJHH8j4uHGI
	 FSHyUjcuQPDOA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F046108B91B
	for <ddprobe@lists.linux.dev>; Fri, 20 Mar 2026 12:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177401009357.15997.14773746798580699833.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d58dfee9e105a8c0a558eb17ab29bdf89a6436c3e2eee5413b5b84fa6be20f18
Date: Fri, 20 Mar 2026 12:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774010093
