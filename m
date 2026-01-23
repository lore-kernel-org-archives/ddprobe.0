Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A44F316919
	for <ddprobe@lists.linux.dev>; Fri, 23 Jan 2026 06:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769150034; cv=none; b=PKVnVettnUBv0/088IenN5ghEnqXVbgyxVG5M/VTQXnDVZpoCGI5RjVrNE8eK6Bm8uj0m+lmwaNe1+ADLUUwZZzG/WfQYTkMbrrwgXnOknZxKPmgGLoGsDmJPRV4rQ4NkcEAidtJs7AEqfdu333ArDDH7g/qz5qWENMIxCJ6emw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769150034; c=relaxed/simple;
	bh=MPAa+rPWqjPKSK+3W9AnsgC9b8Kci3mnmTzKhaIryYw=;
	h=To:Subject:From:Message-Id:Date; b=VLQFdZ46YBS9k8W206eqQVTbY6okLNDeBjnZrqXGMC+xdFLVnqMR4PUF8nFs7yDMayZ1GfJ1VgfSva3fW/sJg8IDH8NMdIk6cudWfO71uwCPOLtnEo33A+IT8uz4idPYpdKv0uiMrtANii54u/HrmJyU1eRCbZzQFIKoExVFa+w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r3xIeqCD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r3xIeqCD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAB3AC116D0
	for <ddprobe@lists.linux.dev>; Fri, 23 Jan 2026 06:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769150033;
	bh=MPAa+rPWqjPKSK+3W9AnsgC9b8Kci3mnmTzKhaIryYw=;
	h=To:Subject:From:Date:From;
	b=r3xIeqCDeCTHqZxOxeqk+UsuS1/+t+6djPR+zv0/qUbLpdCQwnsXnWhCzNFFe5vdz
	 WCEvYa90hOVqYuxox/SCw9bEolnqvg3oY3PiIXWI+yIBlzb4NOBlbkqqlcnm9WwHwL
	 1ogaTIqrKELrV6JL2xXOmm3y40EBYo154BDNVfGLCqWQEio7vk3FYHC4inQ36LVwlw
	 y1Jw8VpkdrIoHoWO94zqh0Q3rM9GhsX1hUFSSvp3sW5zrn+W0RSvPtR43+OQLJurIl
	 X3hdcdSOgNxBVzkeLPHciINz1THs9z6MKWhNEwaaXKd3APzNzJdJkFHC9BNMOHC6fE
	 6qPt/MhR8SJ5g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93530D6CFDE
	for <ddprobe@lists.linux.dev>; Fri, 23 Jan 2026 06:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176915003358.28794.6715244102015141593.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f994f8413e296cf0a94f6e033350001b066bb357ade91efce5044ebe54f27e4a
Date: Fri, 23 Jan 2026 06:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769150033
