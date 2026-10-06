Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51F81331203
	for <ddprobe@lists.linux.dev>; Tue,  6 Oct 2026 03:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791258634; cv=none; b=AD+fgm16h8PKUM2ayDpMPVXTeCcvwirYdmyYga/1mxq74NlLed3y2dD3i9vN4TF9KhOa1WsvA2lC3Le0rvV8LKqd9vwjNMyESGfZ423dqobPgj1LmTCQmblscA5FYnBiPpPxrVynp5LRpFbnv+E1a9UMnKsjgpWQL0cTOLfSOLk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791258634; c=relaxed/simple;
	bh=hbdpcC97C5dvgvwL2EUh5FMuf7rva61HufM5qctZ5Uw=;
	h=To:Subject:From:Message-Id:Date; b=Q2EtAomelAP+wZg/i2hBC3z7/CUcE11RzxMMqkDIp8oy76QS+12/4M0kUCVYdx/8vFQeeQfuQfOjM2OzlbugQGwpMQBydMYNej049BhVGrmtsg6Sl3t2Bkk3i6zBeCJHyBwCKkbqsg/+ZYRugixI67kxLWNmDc70vDFQa1nn9Q4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aWZymNSt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aWZymNSt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC05CC4AF13
	for <ddprobe@lists.linux.dev>; Tue,  6 Oct 2026 03:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791258633;
	bh=hbdpcC97C5dvgvwL2EUh5FMuf7rva61HufM5qctZ5Uw=;
	h=To:Subject:From:Date:From;
	b=aWZymNStILacnP6Hx/q3R3KX/9bq3T2cqnsTvyVzT2x9PGXINlLciSTqxksKiAo2l
	 s9DaMq3acyRIAQZ3v8sIUgyCbyKfI3aFyb0ZxFcp0cmeiwwKhBj2NeUWiw+AUrFUSS
	 T9RJpHPJJz+PVmFzBIPdMaVQjQPoKuOTeaqn8+Elg7RqPdvxXjbnFRI4K1H2hhiilV
	 fNsO9jPjxKN6RaYV6XhQGkRwA6zizdxfBWUppajpkwJUDfAfhng7Zpi/DpmojB9W1l
	 iCNA4esih1/9yT5Ktj8vAqfWDxPZWzZIWpoi551oArvvizG61ziLKIy23EypmMrwO7
	 xVw9pfp6asvDg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9D02CA5FF0
	for <ddprobe@lists.linux.dev>; Tue,  6 Oct 2026 03:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179125863368.21834.3352783140969423735.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aa41f4082b23909c454c5eedc0035a61faf611743391ae4dcf574da93e9c07b4
Date: Tue, 06 Oct 2026 03:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791258633
