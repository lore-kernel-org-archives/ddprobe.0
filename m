Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2619838DF9
	for <ddprobe@lists.linux.dev>; Sat,  9 Nov 2024 23:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731194154; cv=none; b=buVPxa5zeCqWsYpKIg4KqH3BO4mHWhJUIz9P/OmKunwFZv+fJbbK6DL4dzzKWlAb8cDroC6n33dD0opXMKkYXcZhJ1J8OItYcKgsMa0jVUjMJ4U+r8Ch8yiVOGEHh6FH8vth62TpBL/sNoT5MNHJWYwgveon15B6HGqO2SsP/9o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731194154; c=relaxed/simple;
	bh=ZaRyHIfcQa5Rgwn5q5/Dp1zfz0UgQiiOM3dUtb66Thk=;
	h=To:Subject:From:Message-Id:Date; b=ZKfsCGvZUfse0lBaK9Cl8RMjPaVOnXUUpQArSbm8D++Bc9YFyBbLUW7XiFJZ/8Gsnr/YimVBWsduRS1DCC0QMjvdshYL6LB2sbLm4o/k0OIFlHZ0ne/UrjA4X2txGkRU+5MS+Rjz7Qc2YkuOv5u2kJ5E1/Vx41+0/lYYS9EOL1I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pPJoDJ9Q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pPJoDJ9Q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B36F6C4CECE
	for <ddprobe@lists.linux.dev>; Sat,  9 Nov 2024 23:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731194153;
	bh=ZaRyHIfcQa5Rgwn5q5/Dp1zfz0UgQiiOM3dUtb66Thk=;
	h=To:Subject:From:Date:From;
	b=pPJoDJ9Q0+Z4D8XukZIPGRON1Gh5bKquzKVrelinmYEi778hdTCYRn+f9Y2e0KgWD
	 B7uDVbkoodAA+QOuvb/bmQ99SX70vbBd0UG649GfvKuqAO3zqCHSYdSy7pp8ZKQ6rM
	 1cKK29iB24AskwfEIzu14Ua14GR6gbEJKlstgElXPz++mOd03flYGYioSvvdEFSRzN
	 qxzwuoaWPSASygnG6JTUNIFzRBCYiOz4uuymPfHxbcLkuMoMggtCsfkH7fNlejPpLo
	 GSAbsUEfcXF6uLYc9nE/QBUC+uzMGBU6NxhbiOKpOrmVr9cx0WbE8fb99IHeynUMT6
	 iBaTqYK9HiyxQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99AB2D5E386
	for <ddprobe@lists.linux.dev>; Sat,  9 Nov 2024 23:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173119415360.12524.16858813556583080102.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ee0b655f8563aee625e63aa2d716e9a922f7790ce92adeec9c6ac90b5670c4e6
Date: Sat, 09 Nov 2024 23:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1731194153
