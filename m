Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 350982798E9
	for <ddprobe@lists.linux.dev>; Wed, 23 Apr 2025 16:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745425194; cv=none; b=GHMRsLeuWPPWi1HvFgw2Zyf6yCU/Y60EFlP+dvQorKH12J+hGhuYsiuT0rVYHtQssoKd6KxbvIfmdVyLhOR5/gbP4MTSMdcTuZSVZQjUAKSrcb91Erc2hjt1Q+KEm3LsjQC1tC33SIVMuXIEHrQ+p7HytCPiRQ/Tvg4tIi1Dljc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745425194; c=relaxed/simple;
	bh=fL3FwWTFTJEBPiTx8Bw4qQNLQI78UD1xCkBPTOuVZzg=;
	h=To:Subject:From:Message-Id:Date; b=Av6xkBtX8si7xsuskKLdsWvdaMebN+h7ZJV18X7WJWnchI6Jn85cXnnl6HcKqQBdNmUbGXnD1m1IzaQUc5dwk2y8zq/1scEtijzrb+u45XceE2iS1pvWq+tRk9kXD54gVfIhGHu8kj8yGs6CdPleRMd72FagKXW4mWAao7E8QZ8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ej3ZpwEd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ej3ZpwEd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1267C4CEE2
	for <ddprobe@lists.linux.dev>; Wed, 23 Apr 2025 16:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745425193;
	bh=fL3FwWTFTJEBPiTx8Bw4qQNLQI78UD1xCkBPTOuVZzg=;
	h=To:Subject:From:Date:From;
	b=Ej3ZpwEdOm+jE8tSAZ6HI4eI4sYX/fCYWifhO5KGYqRhJ3kZk0uF4Ja0ifqG1n7uA
	 S0EUeB4zjX64xesEGdDJqcX1Etf1FMqnvY8PbqlQBsHsyteR1spe5QUtPkn9MBlO9q
	 7ouPwttMO0A2uLnu8f3lrTwF3SqN0om0zbSUC99YPRqMabnHQfd/eVS3L0Kafs2lv1
	 vFLhKM0gQ7uyB9GnvdI22XvFsvv2d/UeVKrOTdgLAu81qFVqVydNFc+7mE2CugPze4
	 fMsWTt8SQ8sCnZKkBzXAhYi/l801ezprH6qJJvA9V7ywXzv4RSFL/sC6QYPEBWFYAo
	 WndH2ad8DuepA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92A3CC369CB
	for <ddprobe@lists.linux.dev>; Wed, 23 Apr 2025 16:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174542519358.25934.7434154448175296323.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a21d5b2c685069544043139739569b0a03d8417d384d9da9585a9fb3db1fdb11
Date: Wed, 23 Apr 2025 16:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745425193
