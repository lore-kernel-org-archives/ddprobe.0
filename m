Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38834169AD2
	for <ddprobe@lists.linux.dev>; Sat,  6 Jun 2026 08:44:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780735474; cv=none; b=pQzKSzQOga9P0J9nQOntShWPbOLVMZ1sA1CxoEthhD0Fxn5HPzhFHAEh5ok9ZWcYBrdwKQfbnpdpleYaXCccwlBtHfYISLYBu0XgLqe5RTWh5SeOkCZKozSur4rxJHyKx3viz3q6QQKwYZHRlC3ZvxpGwbYKwUaI2/vNWQd23Lg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780735474; c=relaxed/simple;
	bh=AgXVFsSFd9gHk+soAdl3DzzRFzUVYpiMmYRzixUzwFo=;
	h=To:Subject:From:Message-Id:Date; b=MnweKB5/cs7o0P012oqF4VhAWa4EBtk7EU2WXmAzQdciSrlrdNoNe4O8Q3dIpnUPHAyYFlxmQVqEZW1hI/ir4xYmIisOvcA1lnSBo1ni8rwhrT+XR/hupuAIpWugXCgtDzrGIs+YXVNnj0YhPELc7KTlYiDJSl/SVrBVCj2ujvs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KhbcjF+B; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KhbcjF+B"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9C1FC2BCB0
	for <ddprobe@lists.linux.dev>; Sat,  6 Jun 2026 08:44:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780735473;
	bh=AgXVFsSFd9gHk+soAdl3DzzRFzUVYpiMmYRzixUzwFo=;
	h=To:Subject:From:Date:From;
	b=KhbcjF+BrsVtoY0c0ph5wLPJOIjY2LVwH4sdI5GpX9DEPkSFB4eDoiz+QKiDyJUrz
	 VSl37wx0DMR8XmS3wafEFcIJ32m395WLDcR+Pv+PatvAbH5qw9tOzuqMOh4AfAmcCp
	 thrAB0khd4uAaqO0n4eXD6D9IN17DEvy3wYHxCZ6qovNQt19Djko9Ci3Dr+10ToMPG
	 SFO5SP3mh6OLK1xfn/6vbfB+wjeN9rLfxtEBYlwIwDImeIoNtw0SJAVM6uemM7iSdJ
	 rTAGV0jfhnPLxmAQtLPwochcmtgEyeS3fLGwODOadOwRooBz7X/HZ98QKCvE5cPB9K
	 mS9N1yYAdyPZw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC7F3CD8C85
	for <ddprobe@lists.linux.dev>; Sat,  6 Jun 2026 08:44:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178073547369.25768.797017418474195982.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a71d0bec6cea5cae192b3f37a87070da7c8f552ccef662b314d9cbda0e088643
Date: Sat, 06 Jun 2026 08:44:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780735473
