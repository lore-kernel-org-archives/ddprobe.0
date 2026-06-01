Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41F5418B0A
	for <ddprobe@lists.linux.dev>; Mon,  1 Jun 2026 03:14:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780283674; cv=none; b=Sxd5Ti8LaUrKAnzq0a4cRg2IWuzGIXpvkOacyP35eYajutX9Ki/tEaisXnhNS3RrzgdZpfsYjorIzyA060sebKoPgfjZ4yMGT/a5SnaIWXiSAwOuxM9EdnGnBqh3Ov17DxTWyWVIBciDq2PKqi6kc9DijoS39zCaUUUfThhX7xo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780283674; c=relaxed/simple;
	bh=HaXIn86jfuPESqjyphmGxO6ztQ2PdBVLE09K5x31buo=;
	h=To:Subject:From:Message-Id:Date; b=Vi4hVaHdqawCFYnav6G3NrGoOPOVWOzZVFdnJmhKw1Whf3aZMpCANdThZQffgdx7X3RhtVtBRD8gZwT0CgymJVQFUZOGhmToKQrLwC2PiMYr2tPEK18aqrCLdc7S5wiuY4Or/7OkofqISm+Z6s/MWMUj7Mq8amiPxMsETfnM5Kk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DQpTMhRo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DQpTMhRo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1665C2BCB4
	for <ddprobe@lists.linux.dev>; Mon,  1 Jun 2026 03:14:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780283673;
	bh=HaXIn86jfuPESqjyphmGxO6ztQ2PdBVLE09K5x31buo=;
	h=To:Subject:From:Date:From;
	b=DQpTMhRoLcfqaui3SVddaYRsR0c1L6zhiNDqs2LETkpNmOsyNsJakHnlyUnnbvzMt
	 YBtFo29//8OpZI67vZ+PPFQZ5SCAd740kY60+7fmfZF8evqs5Ni82QDvVGqV+g++Rd
	 xaE5826b8qfogWyciXiP/6mhYXCJphs2JrH+AfHWWIV2Noi8TLEMFyXvQdFqfSv5uL
	 DuJKDpkfw7rUq2NxCQO4/U6K7AEB8yjldIzF9lpXQTlY2jcRcys/wfeVqRZnQuIecX
	 5LJO9N98FbE8TF2lfsbheNIHE5noPW993iSTmmNmJ54ZqOmjs3oaxnJ9AuiY/ttRpU
	 G9hEXAeXi/20w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACFF5CD6E55
	for <ddprobe@lists.linux.dev>; Mon,  1 Jun 2026 03:14:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178028367369.5556.13633764267538181776.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f6bcf16ddb1b82635ee6ff7ed280103c96f99f2d4dc01312bc8d09b882126db1
Date: Mon, 01 Jun 2026 03:14:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780283673
