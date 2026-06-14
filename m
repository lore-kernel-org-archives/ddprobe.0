Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 434AC1339B1
	for <ddprobe@lists.linux.dev>; Sun, 14 Jun 2026 01:06:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781399194; cv=none; b=O99RAIQLxS+OxakYKP+4BwpdVpIaRXwcrhpdi54kW6ObuVAodJrEVIka4qS8ORRNYsPMxnyp6G0I9Np54rGXLQ0D/w8MJUquMKyloHT7+RlBAfZSLo2i7De+oMjIg5RyaH/ssuqVrf2eXPfon9jU/TFeo4gv8nHDiL5W86MZmBU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781399194; c=relaxed/simple;
	bh=VvBhxMAPFbXWUiyqgtDERkXkScO50j3j4dk6eFM6XKE=;
	h=To:Subject:From:Message-Id:Date; b=Z20xhqfzc+J03Q3h+MSRZ44isZZvu4I6MwAbYqbxC0H+pLhFS+gi+0ujspA+y+mjKdliN8XAI+yk96/ExKJvVAaKOvnl44rgTab6Qr2E0t/e6rGROFQQCEgw4avF4N1btPSynZoWFzz8YDiY9j0uuZ3bpk3OK3iRKRl/u1Um5NY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nNTsk4L5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nNTsk4L5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3257C19425
	for <ddprobe@lists.linux.dev>; Sun, 14 Jun 2026 01:06:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781399193;
	bh=VvBhxMAPFbXWUiyqgtDERkXkScO50j3j4dk6eFM6XKE=;
	h=To:Subject:From:Date:From;
	b=nNTsk4L5Fcor5W4jTNZgmtwFjA5502Nl00rU9OoImjXScoH5vAeGuT/9k+xlPnLfI
	 GCXrYpmtO2AMUEO340KcxbcqxlAho4bqmyTndCBafP5un9GP0Nwa4nEePkjGnHyB3z
	 84y9D9VI65GICWorbAGmXgcsCVgnpfnBO+B308LsSCHoS3epLGYabS52wMHkHVs+5p
	 n6xJEt5CODPR72mnTyKGBVYaHKILDB4UOe6kkGs61fY/EfbNf7DnBGWjb3ZlKjgK08
	 sAFn95FYGbbSkSNwAYGo3DdGAqLLQ8OfS1Z+SwsNWDOg5me2kcLtYIKj/hVwkdUlXP
	 Z9l5yO2dqQ4ow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B486ACD8CA8
	for <ddprobe@lists.linux.dev>; Sun, 14 Jun 2026 01:06:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178139919370.1363.13070871802252107777.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 25bb7e68c1f7b35c1416bbdc8be22ff89e04daf1dc3817826bc5ddb77ebc3368
Date: Sun, 14 Jun 2026 01:06:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781399193
