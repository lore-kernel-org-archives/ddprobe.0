Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E4F610E0
	for <ddprobe@lists.linux.dev>; Fri,  6 Sep 2024 01:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725587154; cv=none; b=jPupZquCPwtwK9o3aJ4jLvG6j1gaefSiwzb25525dkPXOx2FOgvVgmP7BBXcT+xiW8zYX8TrpZdmegPeUJGsidN6Ft5HN2ZOEEoc5I/X56oEhUtJc8e1WG3G30N9g176Y95hPcJ6aSmgQMP7SeGxj0UYDJqzVlQzxnKc+2jOsUc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725587154; c=relaxed/simple;
	bh=Q+juGkpuEQT8gkA5G+fWjgcwz81eRyv602HwnZoZOvg=;
	h=To:Subject:From:Message-Id:Date; b=mqpM3Yf8f2vr0Jzj/MWY1r55iCKU1ickqIgXqkFfIZWlx90bbMXJmMxeNv9ZnBmSPXn87vKDUQxCZ9Hda2IfclRPa27z9o202MUDu4yScWTSRRcxsCJ6evMekgLwWOhQQs1QWyC3IwMlT3umHymo4GG28duPMlyNIbyTQ2NcXWM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eEuXYv7B; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eEuXYv7B"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB730C4CEC3
	for <ddprobe@lists.linux.dev>; Fri,  6 Sep 2024 01:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725587153;
	bh=Q+juGkpuEQT8gkA5G+fWjgcwz81eRyv602HwnZoZOvg=;
	h=To:Subject:From:Date:From;
	b=eEuXYv7B0zq+L6+vjpd3tFhVhul9vbN79gxygQkxFsBrL7HrYH1488Uuwcxoj4Wyh
	 oJ40FC3w9BEKiV9yxDOPWDs3AguPG7wefb0PZ6o2ryFEIjCL8/jFeXw5uI4mxv7rTV
	 d1b34qLdp9YZshYzyUK/udxDJ8+1mrECGpasCDuGY9Gc7dDryGbD/t3Rw6+WVOYux2
	 xQkubicG4A6CCIQOVpjp9rUU2ag0nZdGtviK59E4I8+BBzPabvhVZNrhJqv3eD0VBm
	 rnXLk3/K4OpYBzdAhUR9LYPRD2FUkeV6rkWdRfh5lX8gOxmV2X9p6OGCnsGvnQ62p9
	 jELjhjrkUWh1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AF52CE7AA6
	for <ddprobe@lists.linux.dev>; Fri,  6 Sep 2024 01:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172558715359.9623.161545075065045265.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5e4203e8dc4afe04e549e2987a8368c814a5a66661d4b227d75483c02377ea95
Date: Fri, 06 Sep 2024 01:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725587153
