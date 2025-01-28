Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41B891F95E
	for <ddprobe@lists.linux.dev>; Tue, 28 Jan 2025 02:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738030554; cv=none; b=uPubeGGHetR1b3AqVYFqOPETI+vGsPFEIs6NoZ867wQdtcPuUTKdxhl5FXj9ImAfk9/lmzWdrBZd/2GzYtwr5wmuwuVq8WY6UJgU6Wp0/5WSHuHGlnRuTwjAIZFQde+WLUBbODbpDhiNEBClt+41kg8mauhXZpJccQu6L0vAiuM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738030554; c=relaxed/simple;
	bh=TKc5nHY1x6yJlEIHesgPSx8DUQidYRK2oB5JUviEOJk=;
	h=To:Subject:From:Message-Id:Date; b=PeGYLEMX1VeilNG1d48CuiC+zntuUp9tixZ3xCI52Ky7HNCZ7CskHBhC8CE4NKngTlDsyyy3/FN7dN66sVCUKGDnBFfx7PiVvhPtH6IImKNqq8ubbONka1LKfy+bYI/NoVikR8B719R8qxk54PkIS/EdVZfpcXf1Q7/k7Xlr//k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Wg+1MA77; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Wg+1MA77"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0F66C4CED2
	for <ddprobe@lists.linux.dev>; Tue, 28 Jan 2025 02:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738030553;
	bh=TKc5nHY1x6yJlEIHesgPSx8DUQidYRK2oB5JUviEOJk=;
	h=To:Subject:From:Date:From;
	b=Wg+1MA771Tq25tCPd3I5NYxMWGmbES5qsOA2Fr4zedpo/M5HBS8wlJqTWaZ17PcD2
	 q/gLAKshI4ZnVze/M0WjTGdRVO1G4+JAl3KYBHzdAivurgJpgi1dyxSe8QFZ0zEbb9
	 5lIlS7ooQaYobbWvybQReeCcO1HGo1+DBP3landULo3XZIl7l9J8oTdatxuTBcAj8X
	 PZRizLiQ7MXP3KrVeWPw1fLnTjMBBHlQ9XcHyRWlptqu8aUksR2Wlr2czHH0//uY1M
	 /AJE67Ldydz5Je+vWvEXxptaRPHAriyBsOCuLRvTCKXAS4hgePboWaKR36WxjEBafP
	 EEeRmlgYo71mg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B60AC0218C
	for <ddprobe@lists.linux.dev>; Tue, 28 Jan 2025 02:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173803055362.18290.14868495658100999391.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c9709e42af9447f3b9c54bd1370171349c61f30d01c2cc95db81c46da0c6824f
Date: Tue, 28 Jan 2025 02:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738030553
