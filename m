Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 349D513C8EA
	for <ddprobe@lists.linux.dev>; Thu, 25 Dec 2025 13:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766669634; cv=none; b=p8ItflfZsZrWcZyc/KfgWbM+LG6xYmTroOfPPnAZiEz3xDs5Q5QkMzUqTV1h5GIbduuXbpwda47Lb3uN+KCziLpPKwtslCT1tMj7h9Pp1deBo5BtkCNrxTEWc/oircx6pNwVRDmiPoETVwSTkjK87FH6iqUG0C/hDEGFUHgjEYo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766669634; c=relaxed/simple;
	bh=N1EUtaPmK8hMfYta/SsT4P3fZWls54eY2X9paxB7baM=;
	h=To:Subject:From:Message-Id:Date; b=AyLm8Ga/c9pDsLE7uRitQNHB5QpXCJN2llUM+ghm93QlOA3oVvjSuavvqBopvsR+byXEiTNs5yjpOKU2jM8yn6v5l/+z/tosqnUWN9d7wTKHQ5w6M/5nrTBCMn0VeP+PcZTHZpZ8pld/IKyNc9YXudy6o5lEcsnUtdVt2arjqs4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LMXrlsLx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LMXrlsLx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6DBDC4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 25 Dec 2025 13:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766669633;
	bh=N1EUtaPmK8hMfYta/SsT4P3fZWls54eY2X9paxB7baM=;
	h=To:Subject:From:Date:From;
	b=LMXrlsLxjvQbVswE1BDvsWoY6pqpwP5NNzHCVlb2vjDmn1YaB4rDKPt1QsNhy8PaX
	 +43ClSINFjQ5gt1+XeygW0F0j7MhMU+bfCXHp/nwxpNnhR60PA4+kcWLa4hXlvGhZt
	 kZy3TugBsZslDPrlCsMgp8ZDw1cM9Gz2FlaUKzXUNzNQ2BoNOQjRO7O7/qH89IamAQ
	 UYsMjWV/YAKiVOehsvbROrDIF/V2wxjVY9lfhKkFml5O9/Oh4/qOBJ8vg38KkNaZoD
	 rXt3rcSw0Al+xTm9eZO8bT7eDXlaHeJT9SMKOCX4pvMU0hwjantAQ6q5Z2pIRbCRTp
	 eMoz4gpf+JBPA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 954ADE7AD44
	for <ddprobe@lists.linux.dev>; Thu, 25 Dec 2025 13:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176666963358.18889.7973370063844744498.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 04a2b1476f6c18c4cebca1990309d2f256c19401b5466ceecba58394cedb52df
Date: Thu, 25 Dec 2025 13:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766669633
