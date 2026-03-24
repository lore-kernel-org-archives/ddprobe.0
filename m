Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0EC5F1A6832
	for <ddprobe@lists.linux.dev>; Tue, 24 Mar 2026 03:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774324494; cv=none; b=nyBku5apWUGBaj6zKV4eyLJt6SekOhZMGwK049trUXMYO/cuzeVlSKvBzLX2F8KoCOqTKM7586AITfNcp4cnP7rUpJZkSfI9oACV+m9nZit7SVtLYFSTIMVkboUegDDjZcgifodaAIzB4PrqeRXCiPnIS/XZAFSLz1hbw2TBK/k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774324494; c=relaxed/simple;
	bh=Kzh2wjFTwR7ff2efo6w7aYkDhptKRHAFjVmxcRkpVJE=;
	h=To:Subject:From:Message-Id:Date; b=idG4t5N5K6Aops0Tb7ET5tSvPPRuKPykj5j/+Df7E/RTh72JmQygz0lJN3YBRDdPENcgxDKLi1dPTum59DZ8jEanBcn5OetfNk6DPoWYw8QIxXHgmuGnwl/vGpkWdLMONB3jWN5jWCbiIGYPfrZRnQHN0Gw/mxBQ/oEkrUuxtC4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Kig5qf87; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Kig5qf87"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABBEFC19424
	for <ddprobe@lists.linux.dev>; Tue, 24 Mar 2026 03:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774324493;
	bh=Kzh2wjFTwR7ff2efo6w7aYkDhptKRHAFjVmxcRkpVJE=;
	h=To:Subject:From:Date:From;
	b=Kig5qf87RxrkC/16Lud5glSyLYVoo/6y00MK9UHPMi/w3igM89UMxpcYCyHcWr3Lt
	 j0Xlg5N4hwURSwhWRihhY7gxoUQNza0f0CLgQ1ePv+khXVshJmOzvIsSgN9v24ccMN
	 PkoHQbeZRKhwMz0CGcsyZ7/3T2uO661qY3qtgMPC4k/hhUI4FXNtgusNd7+aM8H2yR
	 +t4LGZnigytO7t5VuIV1Gh4M/WJZwYAUNwsCooTZboIDnuQaPAttDhTOAmK+zjOoBs
	 OrSOjfUXUH2l/rbdHP1Y/H54zYh4g4JeO9uDkhzb107/JcCqCcW9tagSk3Z2kehTUs
	 aoEqJHFSs9q+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93A2AF532D0
	for <ddprobe@lists.linux.dev>; Tue, 24 Mar 2026 03:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177432449358.7815.7763145431094695247.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dad6ed6754cf9d41e2930b4fd03ea8473c1b08be1a7c59ab61bed84a82424be1
Date: Tue, 24 Mar 2026 03:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774324493
