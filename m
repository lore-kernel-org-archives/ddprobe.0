Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B6E81F3BA3
	for <ddprobe@lists.linux.dev>; Mon,  3 Mar 2025 14:48:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741013334; cv=none; b=ijQHg9eYh2hjGa3ikDz4Qh1wQxf3U1jhvqd+fj/TMYwPZHAqt8++UFJDwgVVFileTIFHY6Z6O7ir0lWblXSUAIBE6LwWuNBz4RplhkG1d9qCJKBNM2+zy0yayo7Gtxj34cE2bDgoY0tWG9MimoRcxdapcvBe62tA9m9ZLDI64wA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741013334; c=relaxed/simple;
	bh=Hnwt+jKeFiNjSOAtAHpqRdsq5G8e7S+NvrHTR0pXLbA=;
	h=To:Subject:From:Message-Id:Date; b=LVV1OwZM71f7d120YdP0YjXYdxiLG2vG02L4JR4LzDPBc/6o/GWxIyv2Rs1KfzIIw32TxsmAZSldM1vqLOhWbdCIh8owqmemdGB/RIVRneVFt4gm45DN0fHT9K7hwHmxqXIcD35MWSHSlyiC1/Mrd/OF6ocRyMdCDn7uaXcWQIk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OJtyCQ7D; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OJtyCQ7D"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2E1AC4CED6
	for <ddprobe@lists.linux.dev>; Mon,  3 Mar 2025 14:48:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741013333;
	bh=Hnwt+jKeFiNjSOAtAHpqRdsq5G8e7S+NvrHTR0pXLbA=;
	h=To:Subject:From:Date:From;
	b=OJtyCQ7DGlJ+bAlSokfwzkvqDyIZSAjzWN5SeTqRu44GM9kalIdajzCfWBQ7QCPMz
	 KDZGuXGoMm4nUCdcLlXO8L82kdz0ZXUu+afaJcpl6YhA9RxIOSlJUY/Rrlz/ftNQfF
	 UZwIyGIe2rp4Tzdi+gTuW0mDfcGn3TUhliIYUaksfdicZSxiJClJgmFVQ05L44R18N
	 vxwQcjeDNay0SQFxKMp7RlMwFZNZwGTMr9b+GNqxtE2ji6v5tLY8qi2wN0pjfzxeRO
	 F8gvln4Vsr/iOqM53VppyrTCIuLIDmYoZKDuXfLuesNzzy0DhLVMBPzuQhXH+70b+t
	 P2KwyziP9WSLw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90831C282CD
	for <ddprobe@lists.linux.dev>; Mon,  3 Mar 2025 14:48:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174101333358.4483.8459298837003113951.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 99493a9fd8ceca0ae22430fde195283115e8f732f33597cff0d1cebe8543eabc
Date: Mon, 03 Mar 2025 14:48:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741013333
