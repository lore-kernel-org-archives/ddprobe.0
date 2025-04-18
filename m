Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32CF8442C
	for <ddprobe@lists.linux.dev>; Fri, 18 Apr 2025 00:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744936194; cv=none; b=gj7FGiCCj2SzaHtUiqCGFRXDc5OLY2wM/n4/EQEabf8WIs3m5F/XjIBsCFFSss6XeUPW151N8l8nVwD6GDpBe3Qe0M89IB2Ih6GnXRnTvp7GksWd/Is46LKgeY82fb2v0IGRlFlMp7Pn7EBU9YyruzGRSUSVpxnXwg2hmZFzgho=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744936194; c=relaxed/simple;
	bh=Ni83CfueylCC09d5dukdjW5PVwts9to2F66i+dt2/nk=;
	h=To:Subject:From:Message-Id:Date; b=hutMFrXyvJoAvbJxqXtA/7/+JbdM3xH8pS6uyoAD0ubndcgdI+mVtvRDnj7TUeLDhDWsB9ZwiGqHf5KB8MeYGaYYCVyq9h6Xzxl9PbxDB1WyVcgwgX9G+/Eccoz107cSICw+jvKZyOaNVXcpmmwKdYezE2DQzOYkAIHFXeb+jk0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hlPaK+57; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hlPaK+57"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A508CC4CEE4
	for <ddprobe@lists.linux.dev>; Fri, 18 Apr 2025 00:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744936193;
	bh=Ni83CfueylCC09d5dukdjW5PVwts9to2F66i+dt2/nk=;
	h=To:Subject:From:Date:From;
	b=hlPaK+57F5ozcZAgV/alHLvJPn9wRXa9ZEFPlNvmRAONyb8X5ALQEj3mq63xeklX+
	 NjOomBD3UF9nVONKQpA/TRzGqkORbG94JtWO8MsI2G+jFrvLkqN5p2rxfVDtv9Vqmk
	 stQfv2saYdgzpKx2maAH/kfqyuSg4V2zpeA+tjSFjQECT+B08H7SoJmFH6kYrI2Oy2
	 fFkkDIP+piuCWTUHV5+Jwc5T2ZNMyFCjhje0zbENWtOBX7x9afVDGi+AKI6NvkaPi1
	 qV5u4lQH+Gsuy//v0ILkgOZPTpqFea4A/6P4i/r9vf2/7DkhPD3yTMKYW4MaiRadtA
	 CPHbWZe7FIY/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 930A2C369C2
	for <ddprobe@lists.linux.dev>; Fri, 18 Apr 2025 00:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174493619357.24609.12573177716747455373.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d271e484a41b3c202e2000879e48202788e58125d17d35e1e67f8393450bf934
Date: Fri, 18 Apr 2025 00:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744936193
