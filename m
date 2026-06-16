Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 218ED472798
	for <ddprobe@lists.linux.dev>; Tue, 16 Jun 2026 18:56:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781636194; cv=none; b=PuZ9zxST8K3cciwPbKnJieH9+9ixtMoZsuyJXJEXWjeECBxXV3e4843zyLLbogIzkVD0rEEBq5mMu2dIr7YYCtioGDbCC/egBm1Rf7onKqCZ5s6vx/Eyk2bpfEQwPAh2XqiZGFuI5XbAU3d+gzM7uZ1wv2Qq3FjEvn673hhP+Zw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781636194; c=relaxed/simple;
	bh=L2eEYK+X55ah0OG1isYJWji9KeL/+iTAq303NM4FjNc=;
	h=To:Subject:From:Message-Id:Date; b=ozFRDAuReVJ98JsWd0SeTRJtAvbRFJgHgTxOHdjkl3h8SiaaCz7cpvENB7T0pUutU69Diz1juqBCLT7pLoWXamARt+cYmQrNDLDQMXEQzp0mmUTsMujJcZupMSQ5jdB98OCn9H4/5UDyXO/5Qy8LRdNZR4KElTg2CNKPJR2jZJ0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Auh4FwrH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Auh4FwrH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C53C7C2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 16 Jun 2026 18:56:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781636193;
	bh=L2eEYK+X55ah0OG1isYJWji9KeL/+iTAq303NM4FjNc=;
	h=To:Subject:From:Date:From;
	b=Auh4FwrHGARKHaD3LItucqhMK2BEMISXsV+KXqNUnRvmlykMhWwofnRkqDiKOg2K3
	 btijhUGLZC7U6bKnYAy5B7OSiiT8ocy03kbdc6eV0tTPG2vwg4votwIAIynZYkIAIB
	 CU4ge6CB/8JAduNQcClkjlzwRo2hBmin4jylgZD/n7ypPIWO8H2gYnLnB/7HGHEJXA
	 usHILb4Tp4JfIXJ7g9j2BPX+hffYTfsJY7dLG/P3o9vOq9ABXdvy4k3Ltlls0cuE5W
	 CCXhTR18naEi4GWwyqgQaF/vaEzcZ6drBO4VCdIIDKVQLLUGRm24T8bzgnKliLImAR
	 S1ZevH+0ubV+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AADC6CD98E4
	for <ddprobe@lists.linux.dev>; Tue, 16 Jun 2026 18:56:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178163619369.12643.17439561279511445741.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 73848c14ff956c8d503449d3fd82d02e3c36a77633329505738cf180d600ca45
Date: Tue, 16 Jun 2026 18:56:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781636193
