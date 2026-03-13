Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ECD142D8DDB
	for <ddprobe@lists.linux.dev>; Fri, 13 Mar 2026 06:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773384294; cv=none; b=iFaCqQcpKceCuKC3ImM2G/FBHqdSNuKvPwS/Hz2/HWZMrKICYGueltBptELu0bErmsI2UzLjjwE/jVyqsjnpOSWBMB6biLymCv55ZG5HYNPc2ASmAVPwwqa2Fe0BO8rdqd7Ec1twQOibYpBQnOzZZTTEmP9JUukSxy4eTUcPLpA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773384294; c=relaxed/simple;
	bh=1oKYJbDuGt38Lq77rrAZPZZwcVJspHXWTy2UyiCPoSs=;
	h=To:Subject:From:Message-Id:Date; b=Ik+ihU1SYFEUSbUOvfR6vufFP1mfw9Fo7RLknw8T96TlZ4hkQ507LOApEHnOxbeGVE24wqEW+oqKfYXHPzWgnzICpah8vAjqlXa+k6RjShdqywTnLx5YxmLe/Fv1071zIiXqZ/DBGIaNhWS6aa9tmipdmQhd1BYSyHUcLzbok+U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eLfeM0dV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eLfeM0dV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2BD0C19421
	for <ddprobe@lists.linux.dev>; Fri, 13 Mar 2026 06:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773384293;
	bh=1oKYJbDuGt38Lq77rrAZPZZwcVJspHXWTy2UyiCPoSs=;
	h=To:Subject:From:Date:From;
	b=eLfeM0dVL20c9xnLtDX04HUA9XM3ueCnZhGlOCXz1pOTV3IJJSOpy6iaae0sSvW/A
	 CSDDo4/UFwc7KCqc4e6AXsIQxeCDk+DB8Tx/2OgmWHr4t9ri12UnrdGPTyKR/nGkL8
	 cnHambWMdAECKbIY7DvChUtLzaa8ZDCuE+KHIKBuwISRzZixaLfrjPju0XqEAKdbsz
	 x79A4bObN1ezZgnGqTZZX/qS+Siu7Chd5Y1KO91kT3n4JQXQW5UYtUod77smh/sLjf
	 yFnENyBx2auLTujvkaPDx17f5GsAdX1hUrhJb2S3AEs+7u0fCzA1bCiKHlFDrlWHvZ
	 Z1ywc+IwHjWWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FD16106FD87
	for <ddprobe@lists.linux.dev>; Fri, 13 Mar 2026 06:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177338429358.1356.5705054167063644005.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4f90e85ee8c8496ffd07713a040d22fe9afb3dda480c185bf3e9e37ff30f8abe
Date: Fri, 13 Mar 2026 06:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773384293
