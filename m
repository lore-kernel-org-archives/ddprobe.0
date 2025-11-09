Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 297D118E1F
	for <ddprobe@lists.linux.dev>; Sun,  9 Nov 2025 00:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762648194; cv=none; b=clvfU5zBleDluNAFBAlzHoX28PKdVYHR/lq+ZwIC7PXdxBgzIaI5OdY93RJoWdXsxleHamYI4dEa7IgbJj2ogtEiZFFeRQEnsNEgUe5c0YnYeGOUOJnOrL3JHzEfVv6HdWNq0Q2CKVD3JwEStoDuR6xvpfeiL+WfEyOH+FQ23JE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762648194; c=relaxed/simple;
	bh=vY38ZGJIX0VU4btiRUWCLFHso94MurgIhLP6J6C3RQA=;
	h=To:Subject:From:Message-Id:Date; b=OjaupSTeENnw/4JpkXqj56EUSuQqcwuJf9WD9AaJm5TUsxBMxEi5CykB3Zx5JKTjXJ6ouob6lYn1x6JDLwyHKmq+yUVQtxzReijRQEE6O3jWQnTHY6A8LQD0D2I4bolt9XozPxMPUmN/L1M+98N6a/iALUhtDV0PJewluv3vzIc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UMta2nri; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UMta2nri"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4CFEC113D0
	for <ddprobe@lists.linux.dev>; Sun,  9 Nov 2025 00:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762648193;
	bh=vY38ZGJIX0VU4btiRUWCLFHso94MurgIhLP6J6C3RQA=;
	h=To:Subject:From:Date:From;
	b=UMta2nriMeUt2BDbDhuCZyYuCILjT6cylFCmtiEgXRBtuuLTIHebZhbT1R9yXlO6g
	 /RcKYJPFC6hrAB1jRc9900HFT0SaqiOmSyNGttdKNnw5IRq501n16Ey7lxks7U+LXz
	 A4QE7DCTDuve7Z3DyHUVlr0zDelwhDgyRcnmLISCyl+qNleaXKdHMy89uCjgxyTuFb
	 wDLpKn5Ooi0X+K0+ihHGtuMINCuXBhOX8lzCN/PC4L3gwxmkddbzv8xKk9Hk3ZV+PG
	 w7PjnOFckVFSvZvEVPdLtVxgbJIPnV4KDy5AaU/rvZ8Uzc5KKWybAjC4R41C6bxUMB
	 rE+DrY71QkGMw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 970C7CCFA18
	for <ddprobe@lists.linux.dev>; Sun,  9 Nov 2025 00:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176264819358.9961.9226664234082807829.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b63aeff256636746cd0c6dbe7139ceefb637a49d7afb315827e189f4e8d712f9
Date: Sun, 09 Nov 2025 00:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762648193
