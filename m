Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42E421372
	for <ddprobe@lists.linux.dev>; Thu, 13 Mar 2025 05:58:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741845534; cv=none; b=VGul/IL0zxt2CwPefsWGPDhDKHOt4wClQFpuA/fQFez2FpP8MHzqncNb2w/mkp7jqocREpm0rgbhjAkwbv+2YNmEnFNarlH6D/rbkpyuinSZTM55dZKcehbiKzfUTqU9BYF6iTZMwMAaHSoAV+6+oppnJFtBO3iMBDGkn0tMlb0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741845534; c=relaxed/simple;
	bh=aOA+pNIRmasTFaqgFcQAmRauCWXNNlwB0yZ8tVzCoig=;
	h=To:Subject:From:Message-Id:Date; b=uqZuTjloFCtPaE9Fa1XJSqOQXFs1IMYI92eSj5kYCbQdCd+w1E7bbhUrrFpnMapkYu65QsfHwQjzK15vUH4udTFzVLPsLvwmlzuTR1E9Ln6DOmrzriUhJlyy/v9crP5LbqZL3Dnwap3y0kmnb83FNzfkF1AcjVdCMW6f6LVVmas=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ShUluasr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ShUluasr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC421C4CEDD
	for <ddprobe@lists.linux.dev>; Thu, 13 Mar 2025 05:58:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741845533;
	bh=aOA+pNIRmasTFaqgFcQAmRauCWXNNlwB0yZ8tVzCoig=;
	h=To:Subject:From:Date:From;
	b=ShUluasrS6vypL2uuV6AJjCpwvBSkU7gAT5Dydb/uyIwaAYHQulM4dNAEOVE3iO9X
	 HfVG1RdbaAcLWl1wjVE4yysS4Hh29Ju1E86tfKJ6FcOVrrouEcdlMCUkNgQdH8yQ1y
	 aoXXPdIYaQL2UVWZLbY68oyfc8JTushsATBks7NCTBLNRrp8z6lDIj3swvovDv4yCD
	 KHyxRtzKZLwcbjJsWW2qcLsi620wMQNmNOsV5q4ta2C+hak4D0RehzOjBWEyyymFNq
	 Up/9ujOwe0I3GJ8uN9KHtp341VThbajbH8M9y6nQ/SysejCkg0Ll0XHT7L1vTVctcP
	 rn9/fJhd32EBg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96533C282DE
	for <ddprobe@lists.linux.dev>; Thu, 13 Mar 2025 05:58:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174184553360.13166.11246772065074534197.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7fe76213e7d061d28135cb86d8c01b3786a43844ee6d755bdcd10e635d95b2aa
Date: Thu, 13 Mar 2025 05:58:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741845533
