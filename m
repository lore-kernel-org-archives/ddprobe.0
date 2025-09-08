Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F84A1A76DE
	for <ddprobe@lists.linux.dev>; Mon,  8 Sep 2025 01:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757294994; cv=none; b=vDOO7zjxKiMntVnplhfA7huawGJn93lUJSo6l5jWGEvm1f4RSWnHAslUH/nLGhrtXVQTEyg9Xd+2rCHYYQcBgnZsXX1K52ECaywdqZZYPaCW4pYmvDZ9NOwGgNBAXuGTt7rdY3si1DldhJA/OndLSp6lCm1izkgHVSfmGoYOKQE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757294994; c=relaxed/simple;
	bh=WsGBNGZC6/imvlQsHVkjb4CIspWSMK9Aw/rKASToLZs=;
	h=To:Subject:From:Message-Id:Date; b=inZNjhDLBePmI9Hv9YcNaoOL5m0wq/qzeHH8KFBng4a5ygicmoj7bl2PXm+meEn7ClH+9MYom58O18suh1Hu2CHIiuhCoODKkd38V4ZvQ/0VVmFUjW6JHhdJ+FgEyfPy6cgDldS+SEXJwmkYu2f4Tj64YqSS4X2SoVw0yjtPzyc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cYtczIs8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cYtczIs8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2C51C4CEF0
	for <ddprobe@lists.linux.dev>; Mon,  8 Sep 2025 01:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757294993;
	bh=WsGBNGZC6/imvlQsHVkjb4CIspWSMK9Aw/rKASToLZs=;
	h=To:Subject:From:Date:From;
	b=cYtczIs8jOY73lnMwFtzvcAlFgGgSCzVbXVoAVFQukGwsjRZ2CnhFEdT+/pqXlwFX
	 0HJePPEGtCPlrq7bQBkblWV+TR7NeDImloxxKP2vWqs8RdnB5hVS8GAuAh+ebEJrEZ
	 imvuemrgRQwF9y/pklO9LAf3Li2dGVsGcYT400mom0nVyXJzbeRvAQC9+gCf8Zaw20
	 /kA+ERRj8zY4At37Itb6BKN90teoQq01Vwq0+w9RqiMED1bDgtkbeIcOlSZcl7X2to
	 m20ttG9i03inwuuue3ZRz41S8JbdrPdnsol/7dVN5f+ojj63IVj9Otw30x5VQbWeeh
	 w0mb3nc5v+YrA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94DC9CA101F
	for <ddprobe@lists.linux.dev>; Mon,  8 Sep 2025 01:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175729499357.20927.16346949009927834939.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2a9f659bc84994b4dbb892acbdf190660d768872004b26ce1336f761f3dbc23a
Date: Mon, 08 Sep 2025 01:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757294993
