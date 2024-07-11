Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51CE38249A
	for <ddprobe@lists.linux.dev>; Thu, 11 Jul 2024 06:37:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720679843; cv=none; b=rqJ48LTmT6QaZ4RwhS1TugPGMURQ3xu/l+Bp0p43xhO/f+HAytbS77KB+E0JM86t5P45Zaf5++vLtiQegHMSaqAKeGDHKK1XQ3Osq94rIlwpfwODEuCNIMHqGugd7Z4RG6rSUxiEgCUxcLT/pFtpirlnV0KOZG3rTt7432jqPSs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720679843; c=relaxed/simple;
	bh=skkmvf5GKcBkfFtrcoogZWlenKlox5wwNGAGybqgIVk=;
	h=To:Subject:From:Message-Id:Date; b=XniVurtWC6BJtGR9jlH1sAIHCap/V8nqrDwSGawIjvFgh3ZreNX9IccrncIJSQl0hkIRMDLNi7aAj7s5NDbVbONeu1I/jPxu8EAHBADM7x7lbSiJr8BC4FDsoTUYkocrGhUyr4Ee8TrxpuQ8IngHSCCISvNDqqHbOetoKEwUj40=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SwQsefeG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SwQsefeG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF9B6C116B1
	for <ddprobe@lists.linux.dev>; Thu, 11 Jul 2024 06:37:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720679842;
	bh=skkmvf5GKcBkfFtrcoogZWlenKlox5wwNGAGybqgIVk=;
	h=To:Subject:From:Date:From;
	b=SwQsefeGcL+tWPq1jQiH/9x2/fn0IOrLqYgUdRgeYyKHPNzhBNbvZitSuVzYHeRSs
	 wo2PzylXT7Zs74xaFQnpTla6hSTUBAf4i6QnIIzI81E7Dr/4XDy/rQlkLh5ju8qlWm
	 XkOb8Bn+7ppniKTF0aTFrZQ7bi/B8VqHB42xv0b4BHleRzbxGER/oJxNKaE4COtkx/
	 vVEtqGLrFCF1Rx6DxJm9SwtOFanrkt/xGQ8PZgVXNxcf/xBRoAvIPusHhP5reQv9zV
	 AFOxzA86GHfCt2tS/N2oyRpYyt5KnFtbgS+CX0eAQhtmAhNotq5DIT+H0AW7OmWUNn
	 ETsV6qqSu4ZfQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BFC73C3271E
	for <ddprobe@lists.linux.dev>; Thu, 11 Jul 2024 06:37:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172067984277.17756.5208547895170636618.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 500b5bd311839cce6c6365d00c7c028cc3e7d26568c96116523ad48b6e97e2e0
Date: Thu, 11 Jul 2024 06:37:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720679842
