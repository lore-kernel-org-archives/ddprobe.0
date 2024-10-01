Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E37A5589B
	for <ddprobe@lists.linux.dev>; Tue,  1 Oct 2024 08:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727772954; cv=none; b=b1q4aWmmRUWdpE4ypHMfacqldsMgmC3B1NFPkj8WE+vtxZugw3vOJV/mcFtNQtgDftP0ho/qjL7cOMl1NkAIh0HjWmo0Ndu7mo8u5bbKFsSOWlXs2ONPe1fd9wiUIJNQaPNgRpQc/YeL2WEj86Vo7MNj9SEEWPHnNKQ41jCd44M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727772954; c=relaxed/simple;
	bh=TjH5gZhUkVzWBbUvm+clxyqjeuJbLQTcx629Hx61rzw=;
	h=To:Subject:From:Message-Id:Date; b=gCg5idqgGwNGavn7Eu7PchlL7EjjJBZ+fgifUJ1ZVG1WUA8VlegsqepLLldFy9C78TB0WvpoeCc/H3oPsX4EEHTqaHNrDqeKOT7OTAbYGlwXNt3Ixtdf86piQLNJ5rvWzwSZYs9IUX0q+fVGHA8IQ/mBlvQb1xkpQxgLUn0/Ku4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=usZbxOQc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="usZbxOQc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD747C4CECE
	for <ddprobe@lists.linux.dev>; Tue,  1 Oct 2024 08:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727772953;
	bh=TjH5gZhUkVzWBbUvm+clxyqjeuJbLQTcx629Hx61rzw=;
	h=To:Subject:From:Date:From;
	b=usZbxOQcyGSkPNGHOshet2HHLyklrzBYyAN036Ez9wOB7dd1EmhSVjxKyx+GQeAXi
	 tU6JDv1AWFsiIFEewvxiTQFURMHHIlxocFxRDN3lXIaxFssumcNwxxZZbktgVt5nvN
	 EedetsfFz7vK8yOj97H3gRzWlcvzYAtB0yEO88LKPguFX3HBPUgHwBW1aFbwXVGac4
	 diLKB9jc7BZtHspCV8nVxriFsUi2RT3Z7xAeLoEDffrSvos6jG2H56j+HrOlUItlRk
	 qTUaLWARlH3O0XyD1GDPVrAkpmpr2kgeQEbFOcGmrUpK88/4KrCFNg7Ibbu2725RRh
	 cgsl/RY+KWhZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A84E3CE7CE7
	for <ddprobe@lists.linux.dev>; Tue,  1 Oct 2024 08:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172777295366.18056.7685256649737563372.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 53c2cfbc9bf46045bd2f0906b8ff721a4d8ebaf94a5ea25dc515811b3082d2b4
Date: Tue, 01 Oct 2024 08:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727772953
