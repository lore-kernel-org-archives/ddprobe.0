Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C28F158535
	for <ddprobe@lists.linux.dev>; Sun, 21 Jun 2026 07:46:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782027994; cv=none; b=lGjPEozQL0vP65OFOa3UZUmdol+93El6RyyT34CxO4UCotcJw35kUYMmPA/m/Hst9zFYhMBMOvUFD26COMftQYvVNjcFIE0GGGzCaOGgSopDIQVSzUvxzSw8pyvBp2HILh9g7VNm8wjLXKg5fqyyaS34eMGgOFsQjGclDe2P1cY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782027994; c=relaxed/simple;
	bh=AB/ce4FBr0TBT7hACezkZbpy0BQ9NSfxw119WtH0o7Q=;
	h=To:Subject:From:Message-Id:Date; b=f+Sm4jLG1cjFmD1OaY3IenqQbXlIxh+y3QnSqc3BbtT32fofzcEe60JP6AZZXyKAbEJbCfKH9LptUql9XD+CnlD5fDonUtBjb8P/MN2F+RvYeKaAHKNnJSq4tq204WcBmoTymiuVpqaDcaKYgMlm3FxcPRzA5hfvRXQBdV5f7ks=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r2QF0otV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r2QF0otV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF474C2BCB7
	for <ddprobe@lists.linux.dev>; Sun, 21 Jun 2026 07:46:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782027993;
	bh=AB/ce4FBr0TBT7hACezkZbpy0BQ9NSfxw119WtH0o7Q=;
	h=To:Subject:From:Date:From;
	b=r2QF0otV/52GmJi9Gh2GaXZyyOUt/2Rn/0+1bgvBTnfbVL9Hx5jbUIOhj6mjEnYIp
	 SbMviJhP4QF1j/Hb/jU368tOOTtyFdxft32N8bw2HZkP+yS298FcEkY2/lEI824CyZ
	 M6IoQxdgcQ7IRBI47QsDmh0U33IZt8pigkpBv+eHv0zS7HU6MHN0H6yYGKdwr9q+Eh
	 Tqi8Ia51N08IFQkdfYMBB2IQ9on7tQ0P0TtmBOv4vYVgSwd5zMYNi4DkHUKH7urlJ9
	 IuAQ+7t5zpdJOpadkCV0MGoZM++k1ewPdWj45bwbGWEzv5u3o2VA/mF1mlRzW2kowO
	 UpqYgsutE2cfw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF89CCD98F0
	for <ddprobe@lists.linux.dev>; Sun, 21 Jun 2026 07:46:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178202799368.14119.4507086046725748593.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 53411b311cde92bf5cd13a5e916abacdf601bd703b6d1d28b823f58af9de99ff
Date: Sun, 21 Jun 2026 07:46:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782027993
