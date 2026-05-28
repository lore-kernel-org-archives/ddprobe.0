Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38E8A13FEE
	for <ddprobe@lists.linux.dev>; Thu, 28 May 2026 05:52:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779947554; cv=none; b=cs+R7GpUxYjC+qLDXvVu0c6BNk8+MG6GBwIJmvKbBQMRjBzqPxZLCTjZEouJNWb4HBKHJYeDsMyUtjVIqaAHWGssgPxCo6SwnNhDMLZioco+VQpsRgy2d+e4KxTHrEd3huy5FKrMuXOfysDQ69OdWzb81xSNmIWDb1SZWfYDgp0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779947554; c=relaxed/simple;
	bh=OlkXuuqeA6p5rxBvdYrXjBtNLyngwFED9k23RNd/P14=;
	h=To:Subject:From:Message-Id:Date; b=McHGwkJAVmubSQMQUFP1/bz5VAHtGtf/auPnjRLIjHp/86ioJ/2CGAb3MYqZZ7g4jaPmu4+bQ/p6e6WQ1F9pXX/onEjf+PPR0pZQmqZhDUwLK2FXKA1A3r8RYdY+lBwUJtCbuod8/xAKChJgDhbiie74w0B3Q3HEMcMTLIGBRzU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t5tu8L+O; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t5tu8L+O"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C477DC2BCB4
	for <ddprobe@lists.linux.dev>; Thu, 28 May 2026 05:52:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779947553;
	bh=OlkXuuqeA6p5rxBvdYrXjBtNLyngwFED9k23RNd/P14=;
	h=To:Subject:From:Date:From;
	b=t5tu8L+Obr+jrGf+L1TLBdkSTk1xSnRk9rfNMMhZI5MDGzX5AH7YUyfCAZipbRDdv
	 wWSWBR36vz9yF3maKiTl0hmCq07WZ/ow9OKjS6qgzGGY/Pw6ZoV+JpRroYevkO5jjx
	 h34GTuz4zS4ROtOy5EUxwAsVUvSfXSou0VV6aZf3vOuNjvVOXru4CvIbWPbOUtciBx
	 Tm+JBFryNwibaaW5mbNREjoOsmHx9mX0F31K+LnSW3P+tqipscFXcw2CW6gAM517SY
	 shlVgOV6MKTWWY2vP5w4waWJywpATna57VXWvDMmX3hL/S6cOLwCC+CdZ7kjV+z1ZW
	 XtzlJkobi9Qlg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC2FDCD5BD1
	for <ddprobe@lists.linux.dev>; Thu, 28 May 2026 05:52:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177994755369.23812.7843087649290060054.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8e7387eca679be1bd1d45e62036ee18a02cfef9c4497f7cf0319e9cb2afef0e2
Date: Thu, 28 May 2026 05:52:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779947553
