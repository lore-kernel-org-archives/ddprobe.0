Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A0A9D208A0
	for <ddprobe@lists.linux.dev>; Sun, 17 Mar 2024 20:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710706096; cv=none; b=nDWOQUirEkSH5GhSF37w0qsX+6YFGlmLEV/9Nnfvjng5JfSg1vpCK0cALnfkoSYv/xlTiIVyEb8iA0yr/P7uIz+WrGg2YiXUuDE4RKnEyhSg+W3ZSl/8nQ7I9mSQqEkDtDCiXXcl8/AKIQX8a74wMgK8RQxJfZN+Q2Y4gvSacLA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710706096; c=relaxed/simple;
	bh=1qCbqKYE4p8ddGAeTLjbwS4i2QAAX10VxVvs7Rbps9o=;
	h=To:Subject:From:Message-Id:Date; b=maFM+qeTJzjDvhAkS+FjKk2YFjS0y3TuiJGFMtG8K5bYvtjvXSO6ISYOO5WqGo/0tJswoCI3STUDy0FXT7mxA/mmpQ6M6UD/u2SXs9HiTwVGiCtZ6Pfe/jR466UK8QeagFeSq9FwpUHyvDunxwT/WaqR41fDQuy54OC4JtYO1ew=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R/qIAiHG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R/qIAiHG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6F38AC433F1
	for <ddprobe@lists.linux.dev>; Sun, 17 Mar 2024 20:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1710706096;
	bh=1qCbqKYE4p8ddGAeTLjbwS4i2QAAX10VxVvs7Rbps9o=;
	h=To:Subject:From:Date:From;
	b=R/qIAiHGlhXu/zgPjPA/O62cSFd9Nex46aAT0Fj5Qd2Bj+g0cTLyPI1RSzEl1rW6e
	 F6yEOKOilA7IggplRzuxX48Q0+AcjhQqH0NM3SGjVvbcE6RrczYyw+++MJ9RmfyxNU
	 PN+sKW9Cv49wHPQruCEiYc/2MaUNw0IBW/IifKCaG3ALnvmeCc/vw2zXhCCV19FDyi
	 qsMMMbhYa9IMmbGx5FDLA9rXtQr0EpzktlayCYqP5VIy3ED9hswORmatPRYeKKmHJa
	 V8ZCEGFRNF8/TVzVmhk9H+KbrFYS7PVFu2lP1s9PEfEJ21gcLMfSuS+vrxkyNEcwTs
	 iLhz+0vXq2/7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5B398C54E68
	for <ddprobe@lists.linux.dev>; Sun, 17 Mar 2024 20:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171070609636.12984.13864871053399152753.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 992b7f1117c5acf81ee7fbf63f62c831932809e4d79b898e699d1b7a0e604698
Date: Sun, 17 Mar 2024 20:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1710706096
