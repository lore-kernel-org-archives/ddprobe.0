Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53B093AFCF0
	for <ddprobe@lists.linux.dev>; Sun, 20 Sep 2026 02:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789872034; cv=none; b=UVeR/7hWx4tSjwG904nBconHc3Bik78sMX3FBrShhFNqPcjr+mmbi/Cbyy0Rr68vzCBPjZOeVGeW++pMlVSVuQHOqAPI0Vraz+yh9bY1QhTtT5Na2itupWHTR8joVSFHQCMjRSKRJy3rceJk/G/89Je8OI5MX95sLTB39gf4CxQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789872034; c=relaxed/simple;
	bh=UvE8vDFOPIwDkH/LrpU6QXvGTEZCJaa44tEBWN4sBbU=;
	h=To:Subject:From:Message-Id:Date; b=VX18CLXq11j2XEa4i+ZlVRILW1pVwtP2iU7Tl/1mleHiI1QjvMZy0lJTpKPvYxAxf/N/d3jLjAmucwBD9Syd5aU+keC43t3BBXpao5Vcke4Kht5IcNqDgb3HvrV+J26Sunskyh5FSGn1vusUOELyM/YfK09+aJzdpeIvX+ntzsM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EjcTLj7s; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EjcTLj7s"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA776C2BCB9
	for <ddprobe@lists.linux.dev>; Sun, 20 Sep 2026 02:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789872033;
	bh=UvE8vDFOPIwDkH/LrpU6QXvGTEZCJaa44tEBWN4sBbU=;
	h=To:Subject:From:Date:From;
	b=EjcTLj7sHxHxBnpAwU7Ug4onF4Uv6TAyY/hWnyzNlnPQX08ZrAErQrg5loP5nWFgy
	 adlshsuq6AxEw6qW/dXe0A2qd4D7+/IqKbMKt3v+lB0xI5/Pe3mUXdttt8zzWX9I9g
	 TK4DNnQMPQSovrD8DAxfQyjIKfqha93Q+wSZDLte4PRVmNwpIS9JqjthEUCE/ku8iq
	 r8XFNPnRPsxgIoB4ApWVfZyXf7oBSCnq52cAdlEE5EFy8GwaoM90AR3jeGKWQIDKLd
	 3pg9Qa4UplDfW/xza71591zMapj0lEep6s6OHJLXMUAO7z279JoL8d95Zi3Ub+OP0W
	 7kAZAVhzeMj5A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6381C982CC
	for <ddprobe@lists.linux.dev>; Sun, 20 Sep 2026 02:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178987203370.19159.16639992069860176375.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 95bd1d38be6361da848d26847b10e20459f620d0ee30bf1e3123d7af8a4d4a22
Date: Sun, 20 Sep 2026 02:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789872033
