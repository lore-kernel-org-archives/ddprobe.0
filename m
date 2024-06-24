Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 61FE1376
	for <ddprobe@lists.linux.dev>; Mon, 24 Jun 2024 04:02:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719201743; cv=none; b=ZVQ25S4T0OCebF6txmZLXyLlyIfhoNSvM0bIxOfCJ3JCbS/k7fKDD92Vfu8rhNQddzTJj5Ee97VCLRGjZtdFDCepGSTXDCpUnWvJEySdnB/e/7z75KU0ol6aIilyLA4gI4FgHuEQB09FXYpEynTVvQZKweHk4pkE1DTpzo5IkLk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719201743; c=relaxed/simple;
	bh=L933EhsbC8PK2XJUwnGF4qFdcipcBDp2mi49NrxLfes=;
	h=To:Subject:From:Message-Id:Date; b=lD9vdegg2lhp2Epubr+Mz61eh4hTPOIoAtmrksGVHrp+M/UBmPr41tz6lCU55HTcte13f1Vxpy0ty2zX6IS3jtmunT3xvDHT2SkUjbVm7w/iVxVkC7I1T/ALI+AVhvZ9jrZOm1lM13KaNDn2STCK5NFy1bOc9TFI8g/Y3X7Ql2M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Gq8CeFwT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Gq8CeFwT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EAD83C2BBFC
	for <ddprobe@lists.linux.dev>; Mon, 24 Jun 2024 04:02:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719201743;
	bh=L933EhsbC8PK2XJUwnGF4qFdcipcBDp2mi49NrxLfes=;
	h=To:Subject:From:Date:From;
	b=Gq8CeFwTb6S0i3aIgnaf3uRwqhwimYTYNwqdAUKS6KA7QHcbLLwjq0mPOGFBAYAa0
	 Xtzq0SRzCOFKsIBvn6qtqKBRPjGmOFrpwQtFVlVIfk6af+q8ZRL39ooahUc/sq7rXm
	 KjerC+sqjdKcfiB7wMjosjTuRvLHG5ILfOHFe/wbEjgID9mdv20Y/mS/BCa0PlkfZh
	 YS08V5bahaJ+63oU68MDYmno/eczGw74LWuZOyCRSvRVVy1f7CRCiZv+C6DXjjLnNi
	 1xxmcVOAr6srHCwewklyUV0UqeZZShyDfI+6A9EFe6CJ87xgYMecbhUceBlf2IIsIj
	 5hO2U6lSJMLTQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CBE78C2BD09
	for <ddprobe@lists.linux.dev>; Mon, 24 Jun 2024 04:02:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171920174278.10946.10622147452234750024.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 992bcfd0ab30b5f5b9c0b4fd435502bf7b0790bb2ab16c90d13e86339f293a2e
Date: Mon, 24 Jun 2024 04:02:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719201742
