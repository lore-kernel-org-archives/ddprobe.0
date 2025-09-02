Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27A7A29E10C
	for <ddprobe@lists.linux.dev>; Tue,  2 Sep 2025 00:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756771794; cv=none; b=Uo6E+yCXgclGJhXfifYfICoJ1MDeWNI0OEeinzbIkx/00/pgn3LzFDJMV31D7x1eNfUmeJItjCaT7aogvj7hz78DAZ8qbRBXmK+QX5FBeo+LgrfNhPODp9Pv4+fj0GH8yCOqhGRK8L5QTWosOrYOx6r79ks9W7GgYwBDmYTXwYA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756771794; c=relaxed/simple;
	bh=IhZXkUOWMuBSNuPEBL1BQuVHlexVqyxjVs663h9Gi9o=;
	h=To:Subject:From:Message-Id:Date; b=gvv0txPxiPgjTDHzQwBvD2Da99BDNOjpIl9iDEQMJZjahnOhlW2VpWqvqdiFnVQjlF6z1xJ5wmfAlfXK+DqjAXoiX5fo296WXZ7knZw8oikQvTTwjCkdDAdn0XZMbua1rQXXovLwnpU4MxOV8yWOJhnUMWywPtDViZQaIAq1c7A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MM72519O; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MM72519O"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A398BC4CEF0
	for <ddprobe@lists.linux.dev>; Tue,  2 Sep 2025 00:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756771793;
	bh=IhZXkUOWMuBSNuPEBL1BQuVHlexVqyxjVs663h9Gi9o=;
	h=To:Subject:From:Date:From;
	b=MM72519OXsPm97XfIc0G5agzfiu44nMN1m22IvT1QaM4Qyt+wFOFYfNGg5n7LNYQd
	 FzL2fTKhNVSAJfkdsUMidFIWtXNqOHzc9xw0VtyDMFSqVQ/i3KnNDgDLWrlOmhXDqQ
	 QALf08T9RrsSZ1EWEjFH+QLCsrvZ4TsH2c0dQ43jaUCqrAhDRYkh4m5WWjDwn/4xHl
	 g8ArkEvZhZ8A8hDNAHgmqvQVqbXcaS/vbw+giba6za81tRYI/wPp+qQovriHRDN5cl
	 UlhCGOPmdMwRA59YNIO7CFVj1NiibzzeXFfyOm212NrhDIzPEk21S2Pumeh0tSpyxR
	 ZW+AM2UW/gHVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E566CA1007
	for <ddprobe@lists.linux.dev>; Tue,  2 Sep 2025 00:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175677179357.26004.5441624177897288452.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 111f67175889865ac07647b06fdf4b8837eaa353cfd0e5d14cd6b8ee45d11eaf
Date: Tue, 02 Sep 2025 00:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756771793
