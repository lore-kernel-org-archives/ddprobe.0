Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 639FB3EF670
	for <ddprobe@lists.linux.dev>; Sun, 18 Oct 2026 18:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792347634; cv=none; b=FlBTuxq2qtgVVSj7duWTR4Ve3gB+u1wBJMyMIhVyiQ/lNfTGIWSVGnOYGNDIKJ6Kh/qgD0hZGY6ztMANvz/q/Gs/y0OLe1o2eO3aJHdatJ4A2kxQKC2u555BlzxVnScwbZhN+nYLCfWiZO0jDF90lczcjwYnkHNYhjEnV/edIqo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792347634; c=relaxed/simple;
	bh=uJ3fuk0C9VlivJSPzq0jud0omro+J+emjmnJLwfsayM=;
	h=To:Subject:From:Message-Id:Date; b=s/tJBN//a08Erp23yoa9gws8q2iEWBtjldigqIHNqAk7X7X9oCIFZ6ujNhPWG80gwMO93LPEjyeZI1ZQgNEpS8TFr5W3GIh/0Y0KAzj2rQ9+Ta13nH8OJMdhz3hUilenxJ42xFcKoYEPoxgvnu90SUKOpjrc2tmcFRNhuvacFnY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ir6kYe7s; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ir6kYe7s"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8B90C2BCC7
	for <ddprobe@lists.linux.dev>; Sun, 18 Oct 2026 18:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792347633;
	bh=uJ3fuk0C9VlivJSPzq0jud0omro+J+emjmnJLwfsayM=;
	h=To:Subject:From:Date:From;
	b=ir6kYe7sMmROtcyyvNPWW+lIDVv15JNmFXqBUioIzypHaYneNPcHcKNm50wA1iHNl
	 2b/dktaDXxV4seznmjvLzAMwD9yxj5Zn3P+nKyXI4mtGMa4FTDBHOq+KfYwD0CBDDf
	 Edz4VuYMkmvqQqaJ6zXI3NfWhtb/ZPLfl78hh+JniBtKA31rz1k2cD7MvCnpGrl42+
	 1GhprccZEXcbrNgJOkfG+qzd5ycM2NkxvXA3FYJ6X0D2Kyf0ex8o0DOHWulAoTjgLv
	 koh8xlvvYVKx6g0A7ydJ6j1JkHOTzzbBJiEgXVBzvOGS4Or+YWDHtFtLVrRznloTcl
	 pTsSbB9PFXWhw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B67FACCA490
	for <ddprobe@lists.linux.dev>; Sun, 18 Oct 2026 18:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179234763369.16886.8440686109927586764.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0161a2adeead352448a7c6bb4984a3dee4649088c6a44f507c37e757683f6a5a
Date: Sun, 18 Oct 2026 18:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792347633
