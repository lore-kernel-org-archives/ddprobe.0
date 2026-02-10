Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 04D602DB7A8
	for <ddprobe@lists.linux.dev>; Tue, 10 Feb 2026 14:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770732834; cv=none; b=RE2xOzv1/eMzPz9WzGk3fJCZhTPE2df2y7h0eSM5GPir5Er7NdEx48hhplrBas90k8a+vqGL19bNm0N54cMUqpBNCM5I2WAutf7ZZLKw8E/Y+edZ+1sGkETe80lCQvE7Bh4dG1Iz8hYUgEO5c5RhLruzyWy8+7jAfpwndrftE7c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770732834; c=relaxed/simple;
	bh=Z2ep3GHNDnitv/wPUGCOxMQfYT53BS5D5e/8SG7klbQ=;
	h=To:Subject:From:Message-Id:Date; b=DlO68tMula/b2TzvQW5jLmkjeQeddn+wOvf+6fk6smTCuhrOwGrIAU2kDe0SIxt/sFXlPJioIOQW2rFsRErc5LTh1ZKR568j+PGxDB/Aa2/OyqaMfU+1hLQXR/xY9Fzm4+IRBxo4z7yICd3TBPtBkmd0SinDqobTQXNo+m3zRXI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tezvrlRp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tezvrlRp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5843C116C6
	for <ddprobe@lists.linux.dev>; Tue, 10 Feb 2026 14:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770732833;
	bh=Z2ep3GHNDnitv/wPUGCOxMQfYT53BS5D5e/8SG7klbQ=;
	h=To:Subject:From:Date:From;
	b=tezvrlRpkQVLLOByDJ/N+6DuKCL6LhsXScTGnW01pBLkwvwQpHlaS9lMWHPmBOScW
	 jtXGW6tkl0nflUmM6ahCnYF1wTSVb6sCRtPpaIvcHzeqOvvv7oLov06+Ssgp4QnVfX
	 YQoEyAEJY7kqqU+vqOvF4Z9Qb83J1s1VXUaRW0sHq+lMzbMU+CpwP42pDJiYGYsfX+
	 /gzgStTRCwIk5Od7/csE2VtLUnl3i6kByMwVXHZoLVMZG366fPCboedopNcYPOVV2D
	 RVzmohqCCJrlMvBd0K2Ph+ftUZGcfQ310E00ZAzERs+Pe/yz6bxq2WDjwaw22FXJtb
	 CTgEkdSQjE0YQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94B6BEA811B
	for <ddprobe@lists.linux.dev>; Tue, 10 Feb 2026 14:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177073283359.16409.11355586288546637648.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2467b65cb7e84cae97d08d2fd27ff414fcfa9ffd7df3d596ec85668c9f1ef867
Date: Tue, 10 Feb 2026 14:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770732833
