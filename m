Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CCE7277818
	for <ddprobe@lists.linux.dev>; Thu, 16 Apr 2026 16:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776355654; cv=none; b=oKHSAAW+pP5+mZe8orjBegOqAJUXvAj1ZHYlCUMuIf9qsdHluUVi9zlfrtKK+c4S7TWb43BCeIdH5950WMABnqi/xKrdSLmj+ItH3fw7FbgHMrVRh4b8Vr9LeUvEbBX9jraHcnRUcKB82+ZlXy4z3nppwt7JgvhW8Xw6izOez+4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776355654; c=relaxed/simple;
	bh=aJZA5i1C/ULmDA4vLnZGx03KcLtkjBosP/MzNAtj0wA=;
	h=To:Subject:From:Message-Id:Date; b=Ef5w8ifmjNyiHdN1KqmmIZoiOgt3zGOCRfbxeuWX81ojC4E28ttfIWzzfhx25gr/PT8+vBrxoMatuEdU1Xu2YMgsw5Pih3iqIz9RUoDzHW0qdHMdrRr6wExwoG0wTGhcKCSFR3gaQ7Gvi1PwOhBns+UBRif/emIvPlk6qGcU53Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Hbk76UuH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Hbk76UuH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE169C2BCAF
	for <ddprobe@lists.linux.dev>; Thu, 16 Apr 2026 16:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776355653;
	bh=aJZA5i1C/ULmDA4vLnZGx03KcLtkjBosP/MzNAtj0wA=;
	h=To:Subject:From:Date:From;
	b=Hbk76UuHY7gnN/kjdOOgR/bqyPnidkN2RKSGi3WVrX5Fz6ylOPZaJ9lLmtS+Cgvjp
	 vw/Tn8bdoy/ZNVAq9vks3RYQnoZG2ziSrCO9WgMjcsRqUKCAai5yxpTFNRUOrJnmQa
	 dSCv2lAbDlo7/LDxjFp5hjgWrg5wJAQenq1pfKYK3hC4fv8XSyVg01CfohaseAmV6A
	 RgMwAOL0Rx+4Oewi+BIzgbVQErUnqlhJd9iE2sjaT1okLNRffbghENXuVvrEVpQoEn
	 xWUQUjKZqGDGbA6JKh61yJrb1eXYZcSJCFXNK9DPBzj0ABO1nxYmg9DYhBgoA3i8XF
	 kbbQNeAuiSHAQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAD9BF8D760
	for <ddprobe@lists.linux.dev>; Thu, 16 Apr 2026 16:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177635565369.25910.13682488275139341672.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 07bdfcf4624a982d97a7d643f35f00d112469a8d0af2f5827f9433eb9ac9e6a6
Date: Thu, 16 Apr 2026 16:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776355653
