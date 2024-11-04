Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D74917583
	for <ddprobe@lists.linux.dev>; Mon,  4 Nov 2024 07:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730703954; cv=none; b=Sj/03yvsYyO/I3sOE6pvvavFmnwKYk7eYIAKVfC5uoLz16gAE0oilp//JYxF/sGLXwKIMoYATvFccKtAfCHBKVIOQ3Cx6kDuYTvpENzQhLjSGGKeRNnNxj3yQLyUuHaHnlX30gGCdGxSxCTRB/f4wIRh8SojF9Xl3A2DdW81MZQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730703954; c=relaxed/simple;
	bh=UgJPrnc3iVLI2cwy3cfrq7G6g2j6L40waeqw0L9vCds=;
	h=To:Subject:From:Message-Id:Date; b=YGO8a0H7SX9nAYjqm5kmxUtuYkIl5l0Oj0/7GWr3QtGtBQUarmY1y+5g+mlpa0YREeToqSDxCR+umP+pa9q4cP2fhyHdHtm+mAhnaeuj8bU4vUal7mXHRtOpHafE+uQZEKJeaTR66Wh7vK01dlaSoEC8pKMbpcJ7jplJyElTb7k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CjxKuBdX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CjxKuBdX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B75E7C4CECE
	for <ddprobe@lists.linux.dev>; Mon,  4 Nov 2024 07:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730703953;
	bh=UgJPrnc3iVLI2cwy3cfrq7G6g2j6L40waeqw0L9vCds=;
	h=To:Subject:From:Date:From;
	b=CjxKuBdXpDbDa/caKPhf9ahIkN+TFcVTq8u+tLUMyDYuHbovzNI3InPKezlI2dSXs
	 nK82mUBK0F2v6QMjQIeXviJ5EYZxk8Vo1Aek5jODTuQTtCRPqgwQKvtbTKeWYzglyZ
	 dVhnzxnFdj1ajxPYt2exf5ljLvNU91Pl2THVL1lXAhLjaMl6tgXJP3FARoy5MUXpKZ
	 4NSF4LG6bjM1jQl/CGtP0wTfPHokwXC2Wn287tl9YajeHstOYMZ1XmpA31trrsHcrv
	 Wl1w5eqqZ+QPafZVetfSzmqMTQ8zQO+1MwfdD6xatgl+ta8oqezXIRJxTx722ukko0
	 lLEX7eVS2d0SQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E8F1D111B0
	for <ddprobe@lists.linux.dev>; Mon,  4 Nov 2024 07:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173070395360.28631.17981306509638033010.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 58480e2e6581c5f03ba9d2feb71b0501ca490fc33148ac2440e758d29aaf6c6c
Date: Mon, 04 Nov 2024 07:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730703953
