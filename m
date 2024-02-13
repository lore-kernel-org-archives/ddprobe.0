Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EBDD02BB0A
	for <ddprobe@lists.linux.dev>; Tue, 13 Feb 2024 12:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707826097; cv=none; b=cd6hFofQL0zXyve9B31KGrpAN1F/cTPKzZjoVbkj8W9UsqOkGKbZCFAT5fCmrtBLlI530LS6Lv6JCEW+Q0nRHyse77mstwoL802exz/PDwMRjuk+srBy4GzWmjw+sb2OmlUYPDZE9PelqYVpWMUDdSp6xS2V3uDDSpOsI3/G8eY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707826097; c=relaxed/simple;
	bh=xuv6da1lX/OKXLfqub6GYMvSPgMIWtBqSnllbwD2KWQ=;
	h=To:Subject:From:Message-Id:Date; b=d6Fh9XQIbdogxKgr20h6GoL3vYTKdAJcBtUfJUGCNfMSXGPBNJi3Mzr+uSsWu8dY7BWpRRxGmWHDaI2WMEmXKEnjXgbKcOkJzwkHgCADo7XwWXoH9Hj1Ucyz/RwApe+payZEIA/HjrSPS555t8/Vlj6tn29Q7mUeCaMjWxiG0sE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UdkbK4P6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UdkbK4P6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 74616C433C7
	for <ddprobe@lists.linux.dev>; Tue, 13 Feb 2024 12:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707826096;
	bh=xuv6da1lX/OKXLfqub6GYMvSPgMIWtBqSnllbwD2KWQ=;
	h=To:Subject:From:Date:From;
	b=UdkbK4P6eI/RiK144owfN2Az41BQgKL1IHROqGIoAzdVZxIQP9c4SWpVlnc9wMT4L
	 6jJawK/ES8Rh35sNQBOCwHOwMdwjc1AdtPHfoZNr5AHA6ifc16GocDuDpkjDeQgBJM
	 Sw2Bt37bmVrMuHGvlCgfBWrBAUKnQnXb9n1uq5Jxl860xBj25T5fqvjcLwfQw4wLTK
	 PqGKG43orcYOK7bhYhiF2LfHb7ehW3uHjdsEv+ZL6cf9ptkC9JJ3dWofH9Nb0clHfY
	 StkIoiY6yWWZNxO3ydldKuv22ClEbb+oJ/zYYTG0HcOzALkxP/efe6ebowdQbpIni0
	 kO99GDlHvG6BA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5F000C48260
	for <ddprobe@lists.linux.dev>; Tue, 13 Feb 2024 12:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170782609638.774.18176032554340134658.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 95ed11eaa321345b0c8b84dafa01fefc878a15a1c24e150e436c4ad825fea804
Date: Tue, 13 Feb 2024 12:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1707826096
