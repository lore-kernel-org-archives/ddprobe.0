Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BE8D42050
	for <ddprobe@lists.linux.dev>; Sat, 10 Jan 2026 18:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768071234; cv=none; b=k2i4HZ2ZsramalxFtTwOO6Oe7+stHUm+hYfYFFyL+wzXp4QwyO9hlB44yVC+DvPQWE8n2olwXckF40lcNdCTnt1YRsR5J8CeX7VywLAoNt0B+kguadjW5w2nh1YS0+eObvojrtbADY8W20Y0kZ4I1SINbMnjOgjQR/rc6zTFj7E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768071234; c=relaxed/simple;
	bh=vMFivE25tvK3f+v8Loe354p0e6g3557IqoMUE8GKLOQ=;
	h=To:Subject:From:Message-Id:Date; b=rN/mDzzbJ+WtiSQkv1l9Vd2BS5Jl2UQSwMHg4Rqp3sS0+sNUN31GEFbVgyA35k+4FAHGHUUD5dzUKJnTepnhZdyM/zR9NwIY2onmEBCVZGXi1z4fXAcov4jPkMtk2YT3r3N3bz7MuIggq919pu8wEwQhPutxlf5goMo6qCb/+1E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s8H8y0C/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s8H8y0C/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5423C4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 10 Jan 2026 18:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768071233;
	bh=vMFivE25tvK3f+v8Loe354p0e6g3557IqoMUE8GKLOQ=;
	h=To:Subject:From:Date:From;
	b=s8H8y0C/iTTnOZw3YxPHSl0Z2Qz8EtNWfib8IZiwoS/1As/Kzz1OLmtqBcs+NgyRM
	 vDXMyCKXSoM11tqPyxekdIfrbCKE2wjYNYfjJAE0LIslIM4DLybyDk0mflawPkIau8
	 7TxlmW4ms0zjMPdapGrP6ppqLgkvVtfzSIXcv3r2NPrqptderDw9R0yZ7wRVUb31oq
	 vNBA+w7t2QcFPwHj6EEkceKuzt4zSzTTHqkFLljWg3SMEuhzMH+IHEx7MseuIjX1v6
	 V+3pZ7g/qyJ790LR73nXp+py/jnd+fJxIgOwqSHJTaeywATUuMkNl9wcGuC3c2kspb
	 Gbp7TMm01mE+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 943CDD232E4
	for <ddprobe@lists.linux.dev>; Sat, 10 Jan 2026 18:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176807123357.8465.8181570797350457762.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6e1e5982d21fa423de83e57c11c200dec6e7783f73429f5e7df61713d6617db0
Date: Sat, 10 Jan 2026 18:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768071233
