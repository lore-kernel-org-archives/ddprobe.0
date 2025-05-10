Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AAC81EB196
	for <ddprobe@lists.linux.dev>; Sat, 10 May 2025 12:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746881394; cv=none; b=S3XQ6fLWUAuGyreslJ7aYbkSbp7fRQIrD+gobTbW4Hza/U4Vlq22g4e60AOvviSRXaBxOoLBB3fL69KPcRvsPBJZ9IVOZPLbTvHTyU3Dn92RUNJtKQCaj0owv74VTqW43Z6lEOdSBmorY6aocbQgxxqkfzPgTVfF/5xiVp9J1DE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746881394; c=relaxed/simple;
	bh=JCoREaot1HDAx/vFHKLHdbrTEYFltdpWoQOkUSM0TyI=;
	h=To:Subject:From:Message-Id:Date; b=r8N4/t/yzXdWR93q6HcGcGRnm4G/JywzcLXZjIGN374iBb4RNTd4jAdrvJGr4lxEFqAD5mPsTiE0/++5QJA5LO5/TXbB808ytc43gNQZVdlD9HMshSFEHJIWBxTxZ9gF1RlYo9pbZhjY7+qAWv0NSlVtGxhO/ITOZCFdwsOrpAA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rUiOO52Q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rUiOO52Q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3965C4CEE2
	for <ddprobe@lists.linux.dev>; Sat, 10 May 2025 12:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746881393;
	bh=JCoREaot1HDAx/vFHKLHdbrTEYFltdpWoQOkUSM0TyI=;
	h=To:Subject:From:Date:From;
	b=rUiOO52QmlV5GGPvOjsvi0GI6giobcn9jjia8OkIOtNpINGXyz7mi7K4+UByA/EB5
	 LZwZYxB7/TCA7b2JDZIAdprbIPirRlSCtPg7xMz7K6unSIQlPkE6KkbxqTNP+xOBOc
	 drIlaxTzF7VtRqiqp1qettce9KaJ/qqLev4DGUMH0MqCbVS5i466H5iVJ6gJ3wVVQM
	 uyABEi58Cx/vGNGn9MHHdY0sBoVIUxwNtxpkbCqbwI8888O+3rfZyucAYWRttStu8J
	 sm7zPnc2Cp907FczNbkuNz57d9NHIIk6i6Zsu5NIQKJUmM/MwUKRar3gxuBIKhv5fp
	 4Cr83xPBGXoIw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FAFDC3ABC3
	for <ddprobe@lists.linux.dev>; Sat, 10 May 2025 12:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174688139358.17915.539981864845764714.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 330aeafa2529026cfba8051682f73a28c891a59868d599cb5044246324b84ee2
Date: Sat, 10 May 2025 12:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746881393
