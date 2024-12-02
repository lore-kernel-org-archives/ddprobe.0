Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2722246BF
	for <ddprobe@lists.linux.dev>; Mon,  2 Dec 2024 02:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733108154; cv=none; b=UFMBox26Jo8q43Y+b9g/JSqobm+D7wQptbD9NgZZRNOelHUAUZ12JISFfPWzhyKUrFbSFcIAVdWoNunQfWb0doANMw8meBOLTmAf182RjwRBdxQ5lrapvdfKe13BZ9Os8/9WRkBmvMl8v1rvgnUO4XQQFsJW6zkJctRRcYUeBMw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733108154; c=relaxed/simple;
	bh=+JBxgqTJGnDG8HcO56qKPawdo0AtmHl1VGtF7T8XuWk=;
	h=To:Subject:From:Message-Id:Date; b=G0tn/0FlUo2KSrb8tw9xty2FZ+q1NI+s2PAmYZxdJLlgawEdVrvvRGmfW0IYQV2iVw11vf4Tu77cOwx4Cm2Xmnw6SwhAz5YaIy9O7gHKBZEilpIoYxrKrVowRE+wvB7k+TtytBAzSluAPKD4kBmaBdMwWlRHRUoW+fSUn8L0M/g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QtiawMoy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QtiawMoy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8545C4CECF
	for <ddprobe@lists.linux.dev>; Mon,  2 Dec 2024 02:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733108153;
	bh=+JBxgqTJGnDG8HcO56qKPawdo0AtmHl1VGtF7T8XuWk=;
	h=To:Subject:From:Date:From;
	b=QtiawMoy4OfzUmg8qNzGvbJu3pLDYj43ON8qpyZijiLd5psTt/WfXQjcgrL1DZOcL
	 4pWZtPwNAIYi4K4oqloHKy586UfTtDbjrTNTTJJZcxFO78dmoZ1kMmWjZSHETXaYG4
	 uMqR6PBkfG2uTgT4njOGgnMArkbt5r//U1ecvCE2mJm7oimehZCP/ICcIDeOLaRmqJ
	 n0EOrW8Ic7UIlbfzuSOXE7H8P8nge9oz04284ZrywOiPtJO9RLMzbtcxbZGG1N3G8q
	 oEkZ0omn9gTfKIlAk+v5qCA5oTscFYXvoQkQRNCOxZ/z26mUbyu+QlIAZ7a25p8Fx+
	 DfHKqC6b6oOWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92BA9D49797
	for <ddprobe@lists.linux.dev>; Mon,  2 Dec 2024 02:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173310815359.16537.2385974732010105411.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3d20c8db89ee19a19916cd426b9618ef3df6de99a7bebc736b45e6bc4a1477e0
Date: Mon, 02 Dec 2024 02:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733108153
