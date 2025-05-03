Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26B424A29
	for <ddprobe@lists.linux.dev>; Sat,  3 May 2025 04:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746246594; cv=none; b=s/b8+yqnJcGHRG2La9PkbKwCSVCB4/TNpV8sKBycvzkjtAhjwgDW+c4r+vcY/QeN3y13mfGHvMzXXoZJFwUqtQWsAloJV2PPZCOLbVqXvIRPyLPd3lh5VVDf0/fExBREvhBdChFypcH1kLcjkPxPVUErZXQzRwK7l457zu5wnW0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746246594; c=relaxed/simple;
	bh=sxd6iu4H0gwcaKOsx0B3kqqsfxia4dkp51ykeCCTo5Q=;
	h=To:Subject:From:Message-Id:Date; b=TcWnDSyuqUTzjm3tu7e5/HompjI+X2+SVaxfr7qTqt9tI20i67qm2+W309lNfEQo0eWGsfCOnw8V8NRxNDU8+SNqBHaMF9a5cOh55Fatuti2FHgttJtIckrzHXbjukXikoZu8yFGEQimFbrKlYYFJUIe9oy5cQUNAA+zJlrNqn8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WXl8talO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WXl8talO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A35BAC4CEE3
	for <ddprobe@lists.linux.dev>; Sat,  3 May 2025 04:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746246593;
	bh=sxd6iu4H0gwcaKOsx0B3kqqsfxia4dkp51ykeCCTo5Q=;
	h=To:Subject:From:Date:From;
	b=WXl8talOfgRYEzMO07W/qI6EszWo/1VXEN8CUJa1VVb5eqW1DtweQmaDOYhvcoLpm
	 LieU7mZN/ObBtkaUrZ9MOpFQYF4Ug32lZgGYszU9k+kH56duo+2ptqR+FtDyNpatZu
	 3rYNjZNOuSDQC+H0f/dORu+SqF75DeGxlS5hpcxqh5xMQ50FbYNpRaQkXJPMQ/J7w2
	 xkA55OYS/cgazTcpCQYwa458dw0bliq29UhaBcWoQhN0lVpnGWX2CqZTgOA03d9wyA
	 sCWnWR1vsvoHlprX86V/Km/2ppK/NyxWQKgAY66dT1cDa5RQlHGUvnycqR6Jl/hF4Q
	 qMdsjyEvAFD4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94255C369D9
	for <ddprobe@lists.linux.dev>; Sat,  3 May 2025 04:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174624659357.19884.4144042310468354263.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8cdf1afdc8b828c4a05b5d5296be5d48d6f7b1abf8fa770d99d8d6e5a6716a5f
Date: Sat, 03 May 2025 04:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746246593
