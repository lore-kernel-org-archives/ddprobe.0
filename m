Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AA1B2F46
	for <ddprobe@lists.linux.dev>; Sun, 25 Aug 2024 04:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724561754; cv=none; b=AsX+3ika4JU0V2IhpQq48avFrWosKm3YYhyS9gdFXssHNT6zdcKQKzPPvDuArJ7FzXPMHjCaXqfpU+LpEaKp3m+UT7qR5vrTZg6qq4l2i6/EzzZx17dFZf6hxi4Avu5zqD7/J2EmIsR1r4Wrrkne4Hjf2r0IdgOCbHvMuY8Q4yI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724561754; c=relaxed/simple;
	bh=cFxM2GN+sYiYmrlD4FuCZmSh5xoY8FyELIpu9B7YQ3k=;
	h=To:Subject:From:Message-Id:Date; b=BUWY3I1iDYId4qXThtB84Em7iz0ZspMI4ZFWL+TX4Hj1crJ7ADwR/Tn+UPKYHcvb+ORKYmMT2NdFcshrF9pxCxrTY3JkS8NHwfV+10K+RKU2WB33InLkzNyrhzlflpseAma6qtq9ovoIwSu62/6gXBMAmDaSmF3AltOK3zrVkdQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N7OZM5RG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N7OZM5RG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B302CC32782
	for <ddprobe@lists.linux.dev>; Sun, 25 Aug 2024 04:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724561753;
	bh=cFxM2GN+sYiYmrlD4FuCZmSh5xoY8FyELIpu9B7YQ3k=;
	h=To:Subject:From:Date:From;
	b=N7OZM5RGm4uVrwUEA3MCC+KX0jbzR+W6B0H0mk/p7ZLV2b+JhQ7bLM1zjXKr+IsXV
	 1qxZ8D7434kFVRym9U58Bqdvx5TQuGNCFVcdnpuFqa6BKwAxKTjpGm/xa6bqdzE0YA
	 de9Wa1P9GEKyPqFrLIFpC1DqUDzKlfCPl2WKcFIbzpl/KWg4LpgJMT/gwy/NypKH4Z
	 LNXXdHhEHRanIhARg+VsnRzLQ0piT9jGlZwnXB+lPS1e4hvsTXPMru1IX8eRBXZPSi
	 JyB9rdhGdlu3q5yJFJFG6fu7XF0gOSF1J7DWMkcp6/fybM/6dBjEuxjfQBQc9nALWP
	 znFBq17QPSPfA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A29C5C5320E
	for <ddprobe@lists.linux.dev>; Sun, 25 Aug 2024 04:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172456175362.19323.7674955109253188569.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 42cee31ed334826d53050d6556c8dfef98dea22db0f439d5c7ad27604c18a3d1
Date: Sun, 25 Aug 2024 04:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724561753
