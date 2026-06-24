Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 377FC2D0620
	for <ddprobe@lists.linux.dev>; Wed, 24 Jun 2026 12:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782305254; cv=none; b=PmteWk1zg4yE/T6SFXqtoCmp+E3C/isuqfrJqH2cBQ/5qasWE4DVXdjU43LpPjkLGk/suFfqtG2JPpP8EI6Lf55NfHjxiQnMSp+O5BWMSnB/qmn/NEDMNB8nTL1BvYwyR0wb9rGB5/6mZjf6/ZWEv0yQVx/Llo7Tc9WauEB1oZ8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782305254; c=relaxed/simple;
	bh=jeSzO9JoR37Qdld46t8bf4hhcd0OQxnhGhJLXGKxNd0=;
	h=To:Subject:From:Message-Id:Date; b=TrFQx/vmibJqLmZf+tCxCZRKda2Gel4zfz0zSjweo/3ADIgDAXtTu7X3ziyjxj/TvtZYvp8I+UlMHMNxDDH+323YuiKMjq7UqtVBi7MXwz6KwzclrbjoWI3yD2ke7EQOh1sR25n9k9M0NptMmQ1A/ljSoz7+PWYVvv14wC9FqZ8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RuGDlm+b; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RuGDlm+b"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEA68C2BCB4
	for <ddprobe@lists.linux.dev>; Wed, 24 Jun 2026 12:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782305253;
	bh=jeSzO9JoR37Qdld46t8bf4hhcd0OQxnhGhJLXGKxNd0=;
	h=To:Subject:From:Date:From;
	b=RuGDlm+bABA8pLJqh7Hg72kT1GmTO0zuyNXblDOSCQ3gsjmXihS2XZ2diW2zlWoxq
	 oZlDE6DAefl1ABclajG8TGsze1r20dSKSKoZ64dvwm4vs3ifvABbwUv69dYiVmDAYX
	 IfLS1aIdRCzrPB1+YfGWTTspF0J353M1f6BN2kQh0vk0gUJOD7l47EAmpFtf4jVWBF
	 FpU5bJ4SkyMGHa6El8diyWvaVqDgBPEZE4Jx0j7sNjNQ8G4EwJ9ZYDBA+XRLpFZcb3
	 4tYTcOi6E5foizFMRmfAljbC7/PysVtkxgxBxlLTVkOTf/0NyEIijKaEQKWZp53VtN
	 ma2ySwJQjvc/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B244ACDB471
	for <ddprobe@lists.linux.dev>; Wed, 24 Jun 2026 12:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178230525371.15499.14576418879329107660.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8fe79568e5f166c755b652c4aee075d7903d02996372acde66c1a1f29236c787
Date: Wed, 24 Jun 2026 12:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782305253
