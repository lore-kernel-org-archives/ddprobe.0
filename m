Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21C153595D
	for <ddprobe@lists.linux.dev>; Sat, 21 Feb 2026 02:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771640094; cv=none; b=M2Z2xZK3KB2v6BOBrAQX7D+v6ULwdlqB0atZx32B9s4BVdQ8ZW83xsJMeAf+GTdFf1PoxcFS3wlGFDya3dxrbW5Z4JqHfmalciYRk2bguBrh4WIq1rsCOJNVDzSsRb8SZx2l43P0waaLdzuvgGG41Fni2ENotPL5ISb76t3O56I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771640094; c=relaxed/simple;
	bh=XuCp4ZX4PkCn/V6+Fc5PgYqQmtM6YLyZzdYjWMP08kY=;
	h=To:Subject:From:Message-Id:Date; b=kVN7OQg551GbR6MruENKSENLwlpekB9ZnDa+dvsBf6UqmZpQ/DjBmDIhlj9bF5BjaZrppVsI04ErUFIJzwcWPmBkDgjNEKFRlGni3im7REL3hEAl0G3zMWhGVG2Zq95th1M3200dUGUj94QXFZwjIAS1o754kCziWKaI4zznDgQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QIatjEAU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QIatjEAU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5578C116C6
	for <ddprobe@lists.linux.dev>; Sat, 21 Feb 2026 02:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771640093;
	bh=XuCp4ZX4PkCn/V6+Fc5PgYqQmtM6YLyZzdYjWMP08kY=;
	h=To:Subject:From:Date:From;
	b=QIatjEAUn1zLfrGKAY9Fsz3fudW/0J4SXTaHKlonHwz0KDeQA2Wkxeb4a7v8RJkrn
	 louB2vNrBQFf5GdYVz8ZIsXNpRr70jWuzQc1WZGirFQa7dw9j5yuYu19xFp6H85ov+
	 gM3tBqFFrgfyeTpnhcdowxyJWcVaAm0+elloLHJ9Z/XqRpHD2xN+VIKPvxG5/Gpu4J
	 YO9z4263vdy8fRz0MayRtGY5ShNMUnc5qbCPVCk+preGAesT+8YRlcuwwdZkO70bSU
	 uSM3JeMkmZkqBmHjk4g+fGRupfY5ymQRuvRUG1SQQ0kVD2Q7h88fXTqYAaNNLitiX1
	 UNnatJsdjdvRg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9206DC5DF6C
	for <ddprobe@lists.linux.dev>; Sat, 21 Feb 2026 02:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177164009358.21529.18230539685816402947.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 04b97eed954864c4eb49d64350f0ebb5aad20e4231afe34734a65d600b9b4c84
Date: Sat, 21 Feb 2026 02:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771640093
