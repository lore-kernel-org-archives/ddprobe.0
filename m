Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E6B5278F59
	for <ddprobe@lists.linux.dev>; Sat, 11 Apr 2026 19:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775937454; cv=none; b=uMF8pmT0dNwygXIHH5HgT2s6L6n5XglzppTUTbaPjQ216Ba5md1dbgtNtKLK2sB4UioJCQc5QjvnxXX2uAVPpD6H0htK1aIHo1WENxl2VCb7K+ECvm3dWFan0wGM5IqbR0vdIXF1SUv9N37Yn9Wps3glutka9GT30mXyOZs5hcI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775937454; c=relaxed/simple;
	bh=Wh6Ig2aPQnyf4BSFjFJRh/6x1DPzmmbHoTcqRWZRyUg=;
	h=To:Subject:From:Message-Id:Date; b=jHiUTMKk8DjjVkaDqzy/UBHhP+Ld/7pQgd3vP3vTfctLjShp2rLSsmdrESM3dWeFXBNtcMynmpU/tkPfywLm1sdu5YbIRuBDs6uG6pVNhHry81vyhZMiBVyMrn+AO9+6xzRSK3574hJ1iTGrGPbUaa579gt9GCv+9HX1itwPIGY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=H9Ruh1R3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="H9Ruh1R3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BBA0CC2BCAF
	for <ddprobe@lists.linux.dev>; Sat, 11 Apr 2026 19:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775937453;
	bh=Wh6Ig2aPQnyf4BSFjFJRh/6x1DPzmmbHoTcqRWZRyUg=;
	h=To:Subject:From:Date:From;
	b=H9Ruh1R35cmepG03R5E3lhjkO577Q67IkDqY6YDmXWDU8tCp8A5S5mJeLtgwF/8cd
	 kg60MVnq8t4UXW0jwsYOeGQCPhRoiP6FVr8G5fkVvVduWFjzmWz1z8S5pO2gSj64g2
	 vEg+H1aMPEbZtobN27sUzkeU2GMl0eZ1152Y9xWWVi9cjWvjWvuAzbQup/01YGYjIe
	 Df6qy4Wec2yUxfqK1var77sf7yrCS3HIhgcBrNdRZaQimLzHVJol1nsp33vJy2NKR+
	 h1DgwmH/peKNsGtJYCisiO3wdvb2tSvRmOCJer6GJ3F0tTAJtYll+NDI+w/Nk5iUxZ
	 5IRLHgyp89M3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9507F3ED62
	for <ddprobe@lists.linux.dev>; Sat, 11 Apr 2026 19:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177593745368.7742.5703944344624881021.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fb886de3a3752cbf11e8535c89f9b35bd9302e4ef46246ded94dddae4bddd343
Date: Sat, 11 Apr 2026 19:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775937453
