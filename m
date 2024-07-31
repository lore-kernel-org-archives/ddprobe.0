Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 131047FD
	for <ddprobe@lists.linux.dev>; Wed, 31 Jul 2024 01:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722388554; cv=none; b=U1CM2Slb0EeaiPSikz2bncsWcvhqtNiC6K0yA297seEjOch0PVRelmK3+UYRtsJp8X6+yUnVI/bzlPjVc1odNiEgqF4aXbAW8+1HyNGImD2s9r0vsPsZH/OqRxneV0uFS5A0VO41a0cFkHiEQsmXWO18fJPQAti0s7lUQlb+v2I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722388554; c=relaxed/simple;
	bh=EE6jlKw2U9DmB36o1JtR0t/CeTUDW7l5xO05rZajIiY=;
	h=To:Subject:From:Message-Id:Date; b=HlVUEqD3Lrn7vklutVZbku0TWY6b/UoJMlMVKT+BDmpyU9EAFrnE+qqznDgq0YMJNwlvyx4yjKwqMKh5CrioEtYQISSHPJumwr1cgjOFVeIiRPE8KpGj5MqO4Nas6U1zGChtDdTz1HGrdjNMwBuP0W/XG/lqEF88sJ4zyO77DH4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DudWjMy+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DudWjMy+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2CE3C4AF09
	for <ddprobe@lists.linux.dev>; Wed, 31 Jul 2024 01:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722388553;
	bh=EE6jlKw2U9DmB36o1JtR0t/CeTUDW7l5xO05rZajIiY=;
	h=To:Subject:From:Date:From;
	b=DudWjMy+4ZbOQQqErzDcTVKMy5It2QfRWZXFt5m/D5RhtuovGLeqFU8aAWRWheCur
	 /lVJpBIhcOiW2nCKMYNYH6PSEYINTxrjtoRI2UXgvoy3onxbXJP5ZlN+6prCKDy7vZ
	 qoLdPPpftj/v3EQPhczepGXMU4A56nUu7ss9/SfEtmDwNjUMUGOLQi00xT2eYZCj5J
	 RmnS0Az8/HwIgz9tIWdCvFxuSjiCZjuuY/T2EfXPd0dtEMnXQ6yINRAAOXdtMLZw47
	 5YO+Ehs4Z110DJVMqqE9kOyMRPgvAsgOcocdHUQ5tG79MzB+wrRV+jJRhCOu6E9jdc
	 M0N/ePG7a6t1w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92BA9C3DA49
	for <ddprobe@lists.linux.dev>; Wed, 31 Jul 2024 01:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172238855358.25789.18375703558269495784.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 531bce91bdf1f909e5b4e47193d8e0af6f6887eae3f9bc800e531984df709f7e
Date: Wed, 31 Jul 2024 01:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722388553
