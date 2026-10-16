Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 270B53E63AE
	for <ddprobe@lists.linux.dev>; Fri, 16 Oct 2026 07:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792134634; cv=none; b=DN5WE/mf0Lnw61t3hkrNntknuEPY6PgOUwU3PBUHdbozSiMIZnzNTXpgpKOdrP8aU5CESAAxb4kUmGJwujzKlFklrKA+4J/PF7p+6bExnDfw5Ry4YnjpdUWLERib9ifAyxmd/T1Qg1AAkUTAWy3g50FKo8XVxCM9uRUsuhIPFFo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792134634; c=relaxed/simple;
	bh=kmwpbFBNUzbEVZL+Lz30q5lg+jqJhW2ICc/xUHvp+fg=;
	h=To:Subject:From:Message-Id:Date; b=k7K7SpKorziOOyhnV+tDE/Z5rdAYOJBSGc6/zLE4gnJrE2CIbGly4k/uBTXxl7L2xRQn8NGajkaq+YbMdNDxI0ngMKLUGIUsqDwBnXCHtgnFor8GYi5CjiQfn1D8xo5Eh56jlZMYflYMMgNSyUjYpe/Z2Vi551wpqjS8H0tZrNk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rudRzSSF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rudRzSSF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD3D0C2BCF5
	for <ddprobe@lists.linux.dev>; Fri, 16 Oct 2026 07:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792134633;
	bh=kmwpbFBNUzbEVZL+Lz30q5lg+jqJhW2ICc/xUHvp+fg=;
	h=To:Subject:From:Date:From;
	b=rudRzSSFol/Z30pbsHnA07reLjH+S0zvhN3KRbdVIY0wqyepC7Zuiu517F6BLWj2V
	 wHPv2ZVs8S+JG6m4swKHucvys7RRZOT7gZoFl6DrvqbAcVEGaJp0hEnB8enkuKn6+W
	 5IrZ4GJBbV7hPv5HoFb6kjgoHGo20HvbXtijg1YrpDlBKSqGZcQjg78VDSBx+IGse8
	 flPmO/NZOt7J7Yr7t53pQMaMhJF4nkj40iwvO6Sn6axHKWXm41sWok8RRXp4ZKg2e/
	 gJ+wRVBL89kl0h88iVWNaT+aWXbBJbLbqLNmVR3ObgfK2ezxC+VZougJRQ2u8YoCI3
	 X8GUUt3TpdYYA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADFFDCC6B38
	for <ddprobe@lists.linux.dev>; Fri, 16 Oct 2026 07:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179213463370.26262.10889624800424075916.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 96d1744064559bc3b57809ab22f89e33fef221ade616457d1f6621e85e0079f4
Date: Fri, 16 Oct 2026 07:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792134633
