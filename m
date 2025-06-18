Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2131D1922C0
	for <ddprobe@lists.linux.dev>; Wed, 18 Jun 2025 05:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750223994; cv=none; b=HS9iV+ns3nOYkVf/TewyOdw6KrpKQwWHKT+kPQzpZb89JWXODElQUjgtZM/frLWMdLdbAuUqvYLm9i1nk8hd6u79lIJJ2UUydbqPT/WOau12Cro6WFIlEMscukBkFM3nbhDpjpISX/1j+YN7EaEpiesfbhPfJTMCShrcZh2B9kk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750223994; c=relaxed/simple;
	bh=kB3Gle2X0/2eluA9geSKExc08Tv3Cm70yGB0jBGAMag=;
	h=To:Subject:From:Message-Id:Date; b=bUcpdohg1QkL3WumFaxjnfak7jozoLUW6Otbh2QKrij81p7BpZsnHf7Rfqk/LfUEDZc7QC/jjI/Z+RBABrUdb5Kk2RKqUZjeeW1sQ+42h/2W7jVT5b3LTqEfZQ7IAcZHQ/t9uoByVn74joUDiqY4jMHjML0mVa0h37J5ObAjBi0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c012McVR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c012McVR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEA17C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 18 Jun 2025 05:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750223993;
	bh=kB3Gle2X0/2eluA9geSKExc08Tv3Cm70yGB0jBGAMag=;
	h=To:Subject:From:Date:From;
	b=c012McVR5EdclG94/caxGK/b6gkDAf9JcAEEllonJ5xBrwIZuf+Zu/Z6l3k6hIoHz
	 NbAGLIg77C1mU+S8S87f8WXj/LATf7NoRkwtVjBPlYqiMzz9syO0RJPoIomdgxSfO/
	 MX2mz8oDY5Efg97X93JvUtSiBKx52MVkyOCMNEuB/58kLobnbatKwKQ3z3vxLc/9El
	 qIBt15tn8+JkIchjNKFTWqubTukXplklfOVULEwOkPOsd0UnHxhQLl4iY4ZCEzqE+9
	 CQ4GkLaCIfglz8GrS4rmOe/blqQd4xx7NwMPsjpIiI9qNS3ikLqLgxsT8QM/yEjCr9
	 kP9CjvVgfOTGg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 954C6C71157
	for <ddprobe@lists.linux.dev>; Wed, 18 Jun 2025 05:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175022399358.31704.17732654975127530076.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9c5c300a2a03983bacdc69d85bfe88711ffac3cf15f86097763595e62edb89ab
Date: Wed, 18 Jun 2025 05:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750223993
