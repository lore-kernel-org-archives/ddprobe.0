Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 036752E5D0E
	for <ddprobe@lists.linux.dev>; Fri, 15 Aug 2025 16:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755276594; cv=none; b=JHmGnrZbW+klI34SzpEC0bRmJ89A3xSWnhU0jlNtRSzKk4VWajbT6bE1ts7nw3VlDX6ayPRp38ebMOARJfVA8UAOqKZlPLY1YSWEFdXDldxXvbJBqXW2vi1CcsX6Xe8OmzM8jMXBOXk+4Oue8wByKpBz7iXZNWCWtRBO5rVFs8U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755276594; c=relaxed/simple;
	bh=9F2scWW7HU/junYJCsIEBYG5Rjv6NiqgdLYtTB/NiNE=;
	h=To:Subject:From:Message-Id:Date; b=a61zoMBfCHK8pxJvIlvKndsuiiJFql0DL6oI94EtbsqXcxK8iZ7ubOz6RHkPv61uALE5PT4Y+gcNCdiAV+4QNGFH3Wg3amWAaneUb6kDAkRNuhhAj96JfciplUFqr5QfNvWIDzChzARc+6rJBXb8dokTzyMRlFa8/tKm7VOqJFw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cXocRKBI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cXocRKBI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3D91C4CEEB
	for <ddprobe@lists.linux.dev>; Fri, 15 Aug 2025 16:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755276593;
	bh=9F2scWW7HU/junYJCsIEBYG5Rjv6NiqgdLYtTB/NiNE=;
	h=To:Subject:From:Date:From;
	b=cXocRKBI8eGHx8tihT5xK7/r+U7WXWqc0jlGdeRL3NbXD/XSQKbL/RmRaiYZJAiym
	 ZGcz2nHNW98CFpwZaW6z2Wy47iWuCRBJgjUEodQ3wpwtDvno0JF2bmkepskQrB5S0k
	 MgShu60313hZ4ItprX8SyVV1mo3QcVQnQ3d7OfwI7BNZQtZWyhTA/90+NOsFN+tjA1
	 tt7f0Iv+AhpIoZEgUXHbHzq/0ZEmRhE+qWAV2W39kV89JKtFe1J1fvut1nesKBxRk1
	 dXUEzHuLRkK9/2eJ8p3iwflmVfGbsav6aVJoxlWmyKHJlq+7ripup3mzfNRrhD74PD
	 vXPuyV1hVSc3Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 957FFCA0EE4
	for <ddprobe@lists.linux.dev>; Fri, 15 Aug 2025 16:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175527659358.21106.1275170810957895675.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a2dd4f6c804ad9e7f77962e126184e4c03c30380ff67e37b0f79a20c23514649
Date: Fri, 15 Aug 2025 16:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755276593
