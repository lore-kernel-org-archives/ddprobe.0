Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 306BB2857D1
	for <ddprobe@lists.linux.dev>; Tue, 22 Apr 2025 14:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745333394; cv=none; b=rHmzu4fV+jwEOXngHyWWfhmI2EmS0K3oHJ00DWIScYT7BvOYhwH3DwQgsbRIT+endikltt8RHUcO2EBCWIkWKzPsG6dJal1f9UOFYwhFvJ/RAqSk88C066FZSNV28eFIhGu0Xuiw/ttjn6OWj0lctRERTtbAY2lH3HdTaV2IAXQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745333394; c=relaxed/simple;
	bh=liHHYgTrWh0xMx8XIFgfR75EWZrCUxWlHEfnVkyOm4Q=;
	h=To:Subject:From:Message-Id:Date; b=ku678ePoESX8dBcyNiHpKHcnLghPup7cxNdJcL7I8HFKcJ1hK6DyAUCP1gtwmz7WW5BcIfOVoLNKb30P2LqY5ci8we8VyeRBlt8awBzUes7JQ0mI6bra6/KZo8X7wxo6j54oFxXVTifuKQyvPQwPdYNV4gBczpT+AnW7YAOiuQU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KUk/lUFq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KUk/lUFq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1BD6C4CEE9
	for <ddprobe@lists.linux.dev>; Tue, 22 Apr 2025 14:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745333393;
	bh=liHHYgTrWh0xMx8XIFgfR75EWZrCUxWlHEfnVkyOm4Q=;
	h=To:Subject:From:Date:From;
	b=KUk/lUFqR723EhMLK0OHDbW81p3VVhH3KOTOkUUTQHim8yE3R2gh/3CBrfClXwbGu
	 WjP3+/AU7RJM/6v00aZcGh51GlAPUS2NEnrpIiEUXm5dP3UyiMwAS2G6OYWCcoUEx8
	 ay4cmyIFUZNxMxKuEA0V3S/Gd9tWp/rJs+owMif+pnXp+/jczIxhuW5+WSgrjCV0HG
	 Z0Mz1EFDYJ6izs3ZCB65Qv7oPXXxgLQOCplBpEaNQunE0svdGtKyDFwijmHiZrehF8
	 bpN89pSpckP3lLlSeHAGgZNC5hvHKcTmDclSnvEthcULaSoexGET1ZMQy5fW412yk0
	 IwcXqCidEEayw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99128C369D3
	for <ddprobe@lists.linux.dev>; Tue, 22 Apr 2025 14:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174533339361.8262.15145669120532558600.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8e3150b4b680adae9ce4a8085b5ab53555d4b7f6010d9d6e02f8bbcf373e9448
Date: Tue, 22 Apr 2025 14:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745333393
