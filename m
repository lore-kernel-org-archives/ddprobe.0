Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16A9DFBF6
	for <ddprobe@lists.linux.dev>; Sat,  5 Jul 2025 17:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751736594; cv=none; b=RopVXmy0RPIBETc655Vj54kloj3Js/m48bwxC4NadH4BG+QrReLfHjPNAO9p5CNO7EdCkzEMNuadhADcyQoHxDGQiQZCwJ1qLoH6gjfIKTs4yEfiTy+lSa20rqBgJg5S4YOL5LBKVnj3PBiP5l7gGkrVRc9CLhIjPx/+D8ooD4I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751736594; c=relaxed/simple;
	bh=p4DsCvgtjmKYqyXOKW8EnVKTSxGxg3pcPysxee9lqQE=;
	h=To:Subject:From:Message-Id:Date; b=d9obXtV7jCBeJ7c9i0Y+gXEMpU04roJFRIU1bhloMM1/eVkBB7j67bLvneq9YpOOkq5JOmOBPAtW92210flrAwrdweqrq8o2gyvbbgXUI63aYl+gaMrCPWx7l4KNbkKcIlwe3/Z5geGk4qCpTAnwJ1SNtSqVonYbD3/rvc2iKI0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uezMam3K; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uezMam3K"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A458CC4CEE7
	for <ddprobe@lists.linux.dev>; Sat,  5 Jul 2025 17:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751736593;
	bh=p4DsCvgtjmKYqyXOKW8EnVKTSxGxg3pcPysxee9lqQE=;
	h=To:Subject:From:Date:From;
	b=uezMam3KrBt8EpnJE8Z9ilPGg3V5Q1FGSO5J0JbBgalzAuuEtUQw36yFKXJ+URiBh
	 vNgZPmjCGII+HRWD0mdaEgJAUdBTNWIdc9Qa5FGxKVYlPw3sH6kKrzJZQ9oK1gXrMT
	 5nlfPVnOTJqWVPcXnF7GKxWpiz2AarCR5Dn8uIKdkVwVITfG93Yi3D6Uatg0z0ehmh
	 PUnKTgDhjc6U0KqYCg2TYvuENL2KNy91Kfl6D0jLCFlppFvClcHbOXi2L2Ahk4Nvil
	 0A++Bi41QZORdGVju/qkBxOuKCUqzeOmDO92o5W4HT7xbXW8xbRoUGYMVoBu9KuvJv
	 UyTFIIBTy820w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9401AC8303C
	for <ddprobe@lists.linux.dev>; Sat,  5 Jul 2025 17:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175173659357.14632.5672629942815216986.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 41cefc0d918efac2a2835722dc9e1d96682ce3c0c3c5fa0094f1cfc6a2fd4bee
Date: Sat, 05 Jul 2025 17:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751736593
