Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D4AA29B204
	for <ddprobe@lists.linux.dev>; Wed, 24 Dec 2025 09:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766570034; cv=none; b=Ns21TJWk19nM7S76UaU/JYv5oxwo5Q7rEJXrRoBTEPvCs+b2vZ7U/OwShL0ZQUYlsj63eLTrnDTHyDFbgrIPAGpprKfA1c2Cp8PpM1ZqQ8ZQcXojvpr5HvnYzYIXhnQ9hyOBtgoBwHXfPskhfD5D8VV1/CcwuYycqxysPv05dmk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766570034; c=relaxed/simple;
	bh=gOfJFBc7cf46cQ5G5xdmve8XyukIO3+vFHoKlvfkNxI=;
	h=To:Subject:From:Message-Id:Date; b=nLI31tNueeqikJVD/O3PmViupL4oSP3hadm8BMNcD7yy1V7lAeoh00ggezqq0dblVZ1mlSw2oBVOsxX+rnN/rNA4f1bvsO/1jlGLXbPkJ7lSs2oB9Pn0UUoiKAXyoB5PetHNwz8CiHcqAeU+rUrGte0+fiGaDi1an+O6sc/xrBI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XR/ZA3if; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XR/ZA3if"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F30FC4CEFB
	for <ddprobe@lists.linux.dev>; Wed, 24 Dec 2025 09:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766570033;
	bh=gOfJFBc7cf46cQ5G5xdmve8XyukIO3+vFHoKlvfkNxI=;
	h=To:Subject:From:Date:From;
	b=XR/ZA3ifcjOz02Zusp54vrDIpwQVY1ldhxgoMHR+ZeQ1YcYpmIGL8NemsmPa8dHGV
	 hxiJ2/Owjsoe4uFz2sZ4gOVoTemUOj4O5cCyF1Fs38pha7iOK4p/TvBKPgG1N8r3lW
	 VK4DWlTlXzgnOF7RaWSogKgYGFyY5xUdtdrKpVtRCFkOnUhm1vyIgdopNco1q2mrI4
	 Ps+uhCh+is6yWW5VdLL7R8YLy1QGZQtMub6TTWJM37xyN/uojBUUxirm/89iCbz9T5
	 qmB+IHowqtTF1g8V59YZQ+6jDDBt3q9BcY3GQ0zB6STdMvc/UyzV/Xahbsv3YSefZG
	 LSRFT/sk6Engw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EEBFE75446
	for <ddprobe@lists.linux.dev>; Wed, 24 Dec 2025 09:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176657003357.30048.1942342817652814828.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8fa196e78978a7c1d0f9041618e045c7d2f2289ed657555c6d19b7b8e4fd56d6
Date: Wed, 24 Dec 2025 09:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766570033
