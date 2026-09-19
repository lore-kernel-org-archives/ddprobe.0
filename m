Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 580CD345ED8
	for <ddprobe@lists.linux.dev>; Sat, 19 Sep 2026 22:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789857634; cv=none; b=hDlNzMmIqh7eNYOdJ3ACI8WKFQnGaYZlOqWP9u5bcgxzHSWT23DCs+9ck0mS5xi8sJtDFw0DWcy0uJnc2LX+ae1qABsnFMZzVy1K8m9Lb3jTcuKildcPLOmmOIqsWL6v+Et78AVaKr0gFfq1H8d23CoIgPwoZ7BSCk6yRD0OZ9k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789857634; c=relaxed/simple;
	bh=4ERVR42tiV4+epAPWsjEsaLTf6wYVvZ1yl0Batd9OBs=;
	h=To:Subject:From:Message-Id:Date; b=MGG5m6uzZ0fcpGZ5YgTxwNSGdW3r0qEySI3ahzA4PgviykbF+MGIVKl4FXNE5JKkerrkMQ9dI1T/rpXD4snnHHwAhG3lXo3iQwbOBi3UNLejDJ5WuaiRidK6Fkax7FR4EudwEXyQycussF6+VPbXy80BaSDP4QZl8//9bOGWk2Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XPVv8PfN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XPVv8PfN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DBA42C2BCB9
	for <ddprobe@lists.linux.dev>; Sat, 19 Sep 2026 22:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789857633;
	bh=4ERVR42tiV4+epAPWsjEsaLTf6wYVvZ1yl0Batd9OBs=;
	h=To:Subject:From:Date:From;
	b=XPVv8PfNMv70o+x8BGzL33E2Qx3VpLZUSbXAzBaSCyZPibs1E6BNVvKYl/fnu8SFT
	 qxFiD7S1J2aaQlMk+dt5qJoiX00sa99eCPxwMrCGMvTFCncrmjTxjlBg3jNLmdXYlW
	 j9H6QW6PD9peGjBX9UmWFzbsHHY63MQPX68hP2BgVZ/REIhqqFJThI0YO+IMv5WU9s
	 3w5+4PPBKdhovWO0Xcey+NLFprQPM5ZORN+K3yW8OFgAF42TN9FK53GtdG/IJL+g4r
	 TbbqWny4f5m9R8SCYotYLyOr0tgoA/ZPBGyp7jPBePTypyPfRCUZQh2/lHJL3cXFzf
	 rs3D7GM6sJYTQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5AD5C982D7
	for <ddprobe@lists.linux.dev>; Sat, 19 Sep 2026 22:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178985763371.21874.9793452141941026566.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 13e2f72bc602e8fc35973556d96d50218fbaabf1ab837b3ad287450315702513
Date: Sat, 19 Sep 2026 22:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789857633
