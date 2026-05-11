Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2556836607F
	for <ddprobe@lists.linux.dev>; Mon, 11 May 2026 05:00:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778475634; cv=none; b=OP6qN+KtIeV2UAJqmlFN6zcxcNZkCca8xEQWxrSyMoH2khTnOtoO9E6GriJHbRbp4QszveAOEYzVxFT+4aTAKr8XjxMH5tQZYemUqwmQ0SFPtkRGM06imbgyv8hp/WBiN/8zeb9wQqdMpRU1WGtD6R4MjhHVnwernvhMDz58CXk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778475634; c=relaxed/simple;
	bh=RThkAUYjWDbrQmZT+trRc4jQGpfaC2CCP3OohmHLWh4=;
	h=To:Subject:From:Message-Id:Date; b=lZ9hJwtB3nPQIYaoyqGmKRgHAQxba+NSNGEbjkrGZvYDUh2EQ8wW7zXR/ebhTzjfp30ebbL++aWIa6C+uS9jM2zXcNFtqIbsskQkwFFpQUoVbrcqWzDi3ycZBWv3z+3OV7Z5y2WMwfapq0fCxw51LtgzoQjbVGX4V5mV5zmIT6E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hsls9RcP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hsls9RcP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C47A4C2BCF5
	for <ddprobe@lists.linux.dev>; Mon, 11 May 2026 05:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778475633;
	bh=RThkAUYjWDbrQmZT+trRc4jQGpfaC2CCP3OohmHLWh4=;
	h=To:Subject:From:Date:From;
	b=hsls9RcPDmOAOIbJ3EkkNTGQocL68dUJKV9ka6KXCQd45PR5YFs/3gZNrbL6Yg8QZ
	 bsx7wGq47rA128Il4UNmPXBk2EiAkbxO9sHROFUem3dklquGio6rPMxBtlRTJoaQxM
	 ZxGZ5RxdB4TZqEt48Eo0n26zqXIdVm7kH0ZYKi0X+1B8sboHYCPpOqxsHFmiT/wTLO
	 JFfVcQfoPA+hrqMwNAEBpC74LDGJmDXa/t7UZohC+68O7oexMi/SsSc0fhSLK97RSU
	 aPvj8dh1G2XEYf6MVvIihWQs80ZPHZZJXHcm75PI36XEyNEQU6rhy9wuNpGOLWBFjW
	 DXKwPgyHaSZaA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B52DCCD37AC
	for <ddprobe@lists.linux.dev>; Mon, 11 May 2026 05:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177847563373.26172.5964511067157029418.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a45448a80ebe1428ad362f57ab1b9388bbc9cb4c372f00556b1f1908dc199b62
Date: Mon, 11 May 2026 05:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778475633
