Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C58D2279DCE
	for <ddprobe@lists.linux.dev>; Wed,  2 Jul 2025 21:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751491793; cv=none; b=mwA88jRsEtQGyZm8Z0OSFnIGyalWkbRT/crJfwPs9ltvjVd61l+qC+DOitm6zEg48nON1j/W/hz9i/iCImEEuV8VJaysXNcQuuyiwKSZa9kdLVT5kSuC/aU7T8EKnpK97VP+rEx/H4OaEtYVKVzrnH2GphEkAN4ePQ61Ca81RoI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751491793; c=relaxed/simple;
	bh=DgQeOIFs/hVNrJnEs0RQXVF16Hv76xmuJceLDKI6SAA=;
	h=To:Subject:From:Message-Id:Date; b=XT+0F/KCxD0+rPd+vr5t60KS1gU0HyaMfhVsvZxX6WJ9tzYeuboKpUpL2yeQ2bFNM5XBhRzbLw+v77cAqlqZg9tf+PlsUWEtMjorZ0FPRJr8piJoG2Zb0HJSiBR6TZnqwgQvFEDTDTh2iRb1W7ySZcYH1igdqPTaySA3QhTdMkU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JDj0d4os; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JDj0d4os"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A52F2C4CEEE
	for <ddprobe@lists.linux.dev>; Wed,  2 Jul 2025 21:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751491793;
	bh=DgQeOIFs/hVNrJnEs0RQXVF16Hv76xmuJceLDKI6SAA=;
	h=To:Subject:From:Date:From;
	b=JDj0d4osNGYjI/bbpPGpzVUDCa+aH63s2WH32xCCgcJf5+lV45T1AZbW35NgmwZoC
	 yyNXGY0Ew+ueSPoZASzE4ET0XWp/O/jQZTZFmdQOSDQSGuT8M+fGyyXuZalK+kANtu
	 NVvHp9VaaSEX2yTzREBe9HmVQw3uXQTbEZ9cXhpaVc0m1GA5YPPp/ohjTudxBNVL9j
	 Cdky5xfM41cQ4Yt4lo06BJBN9pyRzHltZSSsfnq2zzSQtp/n526j+LP0djf8xO+LGR
	 13y07ilCGyhMlogZ7L6c1L61WXZ+61myt/T5DKJht8K+9ZdFIlYlp5PNHQJNCKjOwh
	 ioJIkSSEjfZ2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91107C8303C
	for <ddprobe@lists.linux.dev>; Wed,  2 Jul 2025 21:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175149179358.991.10999833624181959446.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 236c64e818fa9a7d2be546fa3386d1f7f4e7d5476dd5b3c137bb9227cb909ff7
Date: Wed, 02 Jul 2025 21:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751491793
