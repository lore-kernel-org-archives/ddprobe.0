Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 437EAF510
	for <ddprobe@lists.linux.dev>; Thu, 24 Apr 2025 04:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745470794; cv=none; b=bCDXsTHRm3cHcvdyMLtGzFPn0Nvv4EwbU4o3joO61TXl/HrndSbbICw+41cyX+QxuNY7SuVaGWBoqSTA/yWHj1rZ4dUbfGqxgbG6u8gOiWBj9VROx4YHgS27Gynv2UdKt0ZpySzjs6FYgu4bEThOvHCAF/1Q4RoQRP9EoEF2T3w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745470794; c=relaxed/simple;
	bh=9VtEMzGVTx27vaCvCijdI0Xx4wkKCN6m1xJP1hcuDHc=;
	h=To:Subject:From:Message-Id:Date; b=jwCoaxwe8xfoxzDYwIclng4gX6UTCwM7qHVSyMI55yDNzj/dCbFTnGHNo8rjdeioHnEyqNC3bOtlhUC5YD3vAT6fUEXyXo2JC2sjdwLcldNzn/Mo8auRlMs5+/iU7GIoTxt5WaJPQDzSxoFB+RDgQ2Cc+ZQKirA14T+1g1IVPZI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tscp1DTP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tscp1DTP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5CDFC4CEE3
	for <ddprobe@lists.linux.dev>; Thu, 24 Apr 2025 04:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745470793;
	bh=9VtEMzGVTx27vaCvCijdI0Xx4wkKCN6m1xJP1hcuDHc=;
	h=To:Subject:From:Date:From;
	b=tscp1DTPmrxOA/Hs/AQimtBUS3/9tAPsqKrQLNm7TGAMHgFxOGJzGUaN895VsBD74
	 GiafA5wJ2TEE1pWeKuTmBy82WsdCiYgZjiDZpHFho7WRx4FBwjNkMTMQEDJ2q9SHrZ
	 29hwUfDBwxjGHjT8KbClNFoW/8UArlGzSG293cIlzK3Wmu5tWG10ptcFUkuXJU4z7N
	 CeiO9uJ11X1u4Py7bt1j0bacFQkDm5fx4+8VabuUHGQ3UgDE5fxOdbm90BR3LdpbVT
	 9xFCMsoLNpQCbxDbwMEvwbGOF2TKjXxjb0dheRpFoWI0/hiqU/QlWmx1hNUwqTFk2s
	 mcpS6a9xWSK0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93F46C369AB
	for <ddprobe@lists.linux.dev>; Thu, 24 Apr 2025 04:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174547079357.19545.5162275753802839920.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c3033007ee923a00e6b3d2d3cac1297d06d4e18c7085cf5a9088e3797046a3eb
Date: Thu, 24 Apr 2025 04:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745470793
