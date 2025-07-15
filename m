Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 343B92D0275
	for <ddprobe@lists.linux.dev>; Tue, 15 Jul 2025 02:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752547794; cv=none; b=pmyIER/g3EycEUffyFbHrNN7SZA12S+W4JwXbDUN4V5jD20pX643FExYq07QExBT0QqhSbzKS+UrTB0HWTDu/Q0eVkMzLUU9KiBWZMR3F6RFf1DeM3F3rllaP8QzXJVbow6FiJvB6e2Llw4XZwi268O1vV/8311xxGJ6gCh56gQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752547794; c=relaxed/simple;
	bh=ADg/fnQuOXIS6rqikbc3F47nhLSTXmKCYDGSel5Ub4k=;
	h=To:Subject:From:Message-Id:Date; b=D+HZRdBVFMH6APokseFh1Cnnb1z1CGl546zv5FNwqbhHO+DbcRRJ0tMxULM6wfSe4RzTVEruz1joy6/BpzTkMh6au3GWRUHTckqCE/YT3tP+ZkXXICMypRaEalLPifkOTADUsEq0Sj317bCkUTVY+L6zhM5ZPn5DeHQm4/fFIpQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tbQllyLj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tbQllyLj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FED9C4CEED
	for <ddprobe@lists.linux.dev>; Tue, 15 Jul 2025 02:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752547793;
	bh=ADg/fnQuOXIS6rqikbc3F47nhLSTXmKCYDGSel5Ub4k=;
	h=To:Subject:From:Date:From;
	b=tbQllyLjW7EFX3aVScAw2Y27Yb8ZbNbtdiiIhq/+spH4gYi9kgwil0LQPBzjMtb2w
	 0y5PIoChGnMT9PEtYnW3f24iSfvFHnnNzvSF1rSkJC2zxCgNXVWKYk5Qm9wvfm1Okv
	 cxe+fkQXoQzkbKcZpNcHlhhDxM26mGTK8pEfs2GW9ZjWelxwEO7fsEichy2+BB9cT0
	 nw+CD5liE4hj9yC4htLcy1Ymgi/FVBXCrOEw5vlNH/O7tCbNQ/Ei6r4JQdZV7/hI8u
	 UuMXQZ7+XuUE6YypQDeqfCIxOi0DpxYIbym852HJZ/O34N9UJq87YHPuAR2v1uzU1a
	 pjDobYWZZRWyg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EA45C83F17
	for <ddprobe@lists.linux.dev>; Tue, 15 Jul 2025 02:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175254779357.7013.1668952358444758294.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9141ba00075a02657b419ded5c4e4effc88614ff70cad8d2a1cd29582efa8d04
Date: Tue, 15 Jul 2025 02:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752547793
