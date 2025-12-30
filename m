Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 249B8212FB9
	for <ddprobe@lists.linux.dev>; Tue, 30 Dec 2025 08:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767084834; cv=none; b=kQ+98Uq2f/3CFa51mVuiZT16kDdlFd15FdnjUz3dSJ3zqUoygnQT6d5nZoW5gD91Lt2wIz26MOGsebwng1NJd2f+Yb7KVRbb87vQPoADKNc/AYhQ208jjg1xU//bHlXYdYHnD9RX8XaInGCpsSm61ZxHydvup/AUsBxMvUK7Cu0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767084834; c=relaxed/simple;
	bh=lkamayJUwKrT+2Rn+yj70rohFpT2c58syiTFPunQ5ws=;
	h=To:Subject:From:Message-Id:Date; b=V51cyFQKKjxv1EsflYhbRvsb03zFIgHJ3Zps9jBBayR+QQcbq0UlA8u00cdEfcYbc9xjq8IJnJDOy+6khQEEUq2KW3aGTaWRcNXwAJdULrtPXRVvX5ebxnUp7g4mNW4JLm4x7PhPGb2SgZxhNqjDp1SH0aW0eyFa31I0gcnv7Cs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jhOT8k1y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jhOT8k1y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4191C4CEFB
	for <ddprobe@lists.linux.dev>; Tue, 30 Dec 2025 08:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767084833;
	bh=lkamayJUwKrT+2Rn+yj70rohFpT2c58syiTFPunQ5ws=;
	h=To:Subject:From:Date:From;
	b=jhOT8k1yfuxSof0BKOD4Yk3R5Eee5uQYi5tELG9+/qeFPNcDOCO5CVkiP6xgQoLBO
	 q1vdCT0cxGpJgj4dZwq3+7KJ/0S+M3GHJ/zxmvX+J195RotHmd3o/vtrhgylarmUen
	 dlHr2zFo9ucX25BwRvrXD55B+C57DhiA0wVQKfdqeN/uPvuOGAFkXjdEWIC41+dBP4
	 8LvUg97U0xU5b0Wd6ZxfU3ylgHOhLeQ7u9ceOMFbRIVr5OWFNMtbyhnNsz+xfb8TEv
	 1H26p3F0E6CcMYIcVJppCPmX3dlZzoJVigjawX2jQpTvlnvLukumwok7xN3rZWyov2
	 PqObn5J7AJ0Ig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 919B1E94120
	for <ddprobe@lists.linux.dev>; Tue, 30 Dec 2025 08:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176708483357.312.13311086682523485134.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c7fa84f658a0e1d4c9eb4770c4cdb63cafef32d1d93eb9d291bc2a2c2f0dd6c6
Date: Tue, 30 Dec 2025 08:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767084833
