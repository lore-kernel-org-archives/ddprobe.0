Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5667930569B
	for <ddprobe@lists.linux.dev>; Fri, 21 Aug 2026 00:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787272234; cv=none; b=RDAuu8pZYcTcETYCNuPsfS8MpjUGmkoucQgfXUx5UNNLa08/6eHw0s0UrT/I8DXnEopojh+B/xdWfcmUzkR76v5eGX/TrsyB1uCuGYLRgkZoFnN+eST75qji7W4s40xSIWXiDETEnxg5KJ3UELciapKM2fceycwbQpyIy27VU6g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787272234; c=relaxed/simple;
	bh=bL+4QgsvgpDIKuDCxjyDjV2scL+eqgUoHy3WLf53sQ8=;
	h=To:Subject:From:Message-Id:Date; b=eoIzZYQiGrhB2YaBUY+kjHY0X5zJZHcCyTsrhRxrSnam/bavAe/gaajg/CX1S5jtbDXsM+CRgSW8XKm7uJcaEI7bdG4TglDxv6b3cPpcmX+MWDijVSy/hyq0KVJnM9eXwZ9HvLmYP7vPL2S5dylfZbfeiFVz6HH4VSzAdAJeydc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nEhclkpb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nEhclkpb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D20A5C2BCB3
	for <ddprobe@lists.linux.dev>; Fri, 21 Aug 2026 00:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787272233;
	bh=bL+4QgsvgpDIKuDCxjyDjV2scL+eqgUoHy3WLf53sQ8=;
	h=To:Subject:From:Date:From;
	b=nEhclkpbsDTop81EAM4WTvMNBCQrRG5RYe8ih6V8r30y7/WyiY+vglVOESOQdjImM
	 gxW7LlygpUfwRKKj77qB5FfkrjD9J3w9v/9BmErHOMbjThyIlQsHlaISFunTCIdwEq
	 ChYa2qkibgIT+8713AuDaC5waXEMV/2SVmtMV7nA/sTOzBQ/nBjWKEukGJwmeT8LE3
	 7h54max++SxwEbYJpTjQzsnALQK2KEyt+34O3FU63iEPNRar3Zu6pcl5AafNxLYUBD
	 KtuGdi9O1rVkzB6AUBUn4vAKslW/jAkE6CXZpe0AVbERNg4hpJ4P2qiESl/56roBZ6
	 PBitS3Krk5NmQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD95BC5DF87
	for <ddprobe@lists.linux.dev>; Fri, 21 Aug 2026 00:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178727223369.24270.8606012449572446161.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c87bf4b8eca36c8a4b29551760411e471c303653f580ce9b9635c937b5738d39
Date: Fri, 21 Aug 2026 00:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787272233
