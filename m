Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 09EEFAD27
	for <ddprobe@lists.linux.dev>; Sun,  3 Mar 2024 09:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709458697; cv=none; b=UMZaYSrJVsrc+c5LL33J6OK8k3dOA8dyAs06MNStgZlkh7hh7cdnyYlVmgZdWUF4R4ZvS8duEKpzG2tetkrQ2NqbEHww2Z/Cr3VRxYL3+XpoHkRP5CNwpYrfrYTseYybYhdBSXgDYHTEqCbreVWprFiYAyj2FHs6RkVsPKnPhCE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709458697; c=relaxed/simple;
	bh=vZMnYs+sdDWzELDz8XJmSzBt7df4rErGQSCOu1tSGss=;
	h=To:Subject:From:Message-Id:Date; b=ZazDF0//ddBb3YiWHpKXF7Z5M89Xr0vTsbG//squLj5UMJKtbNVDXDuiWdoD6dVqja/ZrCdtz6SqaGQecuT7DFPB9woPmWRJo6vDGSw0c2v95xltCqHE5KUv265UuxUU/l+RaSWQF5znzVlqPgTzIfRZlxpEmQDq+kjlunZmA58=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ArV2lgah; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ArV2lgah"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 804F2C433F1
	for <ddprobe@lists.linux.dev>; Sun,  3 Mar 2024 09:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1709458696;
	bh=vZMnYs+sdDWzELDz8XJmSzBt7df4rErGQSCOu1tSGss=;
	h=To:Subject:From:Date:From;
	b=ArV2lgahWQ1aGKVA+N0tmHkYmc25awwnCsNmS114zXNBhW8IlmF1fgoIJj4Yuvyt2
	 nwWllZdeO/4hBjzi3MBkgoYpWS5z5Iaj+TpGzNBsXDvH6f2vYzHRQlwTWBMJakCt/G
	 SssZJMsHRttU0Jx8iez9l6UpsI/EyF7m5wpTqO2dEL4z107jmC/W+iMvOlJk6i5uf6
	 AJuNJqFlSoAwgM+WOR+7Ubg4TSO+HTENLiRBWsHVEj3fjoPS+8Bz6nAS8xlk9JKifr
	 p5zSSAv3MYzEq0gkJJtca+6vYdOOcX0tan1qUSIrWZMrS/E1pHi29DNqkBvVTMcEdR
	 COxhNtnmGl7uw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 65B56C48BF6
	for <ddprobe@lists.linux.dev>; Sun,  3 Mar 2024 09:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170945869639.1742.7611568599301977031.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c72677573487c17aa2ecc0dbc013cb09ce6f7b7ab7e653d3d9b8c9f88a9e1e49
Date: Sun, 03 Mar 2024 09:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1709458696
