Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 451882AE99
	for <ddprobe@lists.linux.dev>; Sat, 15 Nov 2025 18:00:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763229654; cv=none; b=ZNV9aL/B/dD+QvXkS62CjZ0IHl8h/+OS0OxmQHN1F0oKCfHGx0TERfHvMPa0TgSerO1tDJuB7A/+LFWsdB9RwW4PPS+s2iTBGVpYKDjU8QkYoJzX8bGEiMk+QpOi0kncxIMuYp1vu1fer+wO9RDP5G4r/CHhbl1D1dw9gNje6E0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763229654; c=relaxed/simple;
	bh=vYs5NnZ+PuW5Akm2OkRgD5mES/cjBgy5LXHhVmQ1Gzs=;
	h=To:Subject:From:Message-Id:Date; b=gE4GpgWoQK0cbFtXFTUXN+arRYPeb2Wcn0iAr5we4aK+6L+1hUgM3IWvsLTCqJ4WW6TbMv6adUutvMBQtfGGV+l7E+iPt9xChHxbSZ+PmUBjkYb/2nF9cPrXnlEurCc/NC53XRWrAd3VaYp89kymxaOQsEYB7MglFgnbNgLo1b8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VTYsITVX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VTYsITVX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4304C4CEF8
	for <ddprobe@lists.linux.dev>; Sat, 15 Nov 2025 18:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763229653;
	bh=vYs5NnZ+PuW5Akm2OkRgD5mES/cjBgy5LXHhVmQ1Gzs=;
	h=To:Subject:From:Date:From;
	b=VTYsITVXOsN6VcCDnid5rOZZfjjBMuu0JA85prJQfnUWUlgLvKoapLjNh4ujoBwMS
	 cnFTvwrxNvGiSH2EWUw+lJAI03lnc/3fxQslkdtAJGb7Aw8F1I5ur2ZT/kiKu5gcDW
	 gCDDYw++Mcv2gSq5J93tnbJUTGDNwF0eD62QKUlzlnegWaY+ev45tLA6Y4f1Of+av3
	 YE4vSzle13h7lu/+RpzogE+4CU8dQCG6Ujq1zyrgWpR6YHyz4+MrxzpQxwb+CyS0lO
	 dKHzT7uQgS8peI4osOZ2RyzHOCfGwifiBOueVcsxundxZMQIqQfzW3V5ydQQj8raaw
	 zHQTFXp/k7kPw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9451BCEB2E4
	for <ddprobe@lists.linux.dev>; Sat, 15 Nov 2025 18:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176322965359.22371.15044862705153499213.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 747841b53ca22d2036b37b66c6402994de4b3ad2ac67169a7370322cdf14fb5c
Date: Sat, 15 Nov 2025 18:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763229653
