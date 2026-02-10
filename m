Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3951321883E
	for <ddprobe@lists.linux.dev>; Tue, 10 Feb 2026 00:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770684234; cv=none; b=g5B4jE6X35aUED4Q3rDpyudRVH7KLbYYlVclF6eF3WFguqrfzG8vx5HxGuKJC8mhL5f7Qk99hkzvUCObNK/jjlfWOxNc85iTWDJBN7euKYnyf30U9TOAs8/TxtwaL8GyKw/hF0uHke2vA5F6xmZI41XS0nDo3VIfqcaK6UxMmaE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770684234; c=relaxed/simple;
	bh=p7fGez9xFeIKBdO6FFojVN3tv1biZR3AOrToXsDucmc=;
	h=To:Subject:From:Message-Id:Date; b=uYynb5PG26MhRyWbEYyfqb8+n0S10dxTCCeQDJbJYy/cDqHC8u/RLaHphwzwMp/6xvE9E6Dczod0fZqCBq5amLOF5eS3AXjZAETQp/rTeWaOCIy/bZYYWiQl+iegtN/7Vz1jT+ts0PWiJqx7xfD/Lz5FHLiV1t/YZ7wvD9q3R/c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sT83WTMt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sT83WTMt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB720C116C6
	for <ddprobe@lists.linux.dev>; Tue, 10 Feb 2026 00:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770684233;
	bh=p7fGez9xFeIKBdO6FFojVN3tv1biZR3AOrToXsDucmc=;
	h=To:Subject:From:Date:From;
	b=sT83WTMt6gJK1dIxBBRn8TXrMVYZqDEmmNsjRVeQSVJUyxia+SmQX30LX3V2ftKg7
	 JiOgH7o4btVGmzOJSJ42TP3GzT2voz6rt4IZAhts3i1dP7rc39S6WXBtqQWpnRet8e
	 GCArSjNkuvmwGV03WvtWD7GymSNN5il2qxevHMr71vTTDhfyYwf0ZzBgwBn3Sd0fka
	 ElrpDnMyiMnoN3xz+DG1nHkJAHUoofaLoKBz4ytIF52aAszvd3T/vU6/JFy5FNrwbz
	 1ggi00Av6NPq+ykjURBr+6QJcb9KBA5UgbUAcJWFwvW+yBIqqVt0IZZx7sPPgUJXqK
	 riPbBzZklIOBA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFBDCE94628
	for <ddprobe@lists.linux.dev>; Tue, 10 Feb 2026 00:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177068423365.32721.11367589371647554200.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3fb2cd3e27d423c604584dc9d4d2da0fb4b91beb1a0f46affd5257c911aa44dd
Date: Tue, 10 Feb 2026 00:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770684233
