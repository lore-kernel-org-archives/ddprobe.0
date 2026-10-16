Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5184054704C
	for <ddprobe@lists.linux.dev>; Fri, 16 Oct 2026 00:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792108834; cv=none; b=D8rXga8dwbFGfghLDiH3AU7K1Yh8pR2CD0I1FaDqh9wpTtKhchNxQbHW5ksv+16XPoHMO973xPUxkvMLWwO8vl2wdn3IuML+iDhXU5+JYffI3bV/jeo2uo5r6t2Uwtus914diwRufez5G31gTgkYVWWNlg6qjFx5U9noJyhWt/s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792108834; c=relaxed/simple;
	bh=DPMXGCCppG4/0+7yXePsXKNkrOZmgKcta6d7hPz+IrI=;
	h=To:Subject:From:Message-Id:Date; b=gx3u43XdR8sLTB069rN0X2yZMGh+DYI2k2kzfIIUT0JgkovPc4TNFgUCVG7LfPa/UV1w6ND+BP2G2jEcO9n2ju7TNNRc7KAUhLdL97eNpU4LXbEusTHIysUAAq8lwmBGW0xx0o+Xu8DY37DtG7MJKstY98IU5BhGy7N1FLpHyTY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VAsZsHKv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VAsZsHKv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDBD7C2BCFB
	for <ddprobe@lists.linux.dev>; Fri, 16 Oct 2026 00:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792108833;
	bh=DPMXGCCppG4/0+7yXePsXKNkrOZmgKcta6d7hPz+IrI=;
	h=To:Subject:From:Date:From;
	b=VAsZsHKvsbTDSqJ+f0N4cy+9NTd5ovrSADoq3F9sundXXviKIEqzpU+xiYHoK+dze
	 9+fpcjKmTmgo9bQMvegUxWVu+fAQMmlrnGP0UJKLkWE205QykUuMVCYddWhhxQZczC
	 Qss4ugoMTCr0OKhzpbA/GnjFbGJfb39j1SKZ+CBpZJeK3iQLwNGuVfGJmcipPbEhTc
	 y5Wsx4QltOF3UVY3Mj/Y+Mg/VxOj/wbXZr1ZyJLnt6jsFVdJV4ScDZNtJ5BqclSvXL
	 pjxaVYZuP8H2XiUiJ5E+nIxCFlnTU5oIAdAebnfSXAcQ486LFq/vRhbzjdzPPb+T7c
	 IwzOrK9i/Bu5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AACCDCCA462
	for <ddprobe@lists.linux.dev>; Fri, 16 Oct 2026 00:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179210883368.20694.10740768959983475086.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6f3cb7d5f8ce4acd4b9d445d7c4f5ba214fdbf4e4f82aa918e46041035289c21
Date: Fri, 16 Oct 2026 00:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792108833
