Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A3FA1B142D
	for <ddprobe@lists.linux.dev>; Fri,  9 Jan 2026 02:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767924234; cv=none; b=lsjsrfr89gEB0/7PjsLla3SoauIbb3V1TiiN3XsDPD35mkR7c34kOfmHbw01XqSA70J+M+PgKIBJky8lNtFKBNiqkaa2rW4nZ3ztjZJmWj34PDQWGACL8THvA1V+NCLmaYuE1oIjmRObJ0Jm66584FVdd7emcSI4TKcaybcC8R8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767924234; c=relaxed/simple;
	bh=w0h1g7+Se94gzz9ZlBxUhe346e6YOS0w+DFZNJcwbJI=;
	h=To:Subject:From:Message-Id:Date; b=aisyLAv+FMt/xqHf3HH8eROUukm9QyGljJvT3dGKgAZn2vvB0ivDWDYVeqgfmOuBcTSPWkyySmrCDhZT8sqvWji52W5nEFsPETYOeWxiBHrDhmqCbuusg3lwxtpkCG5aG0YTBEWTcW7Zzr+x+2jTbCrwLjEFSQ2Sfdk9luBQ/hs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sKsr6OHZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sKsr6OHZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F618C116C6
	for <ddprobe@lists.linux.dev>; Fri,  9 Jan 2026 02:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767924233;
	bh=w0h1g7+Se94gzz9ZlBxUhe346e6YOS0w+DFZNJcwbJI=;
	h=To:Subject:From:Date:From;
	b=sKsr6OHZ7U9z7OM1AuK3jyoMY04bTeBlzUev4X3rzvM9DRBPana34KleNgQRQtjvu
	 Y31L+v7Nh+/ZYSrflYqXpJ4Ri1r7E2pG7r8DRBS5VF9cUceNY65d/7Du0Y3mIlz1To
	 PyvIsYA48omw5WynLJyaBe+Ly3VjPYk+jAD2lfd/wZU4oQ7Nd2IgnftEbp4GXydLBE
	 +4Jd7rqw94uI3uJIqsa3l4tLGsE9SjIIA3SfWU4EHPzIkaQvFOn1pyMWjstlf8LURF
	 5Cy2lX/iCKqCD7UEg4Ojpqq5woZcrly+dgBShjpGFPgn0MMWIpM4+w31JEOot3PfDV
	 ePC88cxi8L8mQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91B81D232CC
	for <ddprobe@lists.linux.dev>; Fri,  9 Jan 2026 02:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176792423357.12159.1097306570547531112.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 05c410787074f222ef9fa406a5086b031a28ade3162b4116382e0a2a11fb7787
Date: Fri, 09 Jan 2026 02:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767924233
