Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C8F817BECA
	for <ddprobe@lists.linux.dev>; Wed,  4 Sep 2024 08:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725437754; cv=none; b=ruZZNuaAxUgRgl1oPpM0YlIfzHVFT93OxfyuYmJsKaB81Dl5U3hwCxDOpjmfxo0thkPWwX0//hEtQzrd2XV1ZAtuB0/hFwd20tp8hNZRUx8wBsIqd7b9KLy6J4f3aGBEKwSr9D+kGbvdSJ1wmxPiE/y6Vy9QerYJRpA0ZuaC2B0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725437754; c=relaxed/simple;
	bh=lq1l1U/8XPThMRdZKYZXYmQ+zYt07rqCAZqvn17UYfc=;
	h=To:Subject:From:Message-Id:Date; b=f73oyOBTy94wutpuRm8/vFKma8ZZXm3ekFJoUfulV7ynCEIvmGesSdRSHuTcJamFB/ag0qFQxZeXDlnJ77vVrEHoh8YIOiYQFb5N7QK+V7rXS/8bFA53QzGtsWUa0M3GojHmQfrY1+c5iD7p8SHWG92AeXeGhKN9DzcHFF72cMI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dMIqvXe2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dMIqvXe2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD2DEC4CEC5
	for <ddprobe@lists.linux.dev>; Wed,  4 Sep 2024 08:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725437753;
	bh=lq1l1U/8XPThMRdZKYZXYmQ+zYt07rqCAZqvn17UYfc=;
	h=To:Subject:From:Date:From;
	b=dMIqvXe2DoZo8utbabU1p6kMOAXzWj3fw9cmH/MWkyvThdG3SeK26Z/kNvJPnIsx3
	 QUzgGEP5Opjj/BFCEdQ6wA8IisM/d/1raQ2f1lsn5Ln3pXD4CVriDhWuCM8lR5kuC6
	 +Z70rRV/5UzhvfFaie7CB+52V8lYBMKhrRSWJ5NMMtnhCXhKbTApRwXBqzrY222juS
	 fbCHlgo+FkuP3/EFRKhheFOX8zYDMlEHvbpf/L1Et9RyRzpQQ1blXp55PrkygkwS3f
	 qYj8eZhUIWbIgGFY1g4Qe/9OAwSvFmuoaihUxZvqChAHdp2Qzp6A/F38RWStp3xsJM
	 FDjXJfAe4VPCQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CBEDCA0ED3
	for <ddprobe@lists.linux.dev>; Wed,  4 Sep 2024 08:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172543775363.582.4531696362084774589.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c1e95cbab8658ac67cf5fae7617e1de958fe7616015fed5b876ca213dd8b7872
Date: Wed, 04 Sep 2024 08:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725437753
