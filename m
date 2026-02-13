Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 472D730FF30
	for <ddprobe@lists.linux.dev>; Fri, 13 Feb 2026 11:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770981294; cv=none; b=ULyvV5OkhhSapVqa1ETSf1xznzd5s2ATMjO7ilHSPZ8aUwEmEsc9ImOw5+1TzQr6C48Rxt7uiJ/dFij+a4HUW7JhIEdS4xvawj9yPjTQPPxNZ3qEa7bm9GvWynujzDNeofy9YKL3rXO3MSbcBh8svXKRasWP7So1YU+pICe6T20=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770981294; c=relaxed/simple;
	bh=dId3pl1UD0Ixw3fxR/DQXyJTLuJ7T1T3/LQVhtwgHVA=;
	h=To:Subject:From:Message-Id:Date; b=NO55x83n8k8sNWQpyj7yzoZwmOhrBg53JauGzyNPXyMxyAwp9zryxpaiyHnZk0LgAlEnHM0CXfsAvYTVBgNbs0h14fTjL/0p5Zn+LDEb4BhlF8YxKyBXGIJnzG0zhErsqTOOxw4iV7eFKE7oEEEwtTO1uxosw5yWFTjfVKBhXNU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VpEmzJi+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VpEmzJi+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE8BEC116C6
	for <ddprobe@lists.linux.dev>; Fri, 13 Feb 2026 11:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770981293;
	bh=dId3pl1UD0Ixw3fxR/DQXyJTLuJ7T1T3/LQVhtwgHVA=;
	h=To:Subject:From:Date:From;
	b=VpEmzJi+fsGRrMM8x/YaX2G3UlVGiT3WNT90eFPZubTI9PO8WPs+rZ6qok6WmFZ9X
	 ZLuYiID+6mIsn7LeAoab4vacn04LEdeIQKtx1GiBNLbt9XhuI5RVDAL3pfaZ8q67qK
	 o5gGc69JeBvIqtY+hjMfL8Tg9VcTz7DkXk8FQ1XGEzr5+/0SvpcIW0RaFHjk7iEwDf
	 7WqvV4BkKKphBQ+jakmdvD25rcV8Y061zncxLZn7OtRx+jatq2BzE+koqONVnX9cCt
	 soJCwea6pfdVDzrqhb6M6D/j3mdEEv041zUhBdPTWwfqr/H1RWqFypD0ryazxsedDJ
	 R0hO/dfkhPy4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4A9CEDF152
	for <ddprobe@lists.linux.dev>; Fri, 13 Feb 2026 11:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177098129369.17604.17235779946853965492.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ca2d4fd5a78c275ea863a831edd03a40504bbd6829a6686c948372d4c375a11a
Date: Fri, 13 Feb 2026 11:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770981293
