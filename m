Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45BAB17555
	for <ddprobe@lists.linux.dev>; Tue,  3 Dec 2024 02:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733193354; cv=none; b=SlNOqQUw/BazonezvoBhdZALoiiID8UoYq+6xc6f7JyIvgier5VHvWGgujNyEfw0xyEjzzl+AcrPLOTpgo6zkH/ZqJw0R+N3IzzgYjaa8WkolJr4GiAMUjScheu4Zz93kDBe49dfYayEjIc9pmZv+03MsRPjOaJr/OjeruBtt0k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733193354; c=relaxed/simple;
	bh=9eay+aUkGN7GczjGb9m4PtPmWmj4RKm9q3KMSfP7pfI=;
	h=To:Subject:From:Message-Id:Date; b=To4jGMKD8XhXHUCk8T34797q/rOiO5GBDn+qVdvlXTQ5MFjv3JBG9ITf6qy5n6f9C/vWj5R4Re87MGluYARkxkNitncm3BHX9Aw72+KVPX4UBoZnYYkU+x2Cc1W4urBh1s4Pw65ADLyUc5LRqKaWV55e+6Vi4ndd0F6mxLQ2fvg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hEHv7Uma; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hEHv7Uma"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0B2AC4CED1
	for <ddprobe@lists.linux.dev>; Tue,  3 Dec 2024 02:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733193353;
	bh=9eay+aUkGN7GczjGb9m4PtPmWmj4RKm9q3KMSfP7pfI=;
	h=To:Subject:From:Date:From;
	b=hEHv7UmaLnNqWEsaaOcRAH5IuTl9fevf9JGuucbYR+sMhpM93iPIVf9StdgOCHzym
	 IBrr+3sNa+BAzuW9HGYNaB5n3qQhq0ov16rafuQtg79uf8T+Tq6041TLrcRwzrFwVg
	 arl8u68tT30KYTOd5jg6BNGKFUWNWI/I915Jmvd02DhcvVpqYIhQ24HNJvGpn4OwR+
	 SE42sn/Q1ysAKt6ev2jS5YDAQcej7W1+eZBSr8QeFJB+p6VWx4Qnszw1X3ELsdEiGG
	 Vb0nsRtzboKW/D4rMk6NYlodXOnkUztozM97hIcW5p0bj15q9JOrr4vZ+VDaLPB3pc
	 0RbIiiUcH8bmA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C9CAE6C5EE
	for <ddprobe@lists.linux.dev>; Tue,  3 Dec 2024 02:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173319335362.27951.14342531384823740909.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: abde625a11e9d91c1b9eee1343deb752ca43fae8ad5377afaad1257938343ee6
Date: Tue, 03 Dec 2024 02:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733193353
