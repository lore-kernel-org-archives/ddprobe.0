Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 456A7207666
	for <ddprobe@lists.linux.dev>; Fri, 10 Jan 2025 06:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736489754; cv=none; b=cGaC1BkEXSrVY+hTxvjsRwSp+/XYjDEWPFtWs2DNHi9xt7ETTmI2ug73Q7bOErjgYc+GWRP65AR73ZGKX1NXTqV73lrRZmlf44BiyT8NBfQPwuw1T1bjHj0vh7OwTV1AMHR6gFkxRK1ufRA7W6QmvJQVofof1YfWaaoHWzgyulg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736489754; c=relaxed/simple;
	bh=pIK9hoFIHSIgiylXs9v4f0sIpCuvYEIQmasEt3lv4nU=;
	h=To:Subject:From:Message-Id:Date; b=Yo36jXdCd61jHCwsdTU4EnENwAKFQJior/w84tbq7djxYVwgvBPdU7lfYS9wHK1bX82kIWkUXLquxBjExHZIZ9gaIz6QMQfoX2tDdZYjPGulHtzdUx7Nh9HlFD5yiKyl74Jg1iGPnxuixvKOg0JntOLawRucr3dC25AG4Fl2epE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nhvqlua/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nhvqlua/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF348C4CED6
	for <ddprobe@lists.linux.dev>; Fri, 10 Jan 2025 06:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736489753;
	bh=pIK9hoFIHSIgiylXs9v4f0sIpCuvYEIQmasEt3lv4nU=;
	h=To:Subject:From:Date:From;
	b=nhvqlua/yc3NNnKPLRaf6DjLCfi75pGOYdi9ZbE/sKiDmyqTJAQ7zbVzupdomkYok
	 ANSxE9ShZfRmXJermxHeNHFX/QLroDb6FJS4I2vjno2FBCW9MiY+x3yuNqH2skKR8q
	 SL4cPUVhiuh49dqcLKpOTGO+trm7VBs+5mnOU6k4NZjbiyF7jqDnv8Ig8ttp70eYH+
	 4JA5Yxw6fowe/dz5OYvymHl1uiaAE0Qhdpik1UsTyBfHHwkBJKBSCJ8VLxotGwg3Kh
	 i+29Y8658fQ2E+CMapcIUTDd3hnEh3+rWX6z1QelsjOWFQFShszD2WmLvSvxia15oJ
	 7QhpBpslvwQ5g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 951B6E7719C
	for <ddprobe@lists.linux.dev>; Fri, 10 Jan 2025 06:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173648975359.17692.11406927887860319026.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9eb1b9aebcc173a9de299e5e8b40b1578ae0c35c6e7ed46283b9519daf707177
Date: Fri, 10 Jan 2025 06:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736489753
