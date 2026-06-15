Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55DE33BBFC5
	for <ddprobe@lists.linux.dev>; Mon, 15 Jun 2026 07:06:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781507194; cv=none; b=C3HC4ahyTViOf2HGNmkOOTg8tolcAaOWAU6Z4wap6BjxYvw4JczsbgWFEE2HDLqby7ZxuzUz1UAR8Qu72rXU8Y8+ZqX07Zx12W/Dt8SkI6T0RBiqPoBrUoUlrndr+qJB/AzO4q0F28jGHXHddbNuj0AhAv6qR5OfkqbFRfMGrRw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781507194; c=relaxed/simple;
	bh=zY5oHUPu9N1PhKnwEMNqsTahajSyzxmj6iApr9zTEuM=;
	h=To:Subject:From:Message-Id:Date; b=bPMz+SqHjufG8aehoWi+gWWd0vBbiFyDWhqTolKVD8qKRSUwpdNC5tu8z97Do7w3wZY0I8wIHKZLrcNbStOozl0OgDPlpKFiiqnlCYqdv9W8sl1SORT0UUBeO6Oy0cURcSRuiQwCN2JxQ41vCIhV9KWP/N5F3eraPKmbW1WmYsE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s3/DNDUT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s3/DNDUT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD1AEC2BCB8
	for <ddprobe@lists.linux.dev>; Mon, 15 Jun 2026 07:06:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781507193;
	bh=zY5oHUPu9N1PhKnwEMNqsTahajSyzxmj6iApr9zTEuM=;
	h=To:Subject:From:Date:From;
	b=s3/DNDUTjFnapheNJSCWWuVYhSPoXIDRDCm7OZTZY6Qy8iY/PUQSagO3pN7yW0aSX
	 ixCGXGGBwVmVeMNZttv5kEKTmSpTICF+/woG943LRe7if0IOYT8ZVq2+Dch1itvqs+
	 e66pMZeGefDRA6pAVxSziw8XJSBzDcfTz9cFVRSyBdyecXpwxMMq63z+6vjKAcBKrN
	 aun6hDooQlQnhw20uLVPLs7IQ3tzEpxgyxmjflASN5nV8me19m0n1KgAkJd2QSj3SA
	 U94NVjNnzPUBfsAtsGWDy8DeBxt1utPXezUEpoc675a0tZWBMXC+v0K/UPJ26jdMm4
	 PLA1hzSkGFQkA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2230CD98CE
	for <ddprobe@lists.linux.dev>; Mon, 15 Jun 2026 07:06:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178150719371.3294.7820258488030295704.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 18e2e35cb051f603064cdf9ef6b2cb56a522639cb32bdaad7a447ec7d00944d7
Date: Mon, 15 Jun 2026 07:06:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781507193
