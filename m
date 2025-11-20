Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3909D2D6E55
	for <ddprobe@lists.linux.dev>; Thu, 20 Nov 2025 23:11:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763680314; cv=none; b=bpp981A3tQT+d+kZFb77YsByPTS7s8kJYsfkJM/4uKrBjs/+JMH1jbKM1OCLKbvwwNkgM4iYO4oYNpkREdctfPOx/1bkpso0nohyB4KZQzlTPnOFdWML+slje5IcYBfrjU746iAsMltqomfY15xnoBg5BO9gouTYr0snBBZqdX0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763680314; c=relaxed/simple;
	bh=YKMr7aJU2ZYcXDGbMTyt1B8AOzjfPNe+DK7PJA6eHMc=;
	h=To:Subject:From:Message-Id:Date; b=SxyJFbT0nMnuLE6986cDjOZLXul/fMTGbUTZeVNBjmvsBSA68ObggA9CVxP8OOm9C5M54PaafwQY26BU731es7yVbfai4khtAxeQVgW8pHXWnwmDMsAANlJUgxFbmBZIEgX5pd2TpNGzaWMNGq/47BE/BnhW2kvOWBj4rwsvTkM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Um+wrinF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Um+wrinF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF9ACC4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 20 Nov 2025 23:11:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763680313;
	bh=YKMr7aJU2ZYcXDGbMTyt1B8AOzjfPNe+DK7PJA6eHMc=;
	h=To:Subject:From:Date:From;
	b=Um+wrinFUJsaWeAasg8eLslBoPOgnSVO+wbuZ/XnOKuF8cLWxZvtYo9knysfKld/F
	 zZTsMyEBu6TqJZ9y7/6MA1o7jISFAvCw3fJCPNRYDUg8uP/Cw65CAJzt++U2WNeZhw
	 yc7Gs1x5T0oQ6LV7yox3cjA65aptI0Dyd1/WirbbohCoXi6ZlErqOz1TzC3LtAMPSa
	 4DKLBjvLXma30NV0JTlI64TOZ3OLa5ToDUNIv7cVuSRyFVoko2uDVJfUja3xAqR0Th
	 R4OdIKad94hnZ6Y3JVlxOIrp/sUBpWWfMr5bweJmfH+WB6uSh98+zQhPPS+h+HmQjP
	 +D98tumq+S/xA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F4AFCFA451
	for <ddprobe@lists.linux.dev>; Thu, 20 Nov 2025 23:11:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176368031361.23576.621737453428726391.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 37470594f9612690853fd4dde2489920216427e5347fa1bc90dc0fe4a095aa63
Date: Thu, 20 Nov 2025 23:11:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763680313
