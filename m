Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 241071E376B
	for <ddprobe@lists.linux.dev>; Fri,  4 Oct 2024 17:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728061554; cv=none; b=QF3DFtZeBhsZHWmNQ6gozhzoxUk1Q9WwJOpwXOqvDiDa/aFU1ePjJuOujEsDIOWjoqW3E1mcHnNNtPBtvyC1+DzkD48o7+R5E80JIv2MpXPQMsjgdYhlvqoMcX6R0rLoN6I8e6P8AA4M0Ld9qRMSm9RbU6MbBTyZhFernuN35G4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728061554; c=relaxed/simple;
	bh=I6opxUz3sykcQw3oWzFPHeRnoIGIwr1YjV3BedSp0xA=;
	h=To:Subject:From:Message-Id:Date; b=SOOUlBrFmmvAC+G+bmugf1KglF3D6DuM4cWUjGbzftgdh/zgWJJ4KpjV6MRVsz3fW9qqYI+JRRd1EhTyjB8Fr+XIsgeXcnJpsCBbHubqUSowGsb2exjuH0fCYve+8qZ53G66yJKyTKk/K9Ikzcf5JAs+Sl/uM6YvY6ro3/mhUG4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eLRH2OF/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eLRH2OF/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7E54C4CEC6
	for <ddprobe@lists.linux.dev>; Fri,  4 Oct 2024 17:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728061553;
	bh=I6opxUz3sykcQw3oWzFPHeRnoIGIwr1YjV3BedSp0xA=;
	h=To:Subject:From:Date:From;
	b=eLRH2OF/NmKWuSN3oFbgVheZGsP40QYAZm5dgbZMpiXyl7mF4zn7zsv4irBuaodyr
	 v0f7e7ZMkWurl0CrB/odm4DUTnj1FjwVbX7vtrfmMLnfETA+RzDI0UH9DutCA8y3xh
	 y8DyaY2KaR9LGFDoOx1udr11qMZ9yAHVvfYo5NGExojKLua9RjEFACf2PThqsXzrOZ
	 hp/Ym45Q0M+PBRlYOg0arMF82kf0HUVnc/Q+sjBTqehemE4+rXq/epD1TIG0hKRwTu
	 Nw5JFCk6Rz+jJooznkTFVLn4/Kf5xRZlSxv/wfLViX+K2tXHNRmE1BsTzRM1eo+nDc
	 ciyJj9n5dX6kg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3416CF884E
	for <ddprobe@lists.linux.dev>; Fri,  4 Oct 2024 17:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172806155363.2349.8480133174954497615.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2c658b4c35b4560bad6c718e12891e8e2f89ff8ccd9b8666abc7540bf352fd96
Date: Fri, 04 Oct 2024 17:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728061553
