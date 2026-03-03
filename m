Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40EEA2153D8
	for <ddprobe@lists.linux.dev>; Tue,  3 Mar 2026 18:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772564094; cv=none; b=cJKLSa+zz963JSGTOTyZBidsf+2ZIdJZbOkDBiPzwppjn52DCryJUHiVU3oL5a+5Rr56gCC9wkD48QGLWv6QuI9YHqFweVxSQi41w/AJZvrrbz7qjR/i57qla70BGYqSfT87qKrv+fu0lJ5dSwfkty+ws3D7NgifToMagIltPjs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772564094; c=relaxed/simple;
	bh=sFAbkVAb/RWPRpMu2TdbqR0ihdLTJ1tcZnUTEsHltS4=;
	h=To:Subject:From:Message-Id:Date; b=tRk7WrCT7x9hj+oCrGKC/qqWk/cq/wz4OdXe9yT5C5BcsJj1cOTvEQYU0dt9+kYVcmXyeznSgjdneLgh1gg/JaVZ+C7TXYF4c71I5B55XXLxVLjLzSQH1Pjt2UfhkWm5q5x+OrYVx5EHFLLnEmIcDjJRnixQVIU8tM4KUwwB9bM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bWlvdIiD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bWlvdIiD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD8A8C116C6
	for <ddprobe@lists.linux.dev>; Tue,  3 Mar 2026 18:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772564093;
	bh=sFAbkVAb/RWPRpMu2TdbqR0ihdLTJ1tcZnUTEsHltS4=;
	h=To:Subject:From:Date:From;
	b=bWlvdIiDXBR7fY4rhtXT28vq76hVt/BWB/Zg10FQ6rFE/qX7kb/vcROfiI5dJ13NT
	 OS3vh83vl9posBxUsvFuk55MEs5/2CjZnZo8X2oHoom9h0qXs6eS9AErGG1FmJJ2B0
	 ITvuXJS8rsM60Y8mcFcX7lt3FmXQjIOCxl1S/8FBUllXMlQ4tMpk5ho+q7oWkhGePD
	 by12OrAzRvSBZuJrnKE/q56Z12aMZBJLhowTlTy9i3OgTVBmtrsnrpq25TXQusaka3
	 kYGObCiZsTlUajKJ/guCMPIKnwKisgf5yVH6RE+qblTST+NamV1Mr3TaM/liagCpQa
	 HtD/KN3k/uJLw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2F4EEDEBE6
	for <ddprobe@lists.linux.dev>; Tue,  3 Mar 2026 18:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177256409363.19003.17524300835579056803.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e8925a0a7b3a9d2eec1f3752cddd0cadab730e25c2dabf6b50c078f407fbe8cc
Date: Tue, 03 Mar 2026 18:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772564093
