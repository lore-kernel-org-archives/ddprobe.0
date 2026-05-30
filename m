Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A64E1DED5C
	for <ddprobe@lists.linux.dev>; Sat, 30 May 2026 05:43:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780119814; cv=none; b=awZBFQQR9TNzJYPT/3VyPd7SuFxHQNKIu0UFEeyKoIkGEHs+jHj7fluyIjpNuY0zFIuukKajFp9nCJU5jeHhwvZ4GSQlvAGzTB6QhcQJdMh1rs9q/pA/BqKNcchegV8GcBgBbT/9LV32O1XG1NndjhjDUCaXwqI6UhQcj0/pk8c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780119814; c=relaxed/simple;
	bh=+OfwXADFIEF9Xl7qdlAUKVuPRBEdXtMUoSUMDrlo/kQ=;
	h=To:Subject:From:Message-Id:Date; b=tqbAzb5WZ+TwTbf/y69npxSIQ27s8mBgVhKKVRhFUFDxrKAgDbRQsPVxkOAgWj6L9wb5Zz8rL2uvyFzUoX2Kqx+CMqrkj3clsb5EIFdfNfz5iyEXJVrHB3Kiy98ZPsJTu/44lB1IgJPhQHu6yk2Z+aty5JTEkFw6RtZDuYaGR4o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jUB84PYN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jUB84PYN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C75D0C19425
	for <ddprobe@lists.linux.dev>; Sat, 30 May 2026 05:43:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780119813;
	bh=+OfwXADFIEF9Xl7qdlAUKVuPRBEdXtMUoSUMDrlo/kQ=;
	h=To:Subject:From:Date:From;
	b=jUB84PYNYA3vvaTS060kadO09cEwLjBL/mweeo4FRtZqvZWxi9wS+rmJjA1jeazhE
	 pybAuO6xnFoWyEEKbT03iha7XoNm+sHHA1vcYkoc+WKF5T0pq36dzydhMVFnj0xJid
	 nmR5lFd7eiMZmIIbcEv3Z9KiHzrW1VV7xN6odUyhugjC5+fff1lw0tUFK+5ZkIe0Yo
	 4Mv4AvcyWaSTTTYtx/oXfY8JQAGvpCKFDAlepi04o6kunlKlSjXVRc1cqJgdgpinYw
	 sNwFTUcfPcbxAjbdmpDqb8uVUy89IrhTX14zxJ+EYIL0uz6Qw9bKAVvd5wCDvZlEmR
	 TtLgMD9x4Ydhw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADFB0CD6E4A
	for <ddprobe@lists.linux.dev>; Sat, 30 May 2026 05:43:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178011981368.10350.12811056604658349056.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 14b720eeb60d8972da6afe2afcc1ad4a508adba6bed6364f0ac22526e02ba1ca
Date: Sat, 30 May 2026 05:43:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780119813
