Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32B9C259487
	for <ddprobe@lists.linux.dev>; Fri, 20 Dec 2024 05:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734671754; cv=none; b=Uxvicjl7p+kiJkwgnJUJBl4Rj5vNVdcIGpLxTtdHlhW4ZwdpbeDGrcUcU6ddqesSGlbujl1R967Z1VZssLCYXUIWgsmqIl73Ha0r+9POAFRqv8xcBfCpvSsgisn0idcFBMhXFeCoX68OE9brW3ZDd8QiXDz49atdLiA9kvczrvU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734671754; c=relaxed/simple;
	bh=8nQkUMADbOqzDaDw0VB8KPm1Mp/wYwEqaYdlzq4xlq8=;
	h=To:Subject:From:Message-Id:Date; b=Qo1gh8L72mAr0tYhXap4xVQuWONRsark7rUo81aMDZxt1ltt00Iqiqg+Oz5S2x//cPDcmZBcP3bo68DoV2651GL3iox8idDUuL3oc2I3fi/F4T8NKpou7eULnx4Yxlb3NFcXUKrLoDl4axkNhc9dVqbH5y49CejCpMgbo/DFLzw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jlIyTE3T; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jlIyTE3T"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2834C4CECD
	for <ddprobe@lists.linux.dev>; Fri, 20 Dec 2024 05:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734671753;
	bh=8nQkUMADbOqzDaDw0VB8KPm1Mp/wYwEqaYdlzq4xlq8=;
	h=To:Subject:From:Date:From;
	b=jlIyTE3TfO9S80UNv++asY0nn7akbxnsBP2g62yPjXGS2YXFtBrDk4aWteIKwO5ge
	 G5ebRKlR2IOO1a48Db1GAUKZhVXeLDaA4qZMamdzXdEW8LN3sw9oaR8qgDTHXKW3+h
	 gCisS+nnqIJwXHxh9cfDuC/qit1L3mo/Eewkmv4DIHidLPCl/cqm3TUWG+/EDeHRCh
	 nwd8YlMhkw2Yrfqbp4zlZgf6AZKHdGO9qsR86zQIYe/P7LsF6xmM1Su3HP98hA2/O9
	 AvnM121Q9+1C4PyyJsWOdiqk0UXLoD+ARbVrqJDcjZ61cajKzHHjQP+RLnUqkogKd9
	 kH2fOdao5aXcA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DE3CE77188
	for <ddprobe@lists.linux.dev>; Fri, 20 Dec 2024 05:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173467175363.28342.18235226789936455765.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a380e7823167470925a76f2da18ca11f9d784823cb7f92be39857e6013a889fa
Date: Fri, 20 Dec 2024 05:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734671753
