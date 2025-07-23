Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 215F82E7F25
	for <ddprobe@lists.linux.dev>; Wed, 23 Jul 2025 13:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753278595; cv=none; b=igmy3CR3HxvDT0JzYBom0xbSBL3mL5HrsMgxb98iwq/cr5vdOoXZOWHXaGiS3HShFwUbk4sy76ue/AepH8cLKztd9mSQWO2/lZFjwIF2KIBCZPR0nGn2/LbaLKsmTKEK7QdcySJiwe7ZCPk907MGEClXeNNJdb2j6K4pEd77ggc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753278595; c=relaxed/simple;
	bh=jjcmd2HuqU84qQdjoxHqv7HsfFj/VZpFO3YV9xArYxg=;
	h=To:Subject:From:Message-Id:Date; b=ffb4rvI1HDlj17uDBy9S1wZEa6lVhJtWu2yEP66SDM+ky1Mbc41qxp+7kx9IpmXt7OX4Qm0fXBS1VZm8urELQ5CjbkbbhKPUmQxW7s//yAqwGqWS37QOFTfEU/bOzAovwkEqjFyv0uUKMKF2WJmHz5/ayYojzV7UViaA2aoGX7M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dAaJHtYM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dAaJHtYM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A15C5C4CEEF
	for <ddprobe@lists.linux.dev>; Wed, 23 Jul 2025 13:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753278593;
	bh=jjcmd2HuqU84qQdjoxHqv7HsfFj/VZpFO3YV9xArYxg=;
	h=To:Subject:From:Date:From;
	b=dAaJHtYMi0JJAZwPf8p0RZNNLBtNpCoTmLR7kiTe+NCQsXlfAl6dLNztilTJ4fuPP
	 rBFYxesBDZze8hZglWwYf2TEjoGRfWXrXKVuNVqiti/FTRGyKDbqEPQcE+J5QcqX8q
	 WDcqBluhSBi2IFE32TrS/fmuJLg+B80hn8iRo3f37V+xZLFhPNjVL5kMELPDTkw8j0
	 p5ctdvDSocDMXZ8xu/j60jKmhDariVDohR/2nQhPRslBwiP36/0CII5hUpYD9GkTJa
	 fQx6NyUoXxAu3RPdUZ7WWOBJ6IPRKlHZk/Dik4di7ReVlc0b86EJCxp1NcGTb/Iznl
	 AoMjE2pY3P5Mg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91FB5C83F17
	for <ddprobe@lists.linux.dev>; Wed, 23 Jul 2025 13:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175327859358.6718.15220135692724658998.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b7e608d8e9fe7153469dec92adf9fb1390461fcf16d569b4ff3278d6a5f64db9
Date: Wed, 23 Jul 2025 13:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753278593
