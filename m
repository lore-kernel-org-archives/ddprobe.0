Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B535330B2C
	for <ddprobe@lists.linux.dev>; Fri, 17 Oct 2025 17:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760720994; cv=none; b=Xfae/qcQqf5GKpPuB2a235cobBLWMzqOMj6sOYty0i5r21QurA9OdA23+DgDjJocwFUBLirs1wkVaWyR91tenMQaKF1VMUFSfsV8ZC2fsh0z7ZPSk5NoRI2CYuHvSQrEplfZ803Uh9LVPNMZJMjbeZLwZhid1/8wbmK21+JpB+w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760720994; c=relaxed/simple;
	bh=xZaMqSW58/+0k7QT8zrOQadIi0d5mw+CHUbFivUya3Q=;
	h=To:Subject:From:Message-Id:Date; b=i7XI3LNd1EL+FQvpQlJoS7/gt73igfiD3p4v1Qfkqx82FKZXUP4UgXLfluUlSFxLEJVQMxhZLdwdTEcIoRe+prdcLeKhOUGeSOoxiSnY9kz3GY5jlYTMSYzSd5rUOnD4D6DpESRU5yFrxoANcUhso6Od1hoD4Auksnn9waJFb8Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EAWYrouf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EAWYrouf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A21AEC4CEE7
	for <ddprobe@lists.linux.dev>; Fri, 17 Oct 2025 17:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760720993;
	bh=xZaMqSW58/+0k7QT8zrOQadIi0d5mw+CHUbFivUya3Q=;
	h=To:Subject:From:Date:From;
	b=EAWYrouf1fqF1vZfhqpe91S4XbvF4gBRU9NW+O4aHf0VAbQU+8EALSlJ9jIAuy45l
	 xl8cQxHGJdYCm3Lr/zMt8KhSf8WUit4b/YkQuJMQvWIDhQQVFB3DhBAgFkMeygmgDO
	 SD/PQdiVa3bbs8TQPG8Z5BFIHA9Dx+Z3uc9tPIwTL/CjHGaJIFldgE5cCXE5jel2US
	 ri14Be0sB4GfRa9Yu3gRedCTafH5u1pyh3dpfhIsZxUOs2gWesmmDeOjxym0VjF7FV
	 SQPLDbRKhRp/ZV7fEEAK95C1hlvWzdSzsypCT8DtaVW1dfY0lfWuzXEJjLkpB1kU0c
	 2hfjQUOdzV0aQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92678CCD199
	for <ddprobe@lists.linux.dev>; Fri, 17 Oct 2025 17:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176072099358.4170.10702397252966661641.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1b75dafd4a291406c7fbcec4beca30568d71b1d0d37cb43a2afc6d2975b63a6b
Date: Fri, 17 Oct 2025 17:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760720993
