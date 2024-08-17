Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 08FD818054
	for <ddprobe@lists.linux.dev>; Sat, 17 Aug 2024 09:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723886754; cv=none; b=ZJg0iUoPDUNTZ9pRY+Q6PjJEx1lOJZUd/+0QNh8GaKooOrvYX0CIyu6TxBAQKLqqWjdjkXO23m6Mza5HBeQWGpYrcbnqVLnnLVUwMH6T47YXJBRXBjJTk7toKt9lCbldCNeyWuyEEBMy31xy5mWzVBu4fu0WbIecWgGS88eouNw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723886754; c=relaxed/simple;
	bh=dy+tR//NtIEayxA+4xVzqh+XGc8LhJAJmluuUJX+170=;
	h=To:Subject:From:Message-Id:Date; b=kL9zmvwOffoemyUAu2doH1LDTjw8A6hg3yQp3j8B0HoDt4gMF1atfy1oXBMcJYRsagoqz+5nXnNDICnE04WX4Mm3MESG1toIgPxVcVRVB7eCYE2XL4O64xDuet6A3VZkjbwEbj0wPbo+js51H97x8cgCbzQLUaUMPTQ/0x4b2+U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=txwk5/jo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="txwk5/jo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7FBCC4AF0C
	for <ddprobe@lists.linux.dev>; Sat, 17 Aug 2024 09:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723886753;
	bh=dy+tR//NtIEayxA+4xVzqh+XGc8LhJAJmluuUJX+170=;
	h=To:Subject:From:Date:From;
	b=txwk5/joMG6oCEgLR7m9CDAc2XSOhrNGRKtqs+vDiCtuDI+YEagu3pNJp9YNd+sbi
	 IkN0gr4CkCw/dQSMAv+bg52EvR+6CzSlMaYbrKZKvFhvJXXWY6gxiTCmwmlVqQzfNA
	 4EKXmzKjla+qrtgxdjwejlloaPwrRXIBoP1nnFakmRIcHviiNUkaj9E0r08V86jBgL
	 sSJS74EJTsft79NMumj5tS7iGgIIApktR3qXlKCS2dP0raKgHIi/sKbnkfFkICInq9
	 9WqRMD8TCCVyyUCIuDUz0lreYTluOGaNsvSjEXOY/6/U8WTKb0igSV5/2j4m/BMt25
	 3734XIQApKSkg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1E03C52D7D
	for <ddprobe@lists.linux.dev>; Sat, 17 Aug 2024 09:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172388675362.6539.1670642169386987838.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1362fec266b646b8a1f3c4efc2ea411dbe0752508337352145cc8a909779732f
Date: Sat, 17 Aug 2024 09:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723886753
