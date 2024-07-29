Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32C2781F
	for <ddprobe@lists.linux.dev>; Mon, 29 Jul 2024 01:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722215154; cv=none; b=K1yBSRTSi4xL+fr1fmn2lnKL8X0uWRtXQ5a9nKHXpOgBBEoCOLsc+3SB7J4OoXOstijEvSeee3T31+m3s5roKFMnXD/OczGdCMPlNDSc6JVvruzVVRQJYmrJ15j/1b3mONQ6tFtzbMBth8DD8IFR2w+N7zLYYLYIt0IMfrfI9dk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722215154; c=relaxed/simple;
	bh=bBEYRpIZ/Yfa7a5BkB58XBY9mTJ+RJ7PbJIdCNfJ5zY=;
	h=To:Subject:From:Message-Id:Date; b=C1mZ1iwbrSwWGH9IKmFUXJalx0yivFHY14qeJm4C2Vx8qvT1kzbee+91ajk2Ge0gee8iMSrIgv79/npJYEUIPtNlgHepnQYasljedqw/SP1BuhLqw/sEAm9HL60sSRky7cz5NZmYiObqpLONbIR1zGvzCzK+uAwGWgSxtBrmsr0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=a5cmkeK+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a5cmkeK+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5CC1C116B1
	for <ddprobe@lists.linux.dev>; Mon, 29 Jul 2024 01:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722215153;
	bh=bBEYRpIZ/Yfa7a5BkB58XBY9mTJ+RJ7PbJIdCNfJ5zY=;
	h=To:Subject:From:Date:From;
	b=a5cmkeK+u59heJzgwT32WJR6lkYGjpRP+Evb6Xs/gHAlrmFzurZMPADN7cO5+upId
	 6QJF81mx1RyO3aDXd76Do2T+SsjK/BAbP8LlE1fKKwwa7ER8sInQAPBa8C+g6WdhnY
	 IEdrelJh7Fk1/v9DXjKIMe8EZJXiGXGmIZElnRT4xp4TqPc+9xoc84pL8cmvNfi0fj
	 BSlVKfECjJTNOcik6m5djtRmDA9ooxcha1UWrkS+EO4knakg6Vio/Dv0Iv2cNmqIWz
	 Uwtse7ivG4gwc+tk/v7sYgUODPCi23yJEgM8lCq1gkUIdbmz8VadANQjQso6+aGzZZ
	 hYeEHNR/yTyWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9044BC3DA64
	for <ddprobe@lists.linux.dev>; Mon, 29 Jul 2024 01:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172221515358.13519.12125509653707456364.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 68a9820506a1a8c6554120020b2fd3883c3071c426e54f4e5b0d035df741c66e
Date: Mon, 29 Jul 2024 01:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722215153
