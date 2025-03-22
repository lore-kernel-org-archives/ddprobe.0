Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31D93171C9
	for <ddprobe@lists.linux.dev>; Sat, 22 Mar 2025 23:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742687394; cv=none; b=TT5lOyiOumpRCrf1f8t1AsdQbwAVm9Nu5e2xZAdZXmWOKeD6TetESIpE80BcvjaUZNmrWvlu+6UiZo81njx/m14ZQM1LbXHgSN/YesZr3TSEfTgCbvHOX620r4sBljnm75W1Bc6VjUWxK7994C2mExLJNnnEohjhvkGKFyybuOc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742687394; c=relaxed/simple;
	bh=oS3WzIFArplpeYye3Z5Jcu03D57ae3UcRjPvkXZKcMY=;
	h=To:Subject:From:Message-Id:Date; b=rvFN4Vuo2CzFiax+Q+cEhRcebfvkDwqDUaKN1yw85dOByPkmVATlcwKYKbjJ5lQscCk8HroM9bT6H3DHzZnndQ4r0FNdIJErfsRknYC4TYVeQ3Kf75pUH4wXUwfMFxomyqmICX7xcRbxHac42P2mCm9TYNtQSjb/MmH61D7JiEA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AUytwTP3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AUytwTP3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4A63C4CEDD
	for <ddprobe@lists.linux.dev>; Sat, 22 Mar 2025 23:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742687393;
	bh=oS3WzIFArplpeYye3Z5Jcu03D57ae3UcRjPvkXZKcMY=;
	h=To:Subject:From:Date:From;
	b=AUytwTP3rFcM9powuuJL8yDXOL/bqG0i+ckewXlXoCOR6pdRZMCE5NbG2nEtfp2F8
	 g9DRVo6Tg8aOM469uPLHbWxJPh4YTnGR/MyTVj1jyrw+JXBYjj/34jzIaD9jWOQgbt
	 wZJRvk71eC2bTk4UnpHlg9HSuwFoNjNo5hUZMC1PwTV/gTsjQ+Avs/Tpd+decH285B
	 K5C+PqLRf6DRBtQHNXHNhsBxJ9LsUvrEFwXQNYugda+R2OVulJhrNJUXiT+6SPVa+z
	 tQKOdvW6pOrWoBErEGzQLNXbfl0m8KPYfpn+UlsWWXlonVwXwcgrYlaRRREx4wDA8f
	 GaZh4525mAnTg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FAC0C35FFC
	for <ddprobe@lists.linux.dev>; Sat, 22 Mar 2025 23:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174268739358.1177.13274156850752038733.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2c38b7a4a4952e6caed9c00e68719b1d286ecbb21897606b25e1e78ecf3dbeec
Date: Sat, 22 Mar 2025 23:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742687393
