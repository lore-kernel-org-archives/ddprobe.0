Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D8C8E5C5EE
	for <ddprobe@lists.linux.dev>; Tue,  2 Apr 2024 23:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712101696; cv=none; b=F9GXnJeEXK6O84rqlGgbGkcA44q+3/qjHL708yazt892Gohncg2OZHiXt3JDkRfh0fpbonymfZpzJpvr3ET5PvS/4+AttmgcnWRnaxKj/PS000T+3Pbodv/wgLUt3IY9zWkgqHci+zYi4EAaLBXtI8GyGu1K25rHrSTzoG4OSI4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712101696; c=relaxed/simple;
	bh=JDrtkd54qWsgRjNsoHJuYmE7eMaO/SHO/N8SdTNlVXI=;
	h=To:Subject:From:Message-Id:Date; b=dmIH4pnEzOguHXCutZCiqwNTyZRrYhJ0bjbIcUVHy+oGyoRYqBMf0e+/0jRHKBpFvsAg8G+dvacxhms7FhYvJDZrExVC/MIccDNKYr3zQhDiSq+KTdXC0i1zgv3HeqodfFk0onUs61pNvBJ4e9+BxC4MhsfeQNQZxSUls0noHVs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i3M4bCBg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i3M4bCBg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7A85EC433F1
	for <ddprobe@lists.linux.dev>; Tue,  2 Apr 2024 23:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712101696;
	bh=JDrtkd54qWsgRjNsoHJuYmE7eMaO/SHO/N8SdTNlVXI=;
	h=To:Subject:From:Date:From;
	b=i3M4bCBgYugI51ZDu80/2mCl8kfU8JcgzBL7RJe6hZe9IJPVITpJKMOb0jDx1nHCU
	 ok+bj+pEpvMhT2O9tbRKi0BkO9raJLD7ZkN/Z11nSUx9KvVZvbFcl0mIvjm7HUwzOt
	 xp94xAtgkXHiJN9ZuS4n30nV4cwfzDeDNWmUVlHQ2YcEDWGAlohn/up1AblF/KzGPW
	 BEBK+BkOJwIXBb+H7NRNxVHNONJO3LjETaqxZ67kxY9qTC/7Y856mZXLn7BKqvqUIE
	 DGhceamvRXlBh1H2bS40l3/0P0OVZsI1/PGN6fwsvHvO5ssKmi/Kxhh5o/pY0wUOeV
	 VSsS5kVWnLkmQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 64703CD1284
	for <ddprobe@lists.linux.dev>; Tue,  2 Apr 2024 23:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171210169640.16160.1565823768991572917.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eef3c2b7d202170b84369c93941d89188013864266c279d791cd0a2d1707510e
Date: Tue, 02 Apr 2024 23:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712101696
