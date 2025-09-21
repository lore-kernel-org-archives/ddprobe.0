Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BEAE2F4A
	for <ddprobe@lists.linux.dev>; Sun, 21 Sep 2025 00:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758413994; cv=none; b=S4i98DKIixOvN09ObKdqYViXZ8yl4phtUrQWsfTW+LwF1p4cG7zFu5FlcL0aGuP/4lRj4+aYr0zqQg36GPPmnC2sNIYu+5H/qljhu+m5bYpkQ/9CiY90uR1ZPt0G/tYklscDtwbQmza2dcp4rOR+YRB9fNDV/b158kmWGYqKYlk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758413994; c=relaxed/simple;
	bh=9lWtq/ydgVY15tF/mneMiraNJ6VlRzIQFmCuSfXVD5I=;
	h=To:Subject:From:Message-Id:Date; b=GP9eXfXza0l4ogw4jNiJfWwJTKtA6o1407HmLdd7oFWioWq79ECB51qW8uF2ejVwG1cc6xA965n4DIrVt6V48EqZW6X33Wx7DlG+BNJt09Ws6o1vKaPjFIlVTC5d/3clVj+ETMHIXwFRlqCfg30N8bC1TsYdvSJkmDeuFTi7lJ0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eSYKRyuY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eSYKRyuY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8148C4CEF1
	for <ddprobe@lists.linux.dev>; Sun, 21 Sep 2025 00:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758413993;
	bh=9lWtq/ydgVY15tF/mneMiraNJ6VlRzIQFmCuSfXVD5I=;
	h=To:Subject:From:Date:From;
	b=eSYKRyuYr6jsxXXQ/JE5PpSXW/BDF+we8Z/D6VD0+NzhC6HuX9ldlS1gA/cgBB/pV
	 B+GCL7wIS+PctlMBJidbG3ARJDUyooFMho880LgjlM1jc2FE4bd4P5sqMUdOZvitnF
	 bMadyfqGSniY4An/6C4Ddl1iCken1Ha61kGHz4kHfRGN5Oemgi/LcD9o2w3Apcx4D4
	 rmBO3pSpLZIjNG8ESRMUkOA1+DZJV4A8CG07ilqLUSP2hIpcq+l9ud9pqc/9V4GmEn
	 hlVaSr4q8bX8+1ldWYZxsOTDbdY5uyqSkSmiwdUBwiuLuc/n69U6z90E3yJIdZS0on
	 RJCIxqCf97DzQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95D59CAC5A7
	for <ddprobe@lists.linux.dev>; Sun, 21 Sep 2025 00:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175841399358.20625.5067241380446129625.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 06bdc56a70f901e6dba9b2a5c6ceeb704e83d4b82dd9305addd3ead14bf2106e
Date: Sun, 21 Sep 2025 00:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758413993
