Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7026C298CA1
	for <ddprobe@lists.linux.dev>; Tue, 15 Jul 2025 14:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752588594; cv=none; b=pnXsva9EsWK8Y3EkQxKcW/sWIgd9NWGd074g+GKFwqspdMXKP2IRAU4FzgE51vuyP91lI+wv8WfKJsoyqW2dXn/U29zhv4z1LqwBLDH/HvH+E3hH6AvN9CIARm1qVy/YMGcxFqim4wl2vo4755EI/9tOnrlO14utfe2onns5KAs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752588594; c=relaxed/simple;
	bh=imkQ5wnkOBZbtkv7hvgVOATBbucfodgd85h1VBjP2UE=;
	h=To:Subject:From:Message-Id:Date; b=OGKSSdJzHnfVx1f+xdMPej24IgKr/dc1IUl7m9Zu7IdLDNPavyOKn8ENTh2xWBqjGHO8SYzRJTP02p1mxkZVNDoH+xPiol97ejg5VY+25H5M9Hy0VBKXxM+rT3Pk3i/4m+/77tCakYZ9iSsyNA4aXXVMm6SaIaR6mcn73iPQjBo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C+89ZYeo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C+89ZYeo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F239C4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 15 Jul 2025 14:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752588593;
	bh=imkQ5wnkOBZbtkv7hvgVOATBbucfodgd85h1VBjP2UE=;
	h=To:Subject:From:Date:From;
	b=C+89ZYeo8/KcW04Z2FrnJFZJyhiXG/7cfFyhMEYKMJePPMsYRWmiYI/lVnxbo/vgU
	 F8DcGes+nL+3Kz1VlNcZ4L5pedxwwuUawe7sRXzJtdCvaGEMIVnRfSoR+JSRJTxRF1
	 YLJvw3ChcAIG7INbHVcwI2jDJmyVaS708xa0p99tc4jPyq87ZZRFJ630iDe/ZER8eo
	 iHlgCcGL1CLqDdlLjnyEEVrXI63sPsrOUA+1WJ9GLnORWK7GJW4HX42GpgG72Mkgxl
	 nGyfIzrfM194V5YLI9+YtOkOq/zFxhuQbNKsFmZ0WNzG9+0YhmbYMMi/S5DgldzFvX
	 Yk+RwtdoYI/0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91858C83F17
	for <ddprobe@lists.linux.dev>; Tue, 15 Jul 2025 14:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175258859358.17881.16340534334535677705.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ad0e1162a86dc7c0709f0f4879a1ae33c2fd285941c88be6ff52e66fc5e28cc1
Date: Tue, 15 Jul 2025 14:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752588593
