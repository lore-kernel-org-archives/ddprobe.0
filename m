Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F2BC241E4E
	for <ddprobe@lists.linux.dev>; Fri, 16 Feb 2024 22:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708124297; cv=none; b=ud0BBm33pF89eKr+1uS6K5nxdGIsv2pgWgA2i1kJ+Punvgzzo2jJ317atYl51R7E3bEAwACwxVuj+xuv+lDecuAj8rjDzXJaZseUeEpIJ044Byk8FLz4te8EmFP3HPgy9py6nOjPOFNQ1gem5PkEjzOLD4FuxWi+pHxlWPX+snw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708124297; c=relaxed/simple;
	bh=0H9zrlGbsaY8ESz7ZfdpXleOohWhwluHuJuRnQTKF1E=;
	h=To:Subject:From:Message-Id:Date; b=MvlJlhXPDJ6EouY/Yhrv2nksH/tjpo/ErjMKtqC1JCtpM5s861OrxjbM7BZY3k8OH7JX2/JTgW7aD0PuHHSMgs5MpQbpxjPQ+Azox4X7LqydFIhNCh0VWxtKpvxIK0/K9OgKcz//3yN0zSryns7Dbqxeg/Iu9cZdsZ91cXpczLI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U3M8YQo/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U3M8YQo/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7C890C433F1
	for <ddprobe@lists.linux.dev>; Fri, 16 Feb 2024 22:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1708124296;
	bh=0H9zrlGbsaY8ESz7ZfdpXleOohWhwluHuJuRnQTKF1E=;
	h=To:Subject:From:Date:From;
	b=U3M8YQo/kkdrUUxZKf87s4ZX8h0VSGjwKUIpxMkuhQzK6RD9U7FDGlAw0ZRDIXdjN
	 q4ZArdJP9+3dbVflrOZUKXejn223nNZ3GRttVwYCC4/4BsznjvjFbLmBLyBPLylxkX
	 96xuxaU6pKcrtsWuCOXqE5zhA5iQ6GHiteZybn7iTCTxu8Lsa/9XaYu3nF3ytYLCPJ
	 ONOH/NIWFVHcRHYiev3EeheufBE77SklO6Q9Zh2RIctzF97nwc9iXRm/ziHbAdnkEx
	 j5BnFcNFo9jh4cBzJxUlbbXTW0vWXisq6ImmOdjCAP3Q8Rhv1YSsD8DAK0iXmfF3N1
	 XBsQwXsTcKZXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5FE1BC48260
	for <ddprobe@lists.linux.dev>; Fri, 16 Feb 2024 22:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170812429638.25629.4066408104494036372.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 60d9c5b84e30e43a777efed9953abaf317371ffc162e3a247394449767932ad7
Date: Fri, 16 Feb 2024 22:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1708124296
