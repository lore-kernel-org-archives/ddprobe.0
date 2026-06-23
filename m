Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 304AD1C5F13
	for <ddprobe@lists.linux.dev>; Tue, 23 Jun 2026 04:46:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782189994; cv=none; b=rb5duXoAfYYF+DL4S/OZ/0zHs6o+0kUQA+CX5bBuq06SumF99921fde1MLdVDuOurWt3vO/X9Eww7XudbvzwW3IwkXvUtbpbiFMfyuU80529Nr4zq7VIfTyMQ7ckmpAtJDrnZcy9IAXug7qQcb2kHMe3/Z+8HWTf43cAGCX88Kk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782189994; c=relaxed/simple;
	bh=2R3ooZwyEXd0CYXcM4wM2HaOiJgCf17Y0A9AdYBFIAA=;
	h=To:Subject:From:Message-Id:Date; b=Gmv/zu9eUHAKWD87jZUrpJS44W4Jfr9YCnWSgSii7AlVPtU1xGYoMxgdb0ylz91r218txiLV529G1dBaI8M8tYfWzphDsTpRgtVCIEQnRwPq6NNYCvsgTio9MQGVq/cqmdhFHfgpVFhjFGsdtsJWJANFu1+DDPyjKzShA2K03J0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CLNrmGbX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CLNrmGbX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2BBFC2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 23 Jun 2026 04:46:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782189993;
	bh=2R3ooZwyEXd0CYXcM4wM2HaOiJgCf17Y0A9AdYBFIAA=;
	h=To:Subject:From:Date:From;
	b=CLNrmGbXMRzfVKjN81+AjW9EQJTLqXFXQ8KHBTDTqRhwRNLdsqLxNWGUuYdkQl4Zu
	 bULNGHr77V3OR8Dl+yMlmGk194ic/3iFnoTDTCMKUJQa/YDAx+p0lz7XWu5WFqzUpY
	 +qsYahlbVj+GhoAT/q7E5GCS3kG51yYxQZocnHQaFJxRcUsls00/ReQSliu2TpHSzN
	 iOjXk/JazqSd9Szq2zKQ+RUfIoB2oXHziuXhR4ltPTvaRkbxUl5UIrGIzYGgNoueZ9
	 9xJgSSkVDfroU+miSJmQ0NqhZ6nqFirHn/0p+iXgWJE4sNu4+/d4NpkYGjQ1j7zVli
	 AHPb5NiPBoFjg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8FE2CD98F0
	for <ddprobe@lists.linux.dev>; Tue, 23 Jun 2026 04:46:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178218999368.31800.1384834922677362876.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: abf28646c46dabb11b99438b200ecdc6d944f0de48d5429514369d1c107143c6
Date: Tue, 23 Jun 2026 04:46:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782189993
