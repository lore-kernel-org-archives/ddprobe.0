Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DEC6D22A7E6
	for <ddprobe@lists.linux.dev>; Fri, 14 Nov 2025 01:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763084394; cv=none; b=gQu9IbOoc5j2A18qrYMx2rIT22zXCnlVZ7OCOLlu1d61koumo7An0bFVddC/pJ4p714NzWAdtEwmhMeFYotybYIYfnQGgF20M86IRRFgoVIiv4PGTzO0qrotB7sa/zYL87LrKxSo+0lrQ8Xc4NG4JFPo8BsWeJ/TfR65bihLSCE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763084394; c=relaxed/simple;
	bh=XkQfPy5kCHCtwY7fvH2odJopwRbHElAWN1TrRL7q1Ks=;
	h=To:Subject:From:Message-Id:Date; b=FjglGGrhXFcAEUlDb5g3byKmdNhBWMmO3Dgdvq9M4rSJEFNIgqQ28Ftv9WCZ0lWcFZJuGw6pqMP2Upeody4+9Ua5iSZmbs2xBAam0ogd4bJaHyo1nJlTYRpFcMEEw+23HxGyOnuUOqa0WWTCGzaQQ0hBd/A1HwGODQ4so9mpjm4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EejhpKK3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EejhpKK3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC08BC2BC86
	for <ddprobe@lists.linux.dev>; Fri, 14 Nov 2025 01:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763084393;
	bh=XkQfPy5kCHCtwY7fvH2odJopwRbHElAWN1TrRL7q1Ks=;
	h=To:Subject:From:Date:From;
	b=EejhpKK3XX5BTXRH+bTlt1vxmh35lTr32RyzZ+jvNv1ZkLQ0Q4CNWIWdaejsg7x/G
	 amQ1r/iHKdofsOGvgXAyWvicDZPOCmjzfY2vw1vGzhIr+U7OCD326lzubM7UwWzj6O
	 5zjRQDGGC4QXwI1LpDJ3DQ0KD8R9c3DSYNhNosQETmqdDQHjuPuV6w86LYcBAUvTnd
	 vTJjaXdVh4C4FUYMt7hWCXl10yJ4FIT3YD7YgijI4LtgpH5oTh6E5SU9xP9Duz8T93
	 Nv95fCzYYdc9d6j/vYRJ1Y0yXrt8uaU4i6KDsFwU7XBqJjhfHd5QJGJtumvx++nwL1
	 WsEocALVDSrdA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E7D3CD8CBF
	for <ddprobe@lists.linux.dev>; Fri, 14 Nov 2025 01:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176308439364.26324.8013798614999362849.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a41f7e3161acf3ae7b2f284b35bb5512070b69461c2fb9b5774e6d3efde97f44
Date: Fri, 14 Nov 2025 01:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763084393
