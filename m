Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F3C167BAF3
	for <ddprobe@lists.linux.dev>; Tue,  9 Apr 2024 13:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712671097; cv=none; b=gygsyttrRzxWh48oB4AkeiipF1sc5S0sgBnQ/xNStKdy4zmqrI0jMQwY9LWq3nw6k0rslYTP4XDsu6OtTT0zMuyZgejy7HKEYfavpGVIOkJEIaeEBSbKBgLzi1JArB6qlSDzM+u6nIMjsO82QqHfiKjBOrOlMAEB7UA7oB4cpZw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712671097; c=relaxed/simple;
	bh=mP/JWb0mP1Ne+eyr+3BaFHlYYQ+/RqFkD0FPFPT3cUE=;
	h=To:Subject:From:Message-Id:Date; b=hiP/O9phQo3ZxcE7FmqjPorSjTc1rhx8dZx8gAaWDVRvplVr+DPN18KVqEnr5x5fFz5iY1xDrNe9tK6LF8SFnJlw4vcNrEB3eAyymXQQ3Pe8kCSDvjpa/4rFHZzZXqrE0A1DV+LvjqevxYXkFO+p5/w41UOe/DoCe9c2vyfUmIA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cZ+AZSQh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cZ+AZSQh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 76EAAC43394
	for <ddprobe@lists.linux.dev>; Tue,  9 Apr 2024 13:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712671096;
	bh=mP/JWb0mP1Ne+eyr+3BaFHlYYQ+/RqFkD0FPFPT3cUE=;
	h=To:Subject:From:Date:From;
	b=cZ+AZSQh4bdEwnGslqN1f8IkqNKhFCNa5SKDJcurJQzH7OR4WmEBbCRO4hgsznag1
	 U47Y3mwduL+NbVd0N+alYdOtMBaFg2q+px+bdNp1AAE9qF6040QCVK0pAln9b6JHoS
	 +EGSYn94h+IM3tOf8GBBESDiUyg8+XqYAZ6H3tpnjFJx9+025epZU0SXuhNByPEuAr
	 Hv7u4tG9NXZtVxhZcPyR0BftW6Mfwh6p7OA3udSFzj2IZVNxnAdwI2zo4wpxpOA1El
	 tkAevT4K7tw8VuNpXrsdAAsb44SRsjoOS07tMZSMX+vopq6mWWakekB+0j42LcgrSM
	 faDUwnRxh/rjQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6171EC67861
	for <ddprobe@lists.linux.dev>; Tue,  9 Apr 2024 13:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171267109638.19167.15592729589674326343.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f198b092e171b128c2dd169be9aaca7b355c1dd41efd0ca135565a9b925af424
Date: Tue, 09 Apr 2024 13:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712671096
