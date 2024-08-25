Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EE139475
	for <ddprobe@lists.linux.dev>; Sun, 25 Aug 2024 06:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724568354; cv=none; b=kjJX4tIlhvoAVpnBQl2UqKhBpBT+MW+zDxxQwUk5kp0NJ75q1PGn5ehhk+ms6sKAuH09vHvS5mkoGDGvEwZMuUDkEq1ryRQMX0z8Q/E+rArUhFXLeFVmvZWGH62g6IFStv4x6a99PkZCrwI89VjyfQ1F8/K5gco/sfaovzGP10w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724568354; c=relaxed/simple;
	bh=sxzUKTJ96YG7HhbdzokBdl3c1VlSJH/r4DHAnfz1ZrY=;
	h=To:Subject:From:Message-Id:Date; b=EQ/6HIAHtNmvGYewDBefTFTN6pkHXzPSUZuwgsB0MUpACQvaQirD2dHMuNaXHHiHLWWuhj5XlP8cKrkyTsr7Tv9YxBsdDc0ckDM8lhocguSiPM6x4heyLZorrXyv266HGq8okzQELa8ygEv1tEmYI2VY++MEKItJLwOyb3YDbME=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MQvC+2u1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MQvC+2u1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B098AC32782
	for <ddprobe@lists.linux.dev>; Sun, 25 Aug 2024 06:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724568353;
	bh=sxzUKTJ96YG7HhbdzokBdl3c1VlSJH/r4DHAnfz1ZrY=;
	h=To:Subject:From:Date:From;
	b=MQvC+2u1aRFenATZpzMpB9bRvc383TUiCBBrPJIJVumx8cG9lRON4V6lmgVKb0U+L
	 TcmIvKqw+uxlFlhe6u0qdAP3Znpk8EpZOyNclFoIcdGNPJ5Nnlj3B5eAPMRAaRVUP7
	 B44UkncTaXFHngDa9XK7z7w4l3ATMgulx5OaOuplpKgQlsO5qGRQS+7ZiVJvpI9azH
	 22uIZlGAIc1aODOzMuT8z5RwSMXAft2zMD2y1waszvjHE8NcVSZQzX249DzPODGjTo
	 /UU8+TbhMzg2tfVNsgIeSPAibwipBtfUQ5DObO4dw53r60NHM0Ppy8NkMk5UkDLfua
	 hz2r7Y+Ahr+fQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E24EC5320E
	for <ddprobe@lists.linux.dev>; Sun, 25 Aug 2024 06:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172456835361.11807.14630202603749313867.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2ba1df22377e6430da096c8f1fbb71d697cf3e3f84046be37c46860f5a74ce4e
Date: Sun, 25 Aug 2024 06:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724568353
