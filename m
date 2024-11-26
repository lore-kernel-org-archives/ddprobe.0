Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18BCB192B96
	for <ddprobe@lists.linux.dev>; Tue, 26 Nov 2024 10:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732616154; cv=none; b=VppUIxMMBLjpUnm2q8aOGN62Zn4QG2Ky0wfc9J7/YqPndbUAXDnkuJy/6nmcq9QLwS5tLIQMB/0q+UM72gZDlrHFuXmbA7TyOn3geybhtWGDWdjhw2qwESD8XvDKJCTAvQixnbyK4ozeDBnU9Z+w3Qvpu5Sw1S7jJ+bI1S4lWK8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732616154; c=relaxed/simple;
	bh=EN+HolaUtxlVGtHpZ+k9BwDn2SM+8hfqycEKMZcARFs=;
	h=To:Subject:From:Message-Id:Date; b=NLwZtNGBesNcsErYgrRUaH/iLtUue+NxKyt/kdgxoN71kSi1HMhKRAO0CotBLhkGmxOYfxXV0sFjxOam+ZHXqDma4aw6Kn9C74BDP3cXBQu3lhlHQI9LpImaB+uFOFd4XQCG2GO3Ijwtfb2qH7U1wBmR8ffvwMHnUkdLJdue3uA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=epFMO41W; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="epFMO41W"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC306C4CECF
	for <ddprobe@lists.linux.dev>; Tue, 26 Nov 2024 10:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732616153;
	bh=EN+HolaUtxlVGtHpZ+k9BwDn2SM+8hfqycEKMZcARFs=;
	h=To:Subject:From:Date:From;
	b=epFMO41WrLepTY4Al0XnfvQ4iB9fpwe//oxOSqmcWXekiXExIRZQHSQL49zwu8ghe
	 edcc4OmQ4OsZnaQ91oG29k4qwqFzZjjWLoJuYPXzYIuf3nnEEGuoX0HshCI2WlN9It
	 m4iQoDi1aluqXpBhweJoYNruy5nhb4E78uwIFQ4gh1au7ISmfWxjePLhDv31QjjMh6
	 b0GeXgGA/RfyG1wHOW/2aW1bV43V2th32HrjUNasTEgkeGv3mogSFtSSnGV6F2Ah29
	 6RvB4UROjbZNkiLCNprbbfcOjjZsELbcLQCElgQbncnv40NnlupwOuSsLk7KgtNqGX
	 e9p7Srz8irFIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98AB3D59D90
	for <ddprobe@lists.linux.dev>; Tue, 26 Nov 2024 10:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173261615361.9009.7750980445250099297.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b19a42203de6b54d174396161fc99e6c8b26b22f0fe3d1e7571b7e25e0a4121b
Date: Tue, 26 Nov 2024 10:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732616153
