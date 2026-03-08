Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 100FE28FFF6
	for <ddprobe@lists.linux.dev>; Sun,  8 Mar 2026 15:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772982894; cv=none; b=DmPuopUhsKxZeZu09HKCII09/nfNcmhFxgsQjtcXmRC1WSL/EKSqXHh73U+NVHGs2cyTxScigXr/gkNNg+FSF33tBfeLAQJnHZ5Oy06yd5AJnwdR7TJitJG3MhWqBqQ8WzQ5WcbMb0Q20BaYWBgzYDWYO0zaFNNobQBoDtI9mlc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772982894; c=relaxed/simple;
	bh=IHsoJk14ayrnsL7iB2NoSDHx4UNb6y/BM7WWkRj84SU=;
	h=To:Subject:From:Message-Id:Date; b=WjP4sSVpfEi+qbHLLgd3Y2FkWkJSHkSvq46OXjwxI3nsCwLn4Npc9pRlvJSIhnkAU5hAwsZDuYO39VrrG3UknkOLCksmM1T1FP2UkyNSr4BCLoaqL8VdBcLiDQYqR0dkUs+BEkQM6ZnsCIcDXWRz5BEFKKG98T2AKCA4ZU57IzY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DDOx+EQ7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DDOx+EQ7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5919C2BC9E
	for <ddprobe@lists.linux.dev>; Sun,  8 Mar 2026 15:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772982893;
	bh=IHsoJk14ayrnsL7iB2NoSDHx4UNb6y/BM7WWkRj84SU=;
	h=To:Subject:From:Date:From;
	b=DDOx+EQ7pkkoixt2xCV0EuKAhAiawrZKRAlsL4guE/bgGsvUSWNkOo+cROR/hzmT2
	 bH0ERPAMAX2ZsKdYNhqfXqz9U39aDh+/nIDZatc+F2pPTcN6k8H6dWLv+16wofIS6u
	 B09ZvI9wLcobgb8sO8/eIJFV4uY4r5rmzDwqe1HfPOn0g4Tbvu5ZYotXQas/5oKXSJ
	 EHICGExH6KCka+CTtWrF4FvRTF8YWV2wpVUp+a4r1OpcGFCgc+jqUgAquglm+BHwsw
	 fpKV6fAKD0jxrqDEm+EI8ger98mYiL2vwmV4T2qJfbXNn9maPAkvX3oX4cj6OKQyEK
	 lzzv5uLQox9EQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91EADEA8529
	for <ddprobe@lists.linux.dev>; Sun,  8 Mar 2026 15:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177298289358.5666.17650884204198473541.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 537d75205106591fb87eed67dc24bc9730e698c202eaf5cfd86f25650e723d04
Date: Sun, 08 Mar 2026 15:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772982893
