Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2231ADDAD
	for <ddprobe@lists.linux.dev>; Thu, 17 Jul 2025 11:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752752395; cv=none; b=FltxtX51zizXKn6tqJuAAPKQJ3qx6HwdA4mnWDMO6/lelqJFZGIeQOGV6rBX4C6YSMFkUVSLnbSbyqbcO3nmJQVuFIkYP0un5chOQLQfu65pNK/MlIXGiv2UyC9tH99TbH80xLYzSjCty0y2Yiz657zgT8kScr1ZaTb3s9xE2AA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752752395; c=relaxed/simple;
	bh=Yzah1mA8k79Gt3RocgKVXee/Jrauk6jkj/KWz3s5AiM=;
	h=To:Subject:From:Message-Id:Date; b=CjR+EQi6eddIySS77o3ry3SarOn41tMzHFWOK/5T2UcZExeTRXpytFhOg4Jjh6x2kCwHfAmGHieHjbMoTm1mcmpXyjKw8MDQs2HoxpKS+nAHr2W4lkJUtJavSor3AGHVqHB4cwVNjD3ZH9GyXAp861lt5tg6S8HnaWRiL7+JKEU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nl3yaZ+9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nl3yaZ+9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FA21C4CEE3
	for <ddprobe@lists.linux.dev>; Thu, 17 Jul 2025 11:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752752393;
	bh=Yzah1mA8k79Gt3RocgKVXee/Jrauk6jkj/KWz3s5AiM=;
	h=To:Subject:From:Date:From;
	b=nl3yaZ+90Ht2yaNqWu6siw1bQctFS1g+sPxJB8RckUCMoXCwIruwrd2CT8QZI+wvu
	 NqOs33/CB0Q2N3iHJZlKB89koqYTU/AiP87rvNu3DGNthrs2i8VVq+KnsxDClnSbSp
	 8NZw8rCf3YGQan7Q5HzMNS67uh7qDHMele8jXEUurgC4bFqGti+xZPD3PzTydUL7xC
	 Rk8g4OMS/VfVjvM8j2q4scSwpYhl0S+abaXcbQsYB9+cmQW1yGkb+w1wjZpsG5gjNK
	 RjVwrQx5s1vNMDRjXB8tcJapyK73/fPRlJBg5f2pr07mgTSLeVegTKBYEBf9kZDHRQ
	 YMTTGfODc76QA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8DF4CC83F1A
	for <ddprobe@lists.linux.dev>; Thu, 17 Jul 2025 11:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175275239357.1662.14286393701380745256.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 77651214b4dfd6a5fce2d1875481947b87b381b7bdeeac2e7d29bf7e8ec45fb4
Date: Thu, 17 Jul 2025 11:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752752393
