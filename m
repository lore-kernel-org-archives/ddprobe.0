Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B1494B7A2F
	for <ddprobe@lists.linux.dev>; Wed, 30 Sep 2026 20:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790799034; cv=none; b=kAAygyNOgJo4VAjGAOLh8ePR2wk0rLU3AOKk3UApOvw8AZhPNMEDwqjtjHCN+qaaTqq+fjAqGQramTinq5gajN3Ze3sFdJWksHG3XG9AvKb2tnVcLsGqpGpisO4pc1cBJxscNxE7mk1fbzQJzj7dricNSUpETgR7Tdslxiap2YY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790799034; c=relaxed/simple;
	bh=yjsE34qIfCZywjsnG6DLMLx8tAtov1FNhwvF+x1238Y=;
	h=To:Subject:From:Message-Id:Date; b=lJmx1l+JkS/AW49OgiJCNeXhyl9+DOtbK7ICw4usWhbE2cSN98pCpZfXj1DmZaiTnIeFJljVWOqzFpiJK8+FRalvcxIIUJ51oVAG7iWn2upmbUSiraKmoWtsvG4/Zp4f/mBeZrnDCqAiBlE9KBeAUZViV6P721YjMkJXdW6uOTk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JyjTUizT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JyjTUizT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D56DBC2BCB9
	for <ddprobe@lists.linux.dev>; Wed, 30 Sep 2026 20:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790799033;
	bh=yjsE34qIfCZywjsnG6DLMLx8tAtov1FNhwvF+x1238Y=;
	h=To:Subject:From:Date:From;
	b=JyjTUizTCFhe4M90hTUvR5Jo09wyPTIS03sFU1KT5M1Gn6UtPP8+bIO/m6/LT/IuB
	 5xpu2QLCWbO4wlIjQsRt0tQurib828L45ifrJRBHqZ7qaOOAUnkM9P61Zm23q/IDKq
	 IEnK8KYs1OC1bzDFuVZI1m6MVEl5bUbSPwXwvtKlK+hXl3Xtzm5sm9WtpIVKZiq/+A
	 grM3k9XqbCDntJNjKSMR3Oaianm+UB9PiurfnlwRX/prif5tfiaWKLp3es35Nb/T5M
	 HtVO4PgqninUgKoO0EupI6AS2rIP3zKQ5tVlqMBaKBBYWosbBopotOUNvJVmNW8tOv
	 /A5dq/tQKeEMQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1E52CA5FC4
	for <ddprobe@lists.linux.dev>; Wed, 30 Sep 2026 20:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179079903369.8745.13294285837242677538.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a920e7b239f8fcd6b33fab3882a98445fb173325f4e2bcc6bd5c77017a393652
Date: Wed, 30 Sep 2026 20:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790799033
