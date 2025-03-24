Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 640EF19BBA
	for <ddprobe@lists.linux.dev>; Mon, 24 Mar 2025 04:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742791794; cv=none; b=Qwo9Rw7WmDn7XAwfqGH5SQPVEF9mkjfcO6Lfc5zLp0thIte+L5gcz+l9ls/kkzN30pVwrbAJ1vqer1TX5nxZ+M7MrBnmzMuBG+dpamdh5+RSla3I1HqyoMNxsyN/KTtQI2sMZVcKdcvonKrESrwuSAZ2LJQ6BuflF8VnTHjSW0g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742791794; c=relaxed/simple;
	bh=IvwbRAazDZGWqROYN+eElOuBRaI4We+jioAWVzuuftM=;
	h=To:Subject:From:Message-Id:Date; b=SkrFDAzwtgaxacX58HzpyGO3/91txiADyT2XKgSPHqZWIZyOASUBnYZmP8YMElc1Khp+0s135QeFFe4NlkACW2oV/wmeWh5YVZnUB2E0RrwVZlGnrQiOhfo3rCr3sy1OrXFDMFFNNl73gqgK9QRX+BZDS1cYUkQlvTa+3WkekAM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mZmIOoWS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mZmIOoWS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4444C4CEDD
	for <ddprobe@lists.linux.dev>; Mon, 24 Mar 2025 04:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742791793;
	bh=IvwbRAazDZGWqROYN+eElOuBRaI4We+jioAWVzuuftM=;
	h=To:Subject:From:Date:From;
	b=mZmIOoWSqvFHAH85qPw4Mhv1adein8vWXb3rBOh2/xOw9jekCm4SJSugTGUt9KMdV
	 V/MMQR6J8SHbMc+qJhn6iSggmYyM+w69w/C6DfDIUjtBkncoOIYm1MlW/29DM7ypQn
	 Pypye2HWMGU9r8Ww614UgXt+yMRKpGBs0kjl73RBeYuBsxb45FqarwOMO+h2yJgckY
	 mvtNsb0PWGYgYbX7xXV3ATcV2Z0vu/tctAQQpyLJF0izXF0ckageupN0uloErAuMUT
	 wL4KKjs8P1UfLDZVCzw8WTViBYzgONyPmvHEqz9uowGub27NHSeJQJs/a4lfEgT+Md
	 q1RWarjam2w/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA8C5C36001
	for <ddprobe@lists.linux.dev>; Mon, 24 Mar 2025 04:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174279179368.16805.12664573918674932668.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2c727a9f9c39f28f02278e519eb62332e8eff3747dc8303bb8d4f47d6144550d
Date: Mon, 24 Mar 2025 04:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742791793
