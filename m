Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A804326BF3
	for <ddprobe@lists.linux.dev>; Tue,  6 May 2025 03:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746503395; cv=none; b=YlztFkwtRxWxg1iPG84Nsk6T/ZRzSlfMJMJvWOQ3oXUCqDtTeb16COC/ekIFy1E1l6imsdSXUkDpR2lOjdQWdneNU3rSn5KfyamFFpR1c+xhgOxptykBRP7yorR5oqEHRnjRbWuikVT+90c+AMW6qbFepVVOg6xtfpHnwWPVqRE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746503395; c=relaxed/simple;
	bh=U0nN6RYKOzUnyqQvaFTVr/JIC0q2LPYvyM9Dd2UIM6o=;
	h=To:Subject:From:Message-Id:Date; b=Wp/OzBWncKHHb6sDGMxEQ3WJr4W5bjaZ8xH8qqy7ZVt7lHpJckx14mdP/+xjkOeDS/MaFgHurdLDavBlR3isFwuDLnfqWEcviaKitUVDdYo4pcjcTB1CI9xSWMeQaLfxPFHcGgq1kq04qpGYFg3V1j9Sti6u2+1kvEhDoAwSUcY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TiPDMR4a; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TiPDMR4a"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A394FC4CEE4
	for <ddprobe@lists.linux.dev>; Tue,  6 May 2025 03:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746503393;
	bh=U0nN6RYKOzUnyqQvaFTVr/JIC0q2LPYvyM9Dd2UIM6o=;
	h=To:Subject:From:Date:From;
	b=TiPDMR4aujI6q//cVa7TwMTa3ZCSYZ87dOL8LkZ6ymlNmEs7tKQsWawiVT3Y4KV+7
	 4+9Hpkk2HDSPUecIJd0/M0k+lgtbXc3G5pmxeJrTIvaiQzw2Zepr59eYbxdrQbPFGU
	 6v6opBR9W+2c8FOpofcQo04WCL7bHarehIrp75J4nkUR5xtUIg6WACmWPRUbFSUQRP
	 tZU92ig/IOe3VXaIVHQnYw2dadKQ2cJDhYlu1GYxyc8z75ol5pLc+KnRKTCE831lTg
	 xgf6cczPaF0zegzoPIwRohnaPW37hWPHNW9dVaVYuyFTfEw2Qjm6zfl8Y2Y1rbiZqs
	 Ch2o8R/0bmNvw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EC52C3ABBC
	for <ddprobe@lists.linux.dev>; Tue,  6 May 2025 03:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174650339357.15108.10211829963909827909.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 19d71bc42deebd096df68c76e891acd3d34a3927e2792f075083bfa8092564c3
Date: Tue, 06 May 2025 03:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746503393
