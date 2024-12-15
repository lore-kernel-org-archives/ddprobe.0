Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0ED73160884
	for <ddprobe@lists.linux.dev>; Sun, 15 Dec 2024 12:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734266154; cv=none; b=LAzBOxFNDiE+4R5J5AdvLdaobhHhnKUeL9t1Wd9sxJn5dxGFAVwjAWKPgdagkV9HWArpLyd8nCGrgckozqxVirHM4nxZoPYMys7vUFt0SkRpaxJCjcZHW2s1/H4kioihWeTsVFClfBIPa4nVuXO1phRvUuzwD71fVX0mzrev+cA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734266154; c=relaxed/simple;
	bh=IyMYU5RFKEgfKMd59uw8xVYuxf6MiIVlbHWa8HOrEIA=;
	h=To:Subject:From:Message-Id:Date; b=SSBBSZASl0yZ5dA4+ALUJrQRYesnzHP6m+ljHTRugz1Eaj/zPD1ohr31JtddU7EFkF+tDZPC8rv7coJZ6+XrnfGkVbOs5Jz4TKTxsuLJyozDgFDgBPCjPJxsOe28m+2Ff4KzDNswgvPUMf7kxvOoPXYKDDqmgkbeS3dqeaNZ4LI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Se5r8g+/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Se5r8g+/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8968C4CECE
	for <ddprobe@lists.linux.dev>; Sun, 15 Dec 2024 12:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734266153;
	bh=IyMYU5RFKEgfKMd59uw8xVYuxf6MiIVlbHWa8HOrEIA=;
	h=To:Subject:From:Date:From;
	b=Se5r8g+/GWWmMBHOh2USPlqJxjtwc3Sfg5t163w8sib6xRKM/uVhM51g4DXPwRj93
	 NOGVH+cOx7gRUSmBai2Td40IUG/F6cYNIN+zsLq101OfNi+0dZKunjQOeOVNNAE0Wj
	 cit8oARmDDmFb+DH3l9WDCGU1VX6hviGJxRladsRNH2dwezisf2HVh1fMVbEKfVFf6
	 murj6OSlOg91ozwUD+P5jq+DKgJLI65cF1X2IT6ygXj0P6ctZAksEkzOHHlqnoT8gZ
	 IBCXDJGla+xakxYasnttLciD709wqX1CdE4CQwJENG5pl1NHfFtNtZBBrPls9E/iQg
	 niUTEVW9LBR3w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96976E7716A
	for <ddprobe@lists.linux.dev>; Sun, 15 Dec 2024 12:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173426615360.14382.15969548350354700656.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b43a9c7d21d0b4f60ef08b00918b3bf2fd0880476363e41c7f2d9021e0912379
Date: Sun, 15 Dec 2024 12:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734266153
