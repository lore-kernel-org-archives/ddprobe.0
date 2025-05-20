Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FB321373
	for <ddprobe@lists.linux.dev>; Tue, 20 May 2025 00:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747701594; cv=none; b=e6VuzJ8DZX9RsIGRiyCF6AzRMWZFmsOO8rNsYxmPLohAfIl9ZorxsVQG+0tA4AO2mP3t+SbjrZE1pFirn8YGIgo2VPh6NSdBj+TFJCXFcZECxKMX+J173tzxpnAAZfyhKC/U6vpMf4EonjCZ72y7e0jYX/t6/NtCv8ahwupwI1A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747701594; c=relaxed/simple;
	bh=rCx96TTmdNERjDToYbDHHsLACmH9lY4PZQlCR/AJZ18=;
	h=To:Subject:From:Message-Id:Date; b=fxliFS5vRnDymc0aRoA1VOyesX2aH0lALY6mUqc3twum0WsxVsRMAdbtkrEhk9PKA+X/B09ns8pPIbHg82M4PtRguRI2K/e8+DvUq9ik7fA0OAlh1JhxrUX78YCNEPoiz9UmOw5fv9SVEqhwixst8xh1YLkfUxfNHooMZHMfEFw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZNcHM977; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZNcHM977"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1396C4CEE4
	for <ddprobe@lists.linux.dev>; Tue, 20 May 2025 00:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747701593;
	bh=rCx96TTmdNERjDToYbDHHsLACmH9lY4PZQlCR/AJZ18=;
	h=To:Subject:From:Date:From;
	b=ZNcHM977q0J86xRqZX4bm1txLuqZZPIlUppC0oUJ8sMYPJsUySF5tlChuM63PBOBY
	 RyIQMEtaHvFmJr/sbkjXlWbh7VRTh35tnxaWQZEXtInwDNr6vaITqteUpFansy7efo
	 AseU4DxSBzbdZNZMnt5MT3P0HYc3/slfe+0wPLj0NLBGoWZBgtAh5123nFDd9CF2XH
	 10rNCDouNQk2S4apEyCFEr72ctcSw37yLJmSEyQvYp6kPIn0zn9klMPEupDs6typCA
	 2EepjvjO/h3mYAX9mFUN5yMb2tszHsBLboABt+yXsTOhJ+Dy8J9HryhnSVZ3DbksQs
	 oi7+Pdss1/jWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8DF36C54754
	for <ddprobe@lists.linux.dev>; Tue, 20 May 2025 00:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174770159357.23769.9003639141129013696.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3d4a2a9a2ee344e7f74025cd9da729f141db70efe2a628a77f68c35579118d70
Date: Tue, 20 May 2025 00:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747701593
