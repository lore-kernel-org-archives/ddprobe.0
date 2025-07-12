Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DC9B5258
	for <ddprobe@lists.linux.dev>; Sat, 12 Jul 2025 17:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752340194; cv=none; b=FnN20Oc3EDwlciYb6+VVV5wDRu3MWbA+tsoi6BxZqymnaaMOV8lQYZq0YdobsGa13CbNuv6FcSLDXsQuWhJUtZOZMY+dIwjCoeru7HlyjMJzDSGCofKzwgP9YFky9suzSXgpsYizrMqMrtKzKNfk3yhXTlg2sz69KHHvJ9aGBsw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752340194; c=relaxed/simple;
	bh=IuIbNTurz77TGT+q5mmal0DbJgQAUReeycerlnuOXq0=;
	h=To:Subject:From:Message-Id:Date; b=Ezq0GVLgo4trrtIyBh39UGRZc7sHLiCNOvFGsDyvy7iOlMyMI+IeAijEFx/gCORv43PbE8KXw2NJALzqZ6YJ0vx8+DmKfZiccsAll4buNUriZdth+y7DmxQDJrfT7moZBe7seBh70RGCOW5aaiEuhAwX+jzRif2Cl1yjczFCjoY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XLL4s+LQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XLL4s+LQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A26D4C4CEEF
	for <ddprobe@lists.linux.dev>; Sat, 12 Jul 2025 17:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752340193;
	bh=IuIbNTurz77TGT+q5mmal0DbJgQAUReeycerlnuOXq0=;
	h=To:Subject:From:Date:From;
	b=XLL4s+LQzIFs2DAOzwlQsaLTXSulN4uXpttL7eOhE09C/0WTtII2Wlda+B39hdmoM
	 PtHYU5AYIi3uM/yIdEBXod/o6ij7afqjZqlbmtCz6r3SImBQ1Db/+I12zss2RTDt9b
	 Oy3oUUDnrhOoyAFVyBKkJ77QPAch0DvUp+cKyoe9fLf2QBImKZH9LIWS9vQFtT+75u
	 XYkhI5A28p2N/blxTTv08NMBK2Ef39yD2cBOQzXp/zDbbFmklFgKLY38wtOj6AyQAI
	 1himbe3Gt+OTyGTKNgFalLqoM/QXfiyfZIwKCZxLQOqbHMrlzHjcR8N5w1TnceWw2y
	 gTQJthxmKlIIw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 910F9C83F10
	for <ddprobe@lists.linux.dev>; Sat, 12 Jul 2025 17:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175234019357.26983.17228715918308710684.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6a0948fe44c61362e198801eeadb6b4ff0aa67ba93d68530a13f6fef61c749c5
Date: Sat, 12 Jul 2025 17:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752340193
