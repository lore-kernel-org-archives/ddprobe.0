Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FF47EEBB
	for <ddprobe@lists.linux.dev>; Fri, 18 Jul 2025 12:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752841795; cv=none; b=SoleyTfQ7adZ+YqDhtHWrC+g6qxHTyLUu2MrvlgA9tW1XE3oIyIedpt40E9Rq0ATDDbvCmJxFVjWGWJHaoxizLOaYkPZKv58l1Otgv/n+cw5p0cx9NhlzHpPvBFtqB5LJBEpCyybeQT+U5NXJZgPipax2vFXNxYN0gTiLq9ipSQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752841795; c=relaxed/simple;
	bh=Aw/tFijFrM7I2BHmxNxQLtGWE5gzWxQbSGdU0W7xNpk=;
	h=To:Subject:From:Message-Id:Date; b=dLFHkb4AD+0hnwlQNEpap2o0Qc7BbP62TZMUXxEnPNhTp6F3bXLvQ/zB9p4JemhU5wBmXYu46F45qctBJcGhbgTRH3yaddMWq3Vih15q3qzRLEu4KtjfiL6ZOGy6VyNDIjREQhg4VR4EVO2fF/gnx+YP/n2cbUI3rEjqW1fCZSA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Mtc/KYgW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Mtc/KYgW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E3B6C4CEEB
	for <ddprobe@lists.linux.dev>; Fri, 18 Jul 2025 12:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752841793;
	bh=Aw/tFijFrM7I2BHmxNxQLtGWE5gzWxQbSGdU0W7xNpk=;
	h=To:Subject:From:Date:From;
	b=Mtc/KYgWCsHZ2/Qpv33oAHYvnDUtZ0R2taIlH7mzCv1mlqpEFW292BLS33el+FsOV
	 mwK5tu8r6kT90/F0pCCp5v9Qr6hgrmT5eq3ferJEJ7yWpDRRbUy8jmJ9aiAf48heXL
	 ZeDdZfDZoG1AY23xCLTqJMuRtJ2MW2OofHPBXcOMU4LKZUabltk5DBCBFljndqjUjn
	 SJK6UG4ec11asegjVApEjikU5uMlfIaDSyDal/6HT8GPRLYxAGugaVhIORiFXOGPMt
	 T+gJsjPlt6LabqYyV6N4eMXQLlLdrEPLu2cUOVj6IZPBCTo/x8gogGoN/mIDihFzst
	 r7XZRsQtngDNA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EF86C83F17
	for <ddprobe@lists.linux.dev>; Fri, 18 Jul 2025 12:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175284179357.9559.10207170769111237557.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c05714cf86c931793c62a39f42a1e660d6a4a919a412aa6ff1890df16a78098c
Date: Fri, 18 Jul 2025 12:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752841793
