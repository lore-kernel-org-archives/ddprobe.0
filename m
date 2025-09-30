Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14E9D2BB17
	for <ddprobe@lists.linux.dev>; Tue, 30 Sep 2025 08:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759221594; cv=none; b=tG454ZOXxaLGTjEmNlLEpbhbhrmDR8OzMhU+dtEZrxbBvJWs66MIKGq/KTStshi4KXML1yYC4MQP0U5KCYTj0RY4TefSFY9BLYmoTp3hAtDowkcVBx/Ku6JG5m9aRLnNZr+2dhzdxBlYW3GHLy75Lm77z/ZhAN3Laaqoi3TNoCY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759221594; c=relaxed/simple;
	bh=MPc+f9in4YRIyy2lG/TQh2PJKkwYy+1aCtnEk7hhj/A=;
	h=To:Subject:From:Message-Id:Date; b=t5pelc4Am4av//5rE0LFGVO7TiDP+OgiQFoydAY0HTybLSEapah1elJ8gKJbEoueZ7Cam4cgzGtsRdE1hLhT5kVF2L3vDtoq/s0JTj7DRb9yOXYrKDXhhMYz68peFZYzxYWc1i8FSIp/BaOtgMCEckv98vH8l8QWCxXkkZSbw9Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SP3ugWdg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SP3ugWdg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0793C4CEF0
	for <ddprobe@lists.linux.dev>; Tue, 30 Sep 2025 08:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759221593;
	bh=MPc+f9in4YRIyy2lG/TQh2PJKkwYy+1aCtnEk7hhj/A=;
	h=To:Subject:From:Date:From;
	b=SP3ugWdgnC70/F5DogIP2mAe0vvAgVT8gB9MA1nges/tbmCYuhzukH/Ljq0aCXyyS
	 +Mcv4dUPycykorfzBCOSpN+Bnjq6NcoEtLmnY6VDYVtyDAvj3ptBDNuGRFXvmWLzD2
	 B4Z6YzXiMBXOmM+XJhRgmuQiKweN87j+LHz9CEMN5RdAkCAqGP2/vYo/fVvAOqejaC
	 +tO+q9R8nqxUSWxgphnVh2qLgtX8oq+Hk4TpDtSXmV0xhSD/5R9Lr7uA9iLcNPVKNM
	 6wXQZSMjAP6xNnGoRQKPnBRzIvhzY9Yrm/sCvQQ+qRQ6tWMqqLe7OShm9nJYtYbJGd
	 eutSd3ByZO6RA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FF44CAC5B8
	for <ddprobe@lists.linux.dev>; Tue, 30 Sep 2025 08:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175922159358.20285.12443171918043357798.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d582616bb9c16e22b446879e762b31a360913f7e63ee970c234fa4671d52f14e
Date: Tue, 30 Sep 2025 08:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759221593
