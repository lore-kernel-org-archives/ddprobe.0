Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10FC92D4B40
	for <ddprobe@lists.linux.dev>; Sun, 29 Mar 2026 09:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774775694; cv=none; b=onAEw7c6nGe7aOlNslhBWOwEhJ4LnBbTWbXS85SDFHmJFP5YCIs1wI4zHJeWt7uT0jC7fxvrrdVlE0EN3/Cd2MLoreU1r3Ta21oq/5GUbl8jQP1sSKHoKC/me5mMeV+cMREtDNbG/iNVld8oJTKGqD/t1++K+iRY9QpjuADG9R4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774775694; c=relaxed/simple;
	bh=Zny0EyrcRAmbr7Zh4iNCa2859zgD1683XvyPpiOwaAg=;
	h=To:Subject:From:Message-Id:Date; b=kI89KfqQOzUP8UKXZkajdJsLk4wM/3N4yL9BtYk5J8/UmxocgHhpL84YkUT9olDuUJl7p26M9lgfvWLw8xrI2ZFE2P8GDJXcySpfVpn/b7HFVzITiph2UKS0frmGns5w/8tP5i7cKfzZNI/76yYNgPyfXUxTZhrF0Z8OCE2JniQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oTYXtMQK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oTYXtMQK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A57F2C116C6
	for <ddprobe@lists.linux.dev>; Sun, 29 Mar 2026 09:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774775693;
	bh=Zny0EyrcRAmbr7Zh4iNCa2859zgD1683XvyPpiOwaAg=;
	h=To:Subject:From:Date:From;
	b=oTYXtMQKf04SwsuP2UzA3qddGYvhmSxSIfvlKDk715zBJA0MzqaI8iiW9gZppkjvd
	 miA/Z0qs1ol/lT6vnkK6q1WwYbxhOw4WnsQYiDb185pMTPSAD46nT302dW2hcBlou4
	 zrc+r+9lxGeL5fS2Tez2CGWMweY35qggKyZSZpne8ia6lOD9XEJ60xdLORDH02EEBq
	 rFWReSAgUimR7UDdOtFsvD9Q5VltPCIsd50/uEwh+p9VD1+98d4wocVXph3E36014q
	 KoTDiQMFCNQ9AkS4h7mfIpQ9HdG0xkj5bICxphKOkNhGUvYNQxcDBRh1Ys8CX9qvUK
	 FE32ExWFXdMog==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 947D6F3D5FE
	for <ddprobe@lists.linux.dev>; Sun, 29 Mar 2026 09:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177477569359.9092.2057574389986138073.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7ae88043917e233bd9d61c21ed8be21598530d17f83500977071febb33ab724f
Date: Sun, 29 Mar 2026 09:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774775693
