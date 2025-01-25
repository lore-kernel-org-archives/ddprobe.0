Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 420BD1F153F
	for <ddprobe@lists.linux.dev>; Sat, 25 Jan 2025 20:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737838554; cv=none; b=IGxoj3v1ADKAXbAHMB8Cb0YA7z9Lcx1G85cOt3+e1PKoyoUSZbEJbB9YEYwgsuWecKporMdbZNvaRSDr/IHhGuHypUztichB+OVcA5t2ObjnBUTFfLg/uTGMB0jMQtlBkVJgrPpzM6gZoVxAtlArtmvhRCyjW6mIEWXZkoZFAT0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737838554; c=relaxed/simple;
	bh=HhhiUu2Eoz09AKvXeNvdTUhsHuJfsVwHSru0/Z4M6aI=;
	h=To:Subject:From:Message-Id:Date; b=t0PKtJli1jy2PXo5JWgpcInWKGrgb1TOix6TY/DC6n3MZynxbSbuUcwCwWyh1qzg81iu1Bzle0wfFrlpXWof+diQCyrNlsSpjSfAAPQBZGP4Qd42ZbVmkA1ZQZqT54Q4tngpS7/IwQnvFSJbALnj33e8ajpbXeO3iAGEnOu6Y+s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TUAEgES7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TUAEgES7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB7C1C4CED6
	for <ddprobe@lists.linux.dev>; Sat, 25 Jan 2025 20:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737838553;
	bh=HhhiUu2Eoz09AKvXeNvdTUhsHuJfsVwHSru0/Z4M6aI=;
	h=To:Subject:From:Date:From;
	b=TUAEgES7B8vPRqE+s8Q83+LETZ4yJ6mlt4wTpsRNogvP9c/tOAueLMk5wSSS+bTFz
	 ZjiN4B+FeVl0fof+Ip57hauVhVVcFGiCMlI9JhS03DY12j4L7Jduah5AE1SYc67W3d
	 f79vdqNiKSTYJRdZxfg4+ddepYPzxk/LFFzEshNqqEoNtdIN5kdrh6Geo20PRFMygw
	 8Ta8sm6mclfYEF1fu+Mv98vp5fv66ljJcYLxQtAUrNBhmw9XX5RyWt05yINYozyY3h
	 bmK8FpGqRj+1P5KzcOgg7EimSqCHrEwB3V9mTw9BhLJa4R8aAkF7wOswHPT5/GeKUh
	 GzpjdeSwCnK5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 943D1C0218C
	for <ddprobe@lists.linux.dev>; Sat, 25 Jan 2025 20:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173783855358.1114.1927050001428959833.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a8d825b8a9499159a25c8c3c4b5002d839bb2dd89833b8ca5fa38995a461b8de
Date: Sat, 25 Jan 2025 20:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737838553
