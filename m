Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 201B8184524
	for <ddprobe@lists.linux.dev>; Mon,  3 Nov 2025 02:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762136394; cv=none; b=RMx4Pu1YbQyZR1yfv3pkkcAuQ7UbAGnifn8c3/tNhVRbRcJHQ3Qz20GiE0dL5kMoVTlSilp+n6oRAui4p9sDE7oisvqpGBqbLZOqXV5uqzyWuFKYdFT2Ecjg/JlqS63ctkN+eMhzq0we4RkkFFI7JGrIs08J90bhdBTmJzgQZTQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762136394; c=relaxed/simple;
	bh=mGcLD4Qz3jPss722nMFQCxl1mEL3pmDBKNMjpmHoNJg=;
	h=To:Subject:From:Message-Id:Date; b=PnX/JZHLAB79lyBAw4hNlc6Q/Mi5j/yOrzh3n79/B9cE1ryvYDIs4v13EAqON8NFpw3ZABFO1Qpn4UGnD60LhXa/VeTG8uUTG3KaE6mET7uTES+79EQpvDqoIkvu4A0IlhB3Cc17JnLuRWCoLdhcNHeBikwjRyEm88/F5A/NHO4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AZtQU3I1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AZtQU3I1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA095C4CEF7
	for <ddprobe@lists.linux.dev>; Mon,  3 Nov 2025 02:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762136393;
	bh=mGcLD4Qz3jPss722nMFQCxl1mEL3pmDBKNMjpmHoNJg=;
	h=To:Subject:From:Date:From;
	b=AZtQU3I17a5PuL/ICd064+LO0qJX3uPjKfit6PQx+oTNxgS4Oz4ngdUfs4O801fSh
	 KNcxE0KJOpJDkNJ1ZRFZ1QujPG78W83TbO+U12ZtQF/uoyZdnQ1l9Qt075p5USLVas
	 BvQV7lf3ltsyTaIPL0C0no+VgrPHDDxAUdNIuBA5RzUf4sp42rhe6VySVEeZRKmCab
	 JHmDBfuMAMKEJC6eIw4EaywY3hrQTFYg9iwL4tlE+WO7R+bQ4EBfJ+Qb1RbaX2DPRf
	 LGMevzg+pus6SEdbGVs9Hd7CamIBjxu/pHXbqcCudX1aHnCDHkJp4gdW6re1Ex9ame
	 ihGCcQidy2uAg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95096CCF9E3
	for <ddprobe@lists.linux.dev>; Mon,  3 Nov 2025 02:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176213639360.13632.7084167547556473350.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 099d5a6f843b0f53456848c1d4339fc61cfd3005360aef8b7e521ff8077e7f73
Date: Mon, 03 Nov 2025 02:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762136393
