Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C3F73EA86
	for <ddprobe@lists.linux.dev>; Sun,  4 Aug 2024 14:05:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722780355; cv=none; b=ifdxSK6cj7DmydB2yQBg+Giqm0NH4ZaYkAAww5NrijdUCq1U/Oxj0CFWq+srE7sA2LAHoC0vIq1p2kwITZ64uW46+8CpjF5nDAa+heUM860NQ3JMTcANA0bt49alTro2NPQ0eHG3Dp2pfqB0n9SsG2EEDzLbPn5D9RMlTSWjt5c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722780355; c=relaxed/simple;
	bh=pDLQ2qRhB7bFHHsCJbfQ1edWd9dhBfmTQnuc6DDcR+U=;
	h=To:Subject:From:Message-Id:Date; b=X1tPwFj7OleQAqAv+TKMDHM6EHNy8Bny0/2X3/tDbk+XheeljcMo2UZJkRkFHjKVDRl82SIEi3FPmOx2Ug6TN6PF+o1IL0nSPkp0+5heJ1ITp/+1Q5bhUQ/NkgLbN05I0qaqHxdJXmeAFzX4vz79/zvDSenMKEM8h97vhibR9aU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bNrg72/8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bNrg72/8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADC41C32786
	for <ddprobe@lists.linux.dev>; Sun,  4 Aug 2024 14:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722780354;
	bh=pDLQ2qRhB7bFHHsCJbfQ1edWd9dhBfmTQnuc6DDcR+U=;
	h=To:Subject:From:Date:From;
	b=bNrg72/8jBTduz+cdFl7o0dnOx8pEFl4DaPksOs9dkt2D4NMqxqKm0bSIvjRXjkSd
	 I2TWNR7lNU89biYz6lHPGAfubXjzopKYaSc+HBBG8j80Rl1ATtMUHQqS1mV0biDVUa
	 DgA7XWYKBg9DuJambNW9fwrIo3RT9XZvyiCC/BeT0dv6aVmrj9MS4QAoxIOoqZZLR+
	 duJ06XnCUQ0d+Pge+AwfEnXie/wwXXiBDGbPPWbTHUuW0OvIihDiImD1RhFajanW0t
	 ziB3shtzSbaOP90zEpaOXHEtuLLGmxrcNNSahG5OyhP6pVJOPCdSAnh/tqTQTIT+h2
	 okaXi3ih2Rh1w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B932C3DA64
	for <ddprobe@lists.linux.dev>; Sun,  4 Aug 2024 14:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172278035359.7301.7254296094912983882.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b8008e11bee128621d8c9814331242323f469dc7f099861238eb4f639de0e8a7
Date: Sun, 04 Aug 2024 14:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722780353
