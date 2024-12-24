Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F7B21B85CC
	for <ddprobe@lists.linux.dev>; Tue, 24 Dec 2024 13:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735047354; cv=none; b=nUNWrs6cGZHSgr4rfes49786oKHGvqw7YgG46ea9SIZm5g52eoMoBbZ3HTtjBYMXlz+0qgwlndaiL1tUM/TZEluJNjKeQy5KDqCGhOzXLokMdvSjIaEtq8B8OQ+ldjy3rJo5ka9Kk4G+yfrwpTi3lBxO50uvXukEkVM7Ix2QJJk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735047354; c=relaxed/simple;
	bh=62mTGxMbuC9MdjrhqbR4VQjDzDER3tj4buaZgsDvU1Y=;
	h=To:Subject:From:Message-Id:Date; b=amoDxZmItP0+dARduci0H7b63l960Al8luhPSIvGnG+ZWVdMMsgN1bv2m+bVY0BYwHpA4d8Ge12w6FInA4Pe1gKbHQ4YSNkPMOj2knlBjWRePcDyxXO4QQoqqporQwWn24ohKQN8EYmKNidIWhuEREYjjqxsxqDnUmV86K+el+Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ny2JeEFG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ny2JeEFG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7C7AC4CED0
	for <ddprobe@lists.linux.dev>; Tue, 24 Dec 2024 13:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735047353;
	bh=62mTGxMbuC9MdjrhqbR4VQjDzDER3tj4buaZgsDvU1Y=;
	h=To:Subject:From:Date:From;
	b=ny2JeEFGEhXdr+nJArrshVkHZHYfoOk9+e0ZMVOrk4YFMBYbf0L1+5ctrCJes58uz
	 k2SeC2tqDxbk0uKhqsYfUTAC6cQNrvD7+6ygiimpIIZtMA6K5oPRBQH+Z8uzK26TWM
	 6ILjbGee/8wKJmQYX/VKaEj5l2Rh+JCKvdzLp/8+jNz8zqxNWp09i3rdHTseILKKJE
	 rXSnDo+e9hvH5AAtqUFlh6Gk6qeVsLOg23Hscmsaq/81Kl53+AEZbNaHd5VTOChMt+
	 5rOwA2nbWMRaZ88PdkVFARpoIRczqHF4/OsfunQMQbu5ulbvdKnbszoK2vQci/5s1z
	 PiDRXFjyx6MzQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2033E77188
	for <ddprobe@lists.linux.dev>; Tue, 24 Dec 2024 13:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173504735361.9050.4224540677179658618.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 84719ed335acd8d4fd0934251237b0b49413eeed2a55f359037bc0516cd95f39
Date: Tue, 24 Dec 2024 13:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735047353
