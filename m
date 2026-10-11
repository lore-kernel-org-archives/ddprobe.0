Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D18939937C
	for <ddprobe@lists.linux.dev>; Sun, 11 Oct 2026 14:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791729634; cv=none; b=hsRQPfH0CX2tRIVSakigXiF44OjSZsSPXfcWPe/22xyld+ENqVnqwcaGsL/tDATi3KolqCIrLmBOcFCbXOZZURpGse+PDN2Hu3v3yqrVG4w2f3DnKStI4u+YN8S9/RNR1tCcX5mmE/hvs9R3jvaqYz6/em3yNxY3dS9oBtVGRbE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791729634; c=relaxed/simple;
	bh=YlZAlch9RtvosiTBix6Fq0mi7baTVnU5ugm942WkRzo=;
	h=To:Subject:From:Message-Id:Date; b=blXJjlw8LPhwK016d1IWtkv6CcUQmMI4xnWVZJD5Ws1qb7b4sbn0ccAebIOBPTGFBGL3Y6miyjY2ky6NMLNrp0adxCMS0ZZ20k7DPaYls7upO8GEkyf7GKpmL5PMRc4exliW98m/RnnzAugGBrrITcIbEh4QCZY5vTsDQvIbghI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oDDS4dTr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oDDS4dTr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8CDAC2BCF5
	for <ddprobe@lists.linux.dev>; Sun, 11 Oct 2026 14:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791729633;
	bh=YlZAlch9RtvosiTBix6Fq0mi7baTVnU5ugm942WkRzo=;
	h=To:Subject:From:Date:From;
	b=oDDS4dTrjEex32fSZ6CJ4pldgvshejZ2uQbK/MaCUWLhybPQCvU1KGX1jscujJ/Xr
	 KD9rQ3Qsn08NlVEbsL2W3CdPjzWtrkTyGDFksUfO1wuZ9xhKeZf/k2zgj7qcSLn7hN
	 G9mwECW/Ckkk029xvJXg4xRRKoQAD6Iv40ITwrmkwE7yQEPLBgXx756ELxvSdO7UrX
	 U4+wvDebWLgMy1zZ399r9Bl26ZHUtZHQhrbWsVzDMykAKemRbxxeeOs5xuJeh7gH96
	 qS6Co18BzzEU+IGKca17M6JwiHuRctF3fKfHDjTDNVtpeg4MHvmQ3FqwvAMfsg9wFW
	 G2sp4BiNgwjbg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF3CFCA9EBD
	for <ddprobe@lists.linux.dev>; Sun, 11 Oct 2026 14:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179172963370.7943.18037414748469715801.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b7e1b73196fe3dfbde9d275adaed8367ed3598d40279c71525ca75bf9e328b32
Date: Sun, 11 Oct 2026 14:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791729633
