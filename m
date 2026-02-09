Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 162D2258ED4
	for <ddprobe@lists.linux.dev>; Mon,  9 Feb 2026 03:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770607434; cv=none; b=L9jNxaNUsBJgA44CnzQNT8y7NB7duLbWJVu8jyNyo2VJY5rnpYgJYApRsx3Qvn0dzJqVCw/u0d5ZxvgyqSWtWsREWRMq8pKvnXFqOjwcWw3yv8NOVXAEIJ6bC/IGYcbfEJH3P37SNOoNMC95hby6IdwITX5b6vg+P/3qEMIPPys=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770607434; c=relaxed/simple;
	bh=hiC0ce5CK+2aRg1a00Aisv6HFb/46HFFvCaGGRNWZck=;
	h=To:Subject:From:Message-Id:Date; b=UR4JBVGx8igr0LHrXEKlqylCgvNkWTdGN9yuyPkrRdU/115SgOTREaeuwM5dDt99hILgcin+3iPRWtbGIcblNvfotck4Lotsh2qGPsnEnNq46UPaq9hEQPDAvQU8Ituz1yvlCi6Rkm2NyEofpOyEI+fULuHtw5hUjW1se7At/Zo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nQolj4vt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nQolj4vt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFF4DC4CEF7
	for <ddprobe@lists.linux.dev>; Mon,  9 Feb 2026 03:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770607433;
	bh=hiC0ce5CK+2aRg1a00Aisv6HFb/46HFFvCaGGRNWZck=;
	h=To:Subject:From:Date:From;
	b=nQolj4vtJjoO1kH8Eh/VC852X2OEgPRwrYID6MY5/R8gTNKt0CHGTnT9c2FY9X8Yi
	 D1g3U4XNXXx1XNh9E8VICWc/kJ7ORdhxZSui/xyR0sdm0RdetHvi1sDlcEO34LB+KM
	 KwIYeQ7gyyhWaqKs1+cWqKDTqpSW0XJxFjF7An2+1pX3FNjRIjPd88iQMWRWWrMmTe
	 JbfGAh3FZ2r5F52c9aLQcCkR9nR9B6jNhEVHfG4XUNbNkDxIATNWRPYUS5zZDEnCnk
	 FY5awfSXo0fyrHnLIVUIpL+C1prQuKrhspYQySdY5rNyMmHeCIC3e2JC/H6ISlB4ti
	 UhmwN0VBjtwaQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A224EF06ED
	for <ddprobe@lists.linux.dev>; Mon,  9 Feb 2026 03:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177060743360.23727.6445746127806552873.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 153669b96ea4396a7c6f31c23fb239fca42ca784a71e8bf1d88ed2f0c7f52d40
Date: Mon, 09 Feb 2026 03:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770607433
