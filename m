Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5948C174EC6
	for <ddprobe@lists.linux.dev>; Fri, 21 Jun 2024 11:32:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718969543; cv=none; b=Jc39I75qkYZLgdxOPLuhk7shKUc7aP415y1hH2Km715OUdFwrr7YcM5qgJQVEBg6UYJHTD63MvQWa1FHvIg/P2RQnegUMeQylV2MjsCDeMbzXLGvQ9hMGNAXhIMpxC76VUd7SZbmOeh+5wo4udW2VDrwRowIWVhGtPjO3TBdR3Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718969543; c=relaxed/simple;
	bh=ktK5K/ltmRN3kht8tkj85IRmPUEWinPYVNzf0crOIyU=;
	h=To:Subject:From:Message-Id:Date; b=HZTN8LALTHp3suu0wrIiyc7iGWUygxFsSUTthHHXoAJvsTn2aE2Mfe5PnPIQPkSEjlanPGzD/ITxtnLO8XHkXUmb7ImjRvc46COto5V4s3DlKR3Xz6uRGqbYIBhOsKCcWw5h87y1tTMhCCPn0GbxUSi5/EBESqDAgQ/sKHO6V5Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lggwOzpL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lggwOzpL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1AC8C3277B
	for <ddprobe@lists.linux.dev>; Fri, 21 Jun 2024 11:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718969542;
	bh=ktK5K/ltmRN3kht8tkj85IRmPUEWinPYVNzf0crOIyU=;
	h=To:Subject:From:Date:From;
	b=lggwOzpLN0bR6vWfgnSMC/caCypNcE4OWqIL7bZ6vIAtEkCOowncTUndU8DyxPo9q
	 hGJJxX/gGPzE1fzUO8W6vVnXwiiFHc2JFTgjI2rnkzHUMgIkMz7awVWquCI5BkA/6p
	 gz6xO9GgVDvERnrDCq695ORMfRGcHO9Etld5pKSwbYpoZkikuETZaN3v1MaZq/4JuU
	 WmNugKdKvHdSTdrUf2d8JJAexVOn/QF80ueiyEliYNbRHJJHG+8Y1/7qlpFZ0irghi
	 f1OG6cZbr9pZnFtlGhu1qT287/MGDU0+9P7VIsneE7p5qDI0Cotww8L4U0wXBYAQSb
	 mqvpK3aEouyow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BFCD3C2BA1A
	for <ddprobe@lists.linux.dev>; Fri, 21 Jun 2024 11:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171896954277.3416.6109903405882301350.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 75f06c359d03633a16320e241ef4451c813a18855ad5b0bbd644d19dc7409103
Date: Fri, 21 Jun 2024 11:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718969542
