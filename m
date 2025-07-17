Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CADB2FD592
	for <ddprobe@lists.linux.dev>; Thu, 17 Jul 2025 16:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752771594; cv=none; b=gZUFhUy9ZWz3/EL6P6RPqICnThSDGE/HXxP0j8buglU5frJdkeODfyEuI3RGD4pWmPT+jMVep4P+rM+93t3G8Z6l7QeFl6T1no4Yp4rhabhn+p/pbaxR4PawmmskaszDjkVSBbK2zglFHvcPUBcc42dJiDMRMs6dXOwOTq7Hjas=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752771594; c=relaxed/simple;
	bh=vetOMHqcF7BBplWSd9qiI1ymCIyJtUn29s5VM50PKOc=;
	h=To:Subject:From:Message-Id:Date; b=Okw/fuc2zRIqj0uFflsPUdJ5WBIhyvlZeRGeiKrKLH5ZDMtH6ng72fWL8PVutQ46WZffamouJ7I5W+NtsvLlg+BX6V+qJf91uNTjcpVv8cZQK9GpJUKRXfIwjsNib67X8nWo1+Z74h19js1N5YsZ9Um8tcqBMHMiFM+N+KxzkdU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DXjt1WRh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DXjt1WRh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3374C4CEED
	for <ddprobe@lists.linux.dev>; Thu, 17 Jul 2025 16:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752771593;
	bh=vetOMHqcF7BBplWSd9qiI1ymCIyJtUn29s5VM50PKOc=;
	h=To:Subject:From:Date:From;
	b=DXjt1WRhePQpv9y+RSpPU/YuuYFBqREeUdy+yrbXfF+rN3uXc4z09PDxiSxOtf+Nw
	 JOkRW7U8ZKrT9hj/JexdXUkhOgYIH4LNpIu0nBbMPkLunFN+z7wOxlM24MBsDgr/5Z
	 FVtCfyXadetrTe9mhHHdwQ/h4dSykPhNvneZKgzTb20eYyfMOf31w/ckJqYX/2XuBz
	 uKNL3yY2uLaZYHCjMNSUTNOIxG2Dxi3NmRFa5n4+XPu7PnjD3lSXvWhGkHpzygJqJn
	 kuWmpivmfN+4kNHrpQAtg5oQ0Rv+wIM/xOc7m++L95Aq4V8NuIFYgRoGBXFb2afmO2
	 DEF9OZvgCR+yA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 915D1C83F1A
	for <ddprobe@lists.linux.dev>; Thu, 17 Jul 2025 16:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175277159358.12327.12113437804089300307.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aac4e2b12dbfd9c3895b0b8b78dfe94d44e2dac064a415c31c1e49d43ba53bc0
Date: Thu, 17 Jul 2025 16:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752771593
