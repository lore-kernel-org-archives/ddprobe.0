Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 073682877F4
	for <ddprobe@lists.linux.dev>; Sat, 28 Mar 2026 08:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774685094; cv=none; b=pFiWZAZXX+8c1tA+CrswuuPgnKl1TurhaX5wJAQw1zUU4zRvFvlqlFIepbpm/GYaMTJNcrggUbAH3kbmt/AkKwKcimKl3dWNPwH9WjgsJuFX9l3/jK2HdXTU9DEVc4jlK6tcaPPU+3zlawVOdR341VK+GafB8gc+hEO3dHB8neA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774685094; c=relaxed/simple;
	bh=ad5Hj0+cJDXYY5fE2n6wTj5JkLeYlr6hqGNsDSe9Z88=;
	h=To:Subject:From:Message-Id:Date; b=THHord0o8jyp+s/ebaN3zVYvb04cQu9vPX8zp2D8dbxqMmPg6hFwyqKTBdUKcG1ymzk2btqMbK8yPPWBsPlP8vxAjJhY/HQ+142XjkcBkkkX6HN0d6IomyysVa2JsicYqiohikZWCJwAFGKoHSHYE9qqaqxMuL0bq2gsLKrkkZQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A0gFNJ5z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A0gFNJ5z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB912C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 28 Mar 2026 08:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774685093;
	bh=ad5Hj0+cJDXYY5fE2n6wTj5JkLeYlr6hqGNsDSe9Z88=;
	h=To:Subject:From:Date:From;
	b=A0gFNJ5z+eObNHF98A571BjtxuLb+5SbTqVHVHFsEl5NStVGDdMN3m3VGlmtEGiT0
	 nSqlgPx3guE6AVh3fAtpxdl09l388AfGVVhWmNy11tpTYoJfKnVm1q8b5BSAZoFI4y
	 AGi/v0dulr587sHlzuV9/DYBP5YDZ2WVrUfyR0C/zklLqno75u03QyZF0pOw7bZUyg
	 YehmKFLOqfgvb0y3s7iXL0CgpAEtTIx1l4SGPYmMi19ADRGQR470A60R0lLLmO+lzu
	 6xdn0NsCLI+vjhJQV5PsjCwsnISvOoHHqZR/AwmVxB+wK0FKA3SDwmw7wJ8hU/SQIc
	 pJOl9LSnFV6jg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9477E10BA45E
	for <ddprobe@lists.linux.dev>; Sat, 28 Mar 2026 08:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177468509358.4308.1695852149462333234.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bc07398377c2b04ead4b7e600d952d6bf0684ef0107aed1e4662e28cbf9ef608
Date: Sat, 28 Mar 2026 08:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774685093
