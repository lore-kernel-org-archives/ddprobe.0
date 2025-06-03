Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3363AE555
	for <ddprobe@lists.linux.dev>; Tue,  3 Jun 2025 14:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748960394; cv=none; b=mVhWTj8G7TAcarlRDO2LeBHnbqOyQ0dIe6gLN/ec78XN5Gx0Kkn9KvL58lwp0osfxO3vbMb7U5yK6U2pOyiX+P8QHaeVuhme7JTto74+kd7myM+/82gfbMETSoDhG2jgo9AMNk7Sa/saNQNpIavJ7nJCdJGg5CLx7LlAx3lNm7w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748960394; c=relaxed/simple;
	bh=YG3jKzCST0hxRNxIoh4KNjU3IZpSuQVvM7FdDTjyr3A=;
	h=To:Subject:From:Message-Id:Date; b=ezKSfaLCDyZ4+POWzyg9hsA2Xl8g9SDfvEG4syfrgFIkJ5S6ViN51pqT3UjRS6NqpODHwIt6k8MUvJhRAMrOjY/5XEnMiBrjZdMaV11IcKaFPDTNqVX4qWtOa/qRyigsPcQOhYhakhhgOS96CBtbD8OU/+HroDXXt3T8NasqAV4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NEgXA/dd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NEgXA/dd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0C35C4CEED
	for <ddprobe@lists.linux.dev>; Tue,  3 Jun 2025 14:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748960393;
	bh=YG3jKzCST0hxRNxIoh4KNjU3IZpSuQVvM7FdDTjyr3A=;
	h=To:Subject:From:Date:From;
	b=NEgXA/ddlnwBj2zaBm5JIjkBA3CyBD2nuLWsb5zrYn1Iz4c8oqxOdoHyBU09SIwu2
	 WisXwrFWCyr0F3Qvs5DhVK6b0ECnep6541Vg6PAufwYhbc8UsZPX4HHfz01JDNZibP
	 6VRzaFvKQ9tiaiNybaFkGB3oaSwkc7e0x8ZepV/xslqczExHaE89IyNKNrqW2FGhDh
	 +e8QUjm+cOw9dwB1BACbLkUy//yCtSWyPgyxp9uOyDd+uY+tNtzO1LwyJptV3RRQHP
	 DytCCeqg8pOldShLhZ/x7xQebC0ITOiPDZULfB53WzcJ/DWSaAPamZFAB0gleydzsn
	 D19pffWefGy3w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ED0EC5AE59
	for <ddprobe@lists.linux.dev>; Tue,  3 Jun 2025 14:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174896039357.17275.4083053778465311734.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1deedff258bffbff31eb024b5c0ad9ca6d92b0a1706594bda4d2e2ac4197fdec
Date: Tue, 03 Jun 2025 14:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748960393
