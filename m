Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E64E718CC0B
	for <ddprobe@lists.linux.dev>; Tue,  1 Oct 2024 17:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727802354; cv=none; b=ZL1xVU/vdknhiYPSTJ3dEsN9TQ8drUV+0PnIJu9DOh81W/7Zv2eDAjomSzc9r2MtEP8pgE7coM6sPzs1h31SQTbvvJ+I9/hPEjzhOTB07FUb8SoRhYLMoCMcdQBfx5P3INbL7AOMxAGYLEeARVkjsSS2XOYecrqcdUUDGs7Kqus=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727802354; c=relaxed/simple;
	bh=8Rv4vUNh/2I66DedUnUc+pVnEWg9V7D3LfTlupGOc7k=;
	h=To:Subject:From:Message-Id:Date; b=THWpGUOvW0uC1mgt3aTbd3LWMzxJgl4jUL2+AE1JJralj8CMsiLErJUCeGOENYgLkelIno8p9AiF+qN/m1j4sKBOt5516fk4fJBOLpj18xWd2Dk2NTUr3Var9lHblPIxvP+EAdKMJNRUOQ2JAWLKbeBEeLFnQqm93jnK2llnQvg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SZwnIAhI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SZwnIAhI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3ECDC4CEC6
	for <ddprobe@lists.linux.dev>; Tue,  1 Oct 2024 17:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727802353;
	bh=8Rv4vUNh/2I66DedUnUc+pVnEWg9V7D3LfTlupGOc7k=;
	h=To:Subject:From:Date:From;
	b=SZwnIAhIh0tYWtP/Q5wss02XPzcrrtn+M2/vTmxgBpMzbJ+qPm86Gka/gc4hZ37IP
	 FQKKPHDdowC4q643ygmoBGJCkVieLkIcRUuaYNW4se3tWOJm1jmIPt1rKoPR8TANjF
	 VyY7TrbzCl6gtqD7acH+PhOgoJzCNR3sUqXY2e8KbecU/p37Ey1cQBO5hGbXU8h7Go
	 nOujUI/CxKW75STSukdUeKBuHJdk5meGeDdS9Rxt+WskKNLEFsFvr3dnuBdY6+W3SF
	 QwkAsUwj7U03r65o02uwH7FeVKOfd9/A32064K+flPmQLnwr2xIljZNSkMz6qAwl8u
	 wmERHmlJUhI2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BC2CCEACEC
	for <ddprobe@lists.linux.dev>; Tue,  1 Oct 2024 17:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172780235362.2700.2264593842655615438.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d87b1ae7363609e0ed7afc0dd3c7f54a8d27fc543eb39b9c6ac1f880261cddf9
Date: Tue, 01 Oct 2024 17:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727802353
