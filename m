Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C46C820459A
	for <ddprobe@lists.linux.dev>; Sun, 11 Jan 2026 21:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768166033; cv=none; b=ffoPUPsNZSkDgTqtI6OKMcuNz2oZ20JYrqKiJD+IBwhq47+3ubAbpvr1OzU9SMIt/uBDzarMSCBuqHUutWe/u6AI3TQMbrgnFpTeyBQVC4g5N90EKliTDkEYnBaDPuD55ugb1HjvTSBhEWtPr66yPS+ZOMrfy2YaCqS2Or57/rk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768166033; c=relaxed/simple;
	bh=MOEZ7XS2FEWVuef7uSlUzR2OuqpwGEwOWaUmBI5DR/o=;
	h=To:Subject:From:Message-Id:Date; b=SKRHC7h1DeWgtTlJj8bTjQZGiPcCVmB7Hj88grM4wewUMxkovV7nXdk1y7N8Rp/elEsLSvwRznp8lG6K53x3bk+EWNhiTtVDAZpnlUAncy3S7eQInQKjfcuDW2LYqm72o842uqdfgGBRYcPC5Q3qXM8b2FjNlWQMKeo8MIw1wtM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Xf16Iml0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Xf16Iml0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5DA9C4CEF7
	for <ddprobe@lists.linux.dev>; Sun, 11 Jan 2026 21:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768166033;
	bh=MOEZ7XS2FEWVuef7uSlUzR2OuqpwGEwOWaUmBI5DR/o=;
	h=To:Subject:From:Date:From;
	b=Xf16Iml03YGQ/9eymd4NQc24h+G1a6V/nddRKrEQBf8EWaSZQwuw3P+4YgKOLNtgw
	 eLwS2Q+pZpnHGxfzh65iflvce6/CtQeJglP0tWmVB/biiqY8mHn7HQIPmswe7rsSgr
	 W31GzMHwWMYw8CkTPyA9zuzJNmo28SPElo8H8lkM9V47Cz47D8HlUUfmeIKe/yDDcj
	 m8Ld+slFlNRoIGcwFW7LINhAldOWprxYAWajMtT62LRUlhqNC7uRL9EUazSexuBtJF
	 H9iO4S5JKTSBPRHrnboz73QQ5qOq4VTyRDjWqN+ahXkjDzfLmB0l9oCRRazfwbZPg6
	 zYjiCNSKonP3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93CD9D2502D
	for <ddprobe@lists.linux.dev>; Sun, 11 Jan 2026 21:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176816603358.1549.976038952444688160.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 026671a876e9576039a27774ea8fbaaaea3e60a8dbbd499b1f49756e788ee7b8
Date: Sun, 11 Jan 2026 21:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768166033
