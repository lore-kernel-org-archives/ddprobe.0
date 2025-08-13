Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 115882EBDC7
	for <ddprobe@lists.linux.dev>; Wed, 13 Aug 2025 13:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755093594; cv=none; b=FCCut0EVeS6A7h6/R+lwKTElUMNrKVt/rqAIEPVhhInOVRPBCh0b7uTr5HyGZ6NYP2ZHkB/l9KSdVEWVlyQklTDDeISPS2HEtmCXcgsI6ufzvFx3XugLZO4LU5t10Ht7H7leql7CDSe9y+2TxGibykxQlG4t5ft6UjH8EukoIT0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755093594; c=relaxed/simple;
	bh=40Mlr7wUIokKfwFe9ZsWay+xrtOhUYOhEoX0pZfr6iU=;
	h=To:Subject:From:Message-Id:Date; b=Zm0WToIBAag6Iz+MG6YBwiLqfAXFRytg/q4sIAqQwnviMM/7i7f6aPwB6NJndXKB4Uoc0DypBdd7OSy3TW+1v9+fi7al/HtUapNaNx32X4k5e5neeWls+cxi8H0UcJpRQypZ24hEzqLvY/9/00Yf4BtoXH8H1XeldpfnTwNIqn0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XjhEgJuy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XjhEgJuy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DC26C4CEF6
	for <ddprobe@lists.linux.dev>; Wed, 13 Aug 2025 13:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755093593;
	bh=40Mlr7wUIokKfwFe9ZsWay+xrtOhUYOhEoX0pZfr6iU=;
	h=To:Subject:From:Date:From;
	b=XjhEgJuyg+/fBy2Wyye6uh5ACPzXgK9eKvgQocXXkjoF+LmRhxdIv0whsmFgPUiD2
	 hcvn47MYlwpiUr84n0kriLeci/DwSYELewl0SOdb+bWjgjomQcKx3UidM47yzpvxr6
	 fJsjacBUZ0blN/zK2gwFaInaXnZZfRFTo0WnVsvsiDoUhmikT/8TRhXILnkyoR23hT
	 W1iLkqJVH7XL6NHmop9pe91xP/x9h+NZbMFmMl5AXjMEdOSJwmP15Mq2tS0YbVEr3T
	 jRVVybL/Xbse+xfHAKcsgV8MlY1kgfexq7kg7qOkx1uiN/nG+rpELwDw8/ZCUhzUl5
	 2oS3uTHIr6w6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F7F6CA0EE0
	for <ddprobe@lists.linux.dev>; Wed, 13 Aug 2025 13:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175509359357.7834.3796894714906073334.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8ae5d043a9bd7a3fee32084d39a622c49d94468b1e54a4fb94eae14f50eccdaf
Date: Wed, 13 Aug 2025 13:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755093593
