Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6880B3A8E4
	for <ddprobe@lists.linux.dev>; Sun, 30 Jun 2024 06:54:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719730463; cv=none; b=DLnlHwxhYANiSO+aFAVfa8iqkkBfhluAIe/yasQi/aDxOoka6zwfRZdZhGQkfe+W1a0znjMn+LEfDl6Q6vPXqNDZYAlFEPOlguxb7pDMPCLi8+w0unvGajsn+6LLHauFwJUO3tNzerxOxNxDMW+UPKspThrbwwhH0X5t8wptkTs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719730463; c=relaxed/simple;
	bh=nIzln8nLH0ntS9kL16fL+Wu/9oFlGVXDna8J+U4b8nc=;
	h=To:Subject:From:Message-Id:Date; b=CvJTGvlm3z4ENyYrUOavaAIqOqqplEPaXXftoRzdXJJ4CqOGHr48zhEyJ8f2eEfN9NIkpRJR0fTfAGXseLhVh5qnYFiML/3OG4RweGuJojYsAPviHjOmx26fo/LvSjPuzmkT46cZTcBTFu990QwUp6aABeqsVeEEPw9EVoptkuo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZcNzAA+2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZcNzAA+2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E0F2CC2BD10
	for <ddprobe@lists.linux.dev>; Sun, 30 Jun 2024 06:54:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719730462;
	bh=nIzln8nLH0ntS9kL16fL+Wu/9oFlGVXDna8J+U4b8nc=;
	h=To:Subject:From:Date:From;
	b=ZcNzAA+2sV0K7dWykjbzb/qCqHVzMrDv0Bj7f4n8M9R41q6AOjN73SIf8G/QM69fE
	 JXBuEiMUmoRHBUWpRIRJNF6qnlNvVSCdN9AhE5gDnK4fM2TeVl6/6OL3XIDDiM4d9T
	 BXzo5OAJhcFcwavEe4dpcR5z6eZcMAiOpsWJSAY8clgPsmaUnb2wrYJJqPuFR00WF7
	 c6dPDRHgGZXXP+Hu7jqESn48zScl7qZsIdRlhag0SHa7aXgB9OxOMy308C/lbf5TGz
	 TjlKVP1rG4+0UDapyzT7x7SGNl0eDlorOEnXu3ywxhaz8NrWZT1fHsDVnIeSRYN5cI
	 996OTQNf2R/Rg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C88BBC27C4F
	for <ddprobe@lists.linux.dev>; Sun, 30 Jun 2024 06:54:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171973046281.1315.12374557315669157596.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a1302a24e8a61e1488359df564b6faf8838709561be9ef468fdba275f2c09836
Date: Sun, 30 Jun 2024 06:54:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719730462
