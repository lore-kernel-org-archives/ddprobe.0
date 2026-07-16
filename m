Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C44A30C360
	for <ddprobe@lists.linux.dev>; Thu, 16 Jul 2026 00:58:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784163514; cv=none; b=L2ojt86y/dgzMknxVmOO/StrFbb6g3Kd/sUiySt+yw931BAQNkydDm5ncjJUy+L142WK4DRUYVAzO6oFBZzu6Pn+buFLUcRC8HSv3jjSMoFnoOYBAeXnHPAV2lbIrzM5Bgvo9ARR3oW1f6+tb259mek4YnJv16SsTd/upIHP+UA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784163514; c=relaxed/simple;
	bh=AFLIz3WXP0l/svdhj3aT21YAayG70CFdDOpSwsxsRzs=;
	h=To:Subject:From:Message-Id:Date; b=rrTUmOZbDTcUmDFKzGgM3XlntkrNioxi0guXkEQQ6vUW8XRab7HRFQrvxPjlBwkYYjc4GOpvpona0TlrzCYkWPOE+AJDoVGsc6x0lHmMuvcfUP180IrGKgwLkpv0CHAsrHNqWgjOJxIfTPrDLnwFw7XNS0q9xIaW3985N2H6ImE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JvbCgcOb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JvbCgcOb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDF49C19425
	for <ddprobe@lists.linux.dev>; Thu, 16 Jul 2026 00:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784163513;
	bh=AFLIz3WXP0l/svdhj3aT21YAayG70CFdDOpSwsxsRzs=;
	h=To:Subject:From:Date:From;
	b=JvbCgcOboC+8cP9VKdVttCVYMjt4WQ34yBMBEO3cYrW72Bp6T1ONMA7g8YOoy6UKt
	 qTSB+vVKiB2G0OlNBljIJ9pHT3aMReIC9f0aOvRXzT8+BCn12JPleEw5Oy8h4qM8lU
	 0dyRjwCpR3uOGDP3sdgFjBeHlKKbSnjSccQiwMc34lIIsN7iFSHbZ0SBgLDioAjTWE
	 rqES3SrDclJUA58kd5UJ9ovIJ60O+swwM6Xl1hZ5L2G6Sk+LpVnRicjEbZwMbXv7ZF
	 EI0gUEZjMeePAVIn31wqknJwT6J+sRr+4ZdevOcMk7j6/sUqracZXFscclSn8fg75p
	 DI20+3YfhArmA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAA4FC44501
	for <ddprobe@lists.linux.dev>; Thu, 16 Jul 2026 00:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178416351369.27964.11484989284805217854.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fbdbd487c433cc74bef10a5dc9e797da705d202eb05f1fb9d0f98325f4edf72f
Date: Thu, 16 Jul 2026 00:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784163513
