Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25C8727E07E
	for <ddprobe@lists.linux.dev>; Thu,  2 Apr 2026 08:45:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775119534; cv=none; b=rT4NCWvidbACHycGh3wnM+/JtYkj+zZhcu2TaBDmYUWlEXDJGAjfVlaiZVVh6KtqYBFZWaCyAdAmcHsjGEkwwiD0NXfyUwXgjOPq5fIK5LR22ghlyuos/R9i+4FT/cdLSD89ZMWrow+w3m6+o4pAkxy5zqodc7K7rtmgrRyZLy4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775119534; c=relaxed/simple;
	bh=BziIxN5k+CncCbwN2U2znQmzx89uGo34rc/O2byajpc=;
	h=To:Subject:From:Message-Id:Date; b=uefuk0puukssjYP6clgdFTNLZmEMHlEFKllr+GRxJ8/pnEj/kuJYM53ro3Yesu93HO2pe1EdKKl5kPgkfhAzgKaYZs6lyqVtiVWYYTPSGA7oBgSQBelolVzOBbW7fNVnGAgYrtLzwAVeZTr8vNPWjUxCE/ieKWwYeNqpD41vk8g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oR/DeEEM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oR/DeEEM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0445C116C6
	for <ddprobe@lists.linux.dev>; Thu,  2 Apr 2026 08:45:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775119533;
	bh=BziIxN5k+CncCbwN2U2znQmzx89uGo34rc/O2byajpc=;
	h=To:Subject:From:Date:From;
	b=oR/DeEEMDpoK2rICf4QUB6Yoabt1jAvSktztgJbbi3mhynhrSQU0hhAdf0wlwjOqB
	 irHY5eVN2gvjLqyI1qCmYlHaH16vFoWNjwEpAbdrMOrfK2HIVrCmZMnMyqXfC+s/Qj
	 VadNadw5XfR/tROD3EYz7gNmckqZLTPR26xYzTlwZprJ0WEVO0VZNwTcdQK8fHA5hu
	 ZnY5sSQ+nUUYgIgwJYJ0UoDHxU6Aqz6fb3+EDBcYyQS8KqzyTJ156fuhAqNs5Fkl4g
	 Eucj3I0gsARZVxhJVjdOn2iyv76f/isuW0WCm1s4N8k9ec9zsZeoyp4Rue3sMtd/kS
	 FBLnJ8xcl5N5A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0284CC6B30
	for <ddprobe@lists.linux.dev>; Thu,  2 Apr 2026 08:45:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177511953371.30384.14454368186149189724.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c52f277889a7d096c13d3a524ef0fabab2b0af2fe22c6518ff2c5b2ae2be40d6
Date: Thu, 02 Apr 2026 08:45:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775119533
