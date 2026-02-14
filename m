Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 338317081F
	for <ddprobe@lists.linux.dev>; Sat, 14 Feb 2026 20:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771099494; cv=none; b=JXl+91Y0r8v/6LE7+uhr/T2Do83uFJMgLkzpPkr+OKcc4sB//YiByQU2YjSci6OlLyIcbXWRyWbbTrlO0bIkOGnoxIjz6opnvVN31neO/KwV36b4YObV6RUdkpeGS2d2+ME1YVPWKuckWn9Z5LNnzhAPvAYLAKLcHtvJwyJjva0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771099494; c=relaxed/simple;
	bh=lntZBv2YSJK7u98IdQrC2g0hTeK+hdPg7dk3JW2fwao=;
	h=To:Subject:From:Message-Id:Date; b=Hbayg+ZEJIDbkA6zNBeDy8mIsEZHqa508p9ymVpfBKITnvT+KIE03wtdcRB60lndJTbVfIMOB3BSXc7hg3GRNhlPMRel3UklEIn5vjdPPg/Sdio+1QLjOkCscXnutPkeP69391WjQitK8XPTTIRQns5NtD5U2X06rjBiJ2j1zQc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=H7LdNc5n; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="H7LdNc5n"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B69BBC16AAE
	for <ddprobe@lists.linux.dev>; Sat, 14 Feb 2026 20:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771099493;
	bh=lntZBv2YSJK7u98IdQrC2g0hTeK+hdPg7dk3JW2fwao=;
	h=To:Subject:From:Date:From;
	b=H7LdNc5nfF5sJom+Cw1uPraQMduttS3UpnKe6u8d4/x1hq6F6twslG077vpRl8M4R
	 1bo8V9DMMmo7pqXbwWbzZ6Dy6+78m4isfULXe13M2AeHuQBxNnfkJ4j2/ibd+uils6
	 izyQsF8+01a1ut8HWhiWs2AX8VhBWQdWtsLyUyKRysaXSWoXY0CFDPEwS3ZaYTqx18
	 02cpO1z4Uv0mvbrGP8q0eWGHn0O8NgUxQhSNRSi1hBXUh/ig5fG3YIEy5TmB4LdXCC
	 x8Qrma7OY0ob46gpOGsGNG3XsHNwzBcDtuU4C7pWttUrC4KgZuOtN6QXqhG9gMqEVR
	 6xhZgdWHEcRTQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9ECD3EF5851
	for <ddprobe@lists.linux.dev>; Sat, 14 Feb 2026 20:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177109949360.7189.17670576610400436083.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 225f112b6eac935a55476806afb3d9420cbeffdbc128441681cd9954cdb9e87d
Date: Sat, 14 Feb 2026 20:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771099493
