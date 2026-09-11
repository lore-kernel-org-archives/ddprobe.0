Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 849B439E176
	for <ddprobe@lists.linux.dev>; Fri, 11 Sep 2026 15:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789140634; cv=none; b=pdjOndfVdrI8+LmntuyMa6hkagK2wyKVWtgJt25BGjiQYFBy390jF9uAtjGZ4B9Kok2VfDdIUYpsc0AqKNvpyUJ6aF6MlyY7oUeoMSm2huVsyPTTS6R8VHB9i9HO5S092EzZs0gCjO+mBqTOYz5vM38GReQOPovU3TDmCO5t5fA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789140634; c=relaxed/simple;
	bh=KpJIjgdz6jvx2PGxXf0ImC46UqzFCeiBNn6lZJp4Bj4=;
	h=To:Subject:From:Message-Id:Date; b=eGjCo43fA5rFaibW/05CgZ+2BjBWMK6gui8BJcLGH51GLZ9+JkUrOY2NVPzhNCTdFAt0oxPGx9v38UPFz/FOi/AnJXg1vfjT65lzNJJXl52dRCBgcIJm/t8GbsOaBzI+DTLssSufnvCpWlcosdt4xlFWBc+TDOE12ddlT7yycr4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VUZa+1Aw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VUZa+1Aw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E2C26C2BCF5
	for <ddprobe@lists.linux.dev>; Fri, 11 Sep 2026 15:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789140633;
	bh=KpJIjgdz6jvx2PGxXf0ImC46UqzFCeiBNn6lZJp4Bj4=;
	h=To:Subject:From:Date:From;
	b=VUZa+1Awik9XrFkDlNQM7cwQXNS7UQ6H7ztCnDcQAsxKmFg8zkcTs339kTQmU+Aa8
	 EZioWGmOnjlLgo4fQmvcbAYpb7g3oyhJnftNQdylNo+IUGQoEkJZu6y9TKeI5s7raQ
	 hZlkBY0mnsMJWmsZdXO4ptCR98loMnoj6hX5lZSxAGx5J1oh0TY/YECey4fPK9XuXp
	 3n9achG3qq0Z8zEjIDNtCAlM1KiOxxRZhTFUPYPH5LBad/hCpdromZ2eXdXXmpG1CH
	 qQs24U1+o3popWl3ZiFWbnSxlzz3ElyjBm95oAyJV5TCWHVc0ZpCOA9JZET+XIFEYc
	 KFH5FYLagDLyw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC5D5C88E45
	for <ddprobe@lists.linux.dev>; Fri, 11 Sep 2026 15:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178914063374.25981.17336969377769444507.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: df59a4e97ce877e6984bb8fc04e184db174ee732dec6d9f1739e08a8f70f43e9
Date: Fri, 11 Sep 2026 15:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789140633
