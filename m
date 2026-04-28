Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 145C01B4223
	for <ddprobe@lists.linux.dev>; Tue, 28 Apr 2026 02:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777342654; cv=none; b=QzJKMCpmmohzMIJ7RuZgDx9oN0xhDb1zAosnR4ykc9JmZzsJrjw+JVzx2Q/SVgMExUnezEMqgpnt9aTXyZW7+G8Z38N+4T4XH3sLoBnu1fd69cFCvyq5eZS6fjzqSp4PjQhhB8/hHKrzcP8ogP+4tr4MODWctaq/32/bNxRPbpk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777342654; c=relaxed/simple;
	bh=ldRTodIs5gGSX+6DGR+7gQ1AbGjJ5VfN30E/xKP5CXQ=;
	h=To:Subject:From:Message-Id:Date; b=XwYp/3TzaRolfCxEjkWBqx71WFufn9Lc8gcMU5x3v1+9D/z69T7ptN3zdTW740SHzldVRa7tvJxXzQ760RqMiXO28Hd93HemOFGaJb7p2bteMn5tugRMoPBUk2fnXSZySHq2/Aom2RJp9WiROSuJXQOEuTQaJ+ujAYllrNM7VPg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EJbjKgku; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EJbjKgku"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA593C19425
	for <ddprobe@lists.linux.dev>; Tue, 28 Apr 2026 02:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777342653;
	bh=ldRTodIs5gGSX+6DGR+7gQ1AbGjJ5VfN30E/xKP5CXQ=;
	h=To:Subject:From:Date:From;
	b=EJbjKgkuzefi3TIktbb0bnJET/aKAb0lEXIlygwJebEEVCoIDQknMNu9Y+sQLHYnx
	 v6pGr199qRurZvLJloZ1CCHAaNO63O3FfRp8bWtrHW74fY9yAMX9OcwFGZ5pOV/6li
	 k7gLYpnB49mw2nil/x3+HH9/R7qUJLWkiA3YNJqkEb1Q58WgBfzWUYBS9flzJzmA3R
	 tFpwE5ujSHLmwU4Y4gjpak6sLVDt4CWPgVl492ynWS3hp2WlIzRrULBwDVWA2lP0zX
	 QBA3ZHvMkaQDvbB2T/OQ6HFs1R0lkB6GCb18EOeJHEuQ7vBnnIz28G8hXeD9ETxI98
	 FmCk2psOHYGwg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8D51FF8867
	for <ddprobe@lists.linux.dev>; Tue, 28 Apr 2026 02:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177734265368.564.6513510605536113637.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1e48017ef635d3048f544857fc85ad1be6a9a32283fd39cfd35dbc7193272410
Date: Tue, 28 Apr 2026 02:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777342653
