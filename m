Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24FB93EFFAF
	for <ddprobe@lists.linux.dev>; Fri,  4 Sep 2026 05:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788499834; cv=none; b=TtYNa8QAIuaKeow4x8E6fzobOVUI6fGAdm8BAyj2GXjVt+MGCaAkk94y3I6KpFr+wE8LRWIY3bqxx53XMjBR+ctTki8eOnARM7lySCdzrdBy7CBH1kcZcuyTeNb4sjhHJCM/2RFZOxbG0DTo5yFG4P7sbGl1dlW9AX9GGOnA+pQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788499834; c=relaxed/simple;
	bh=yml4vIDnj0xqOIbM2IILX5nn1+IQEv4lybWqTUbIrmg=;
	h=To:Subject:From:Message-Id:Date; b=FLx4aK9EH05IxCqd/6ssJ87ArcBLCW9XzYsYBxR2uQnktG3yQJR6MTi3Vf9YMSsIgL+H6ae2nnQSJ7hnMw1TPFN8Y3tEXP6pdidnmRUnXjrySisKhuHbf0Y/557peg+q/NXuZ4fRiCzhvIasFTz5L3Cu8YTQTejqPbQ2hK/Z21E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VYjTF9ng; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VYjTF9ng"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D38F9C2BCF7
	for <ddprobe@lists.linux.dev>; Fri,  4 Sep 2026 05:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788499833;
	bh=yml4vIDnj0xqOIbM2IILX5nn1+IQEv4lybWqTUbIrmg=;
	h=To:Subject:From:Date:From;
	b=VYjTF9ngpbVKfy21eZFzTggtMK8fAMHY0pOQPahmpcg/M87nYb7vcIaoHSbYjM1ct
	 JtUOe2IzmLlo2K1C3Pxu7aRxr2BMM9rMek0tFAvzxiZL8bYU24H3Yduhu6DAZbykVr
	 YgMnv8UcfRrriy/XCgECyKLenOy0iXyCPXVb00jP8YYrOngO2ocHJjgNYx6rUiVvTJ
	 18lBTds3vCStOP+ueH3J7tJaS69mqHtj43PV3fBlhMt48JPbtlsmS7Ot5/Zi19ZYCL
	 GQ9ERaeKpJT4agPGm+q3csp0EkwwAhhlzmJxws5FYrlgDJ1mTi2IS8piI9Q2gdVz6t
	 CNwsf4lfWHBHw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEFB0C79F80
	for <ddprobe@lists.linux.dev>; Fri,  4 Sep 2026 05:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178849983370.21985.10434037089552734108.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0a1864c3bed38a9dffc9bbc412e3d5dbda3d2716c7462b8079e7c79875d1973f
Date: Fri, 04 Sep 2026 05:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788499833
