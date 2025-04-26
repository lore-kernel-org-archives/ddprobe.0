Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 479262F5E
	for <ddprobe@lists.linux.dev>; Sat, 26 Apr 2025 12:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745671194; cv=none; b=QN/4slMKtC9MhE/2ugSt/6Zl2SVc0lVneqSRhMa20Eo1L0c+J/W3iF9n3aljrqK2jvE1NMoDhKGeXxzp6dt/HDRNC92w32maKn11ET4SCSX0z1r4am2rl0NUXFisxH9v4bTtxlzfl1ChfSBaRNn4bxltuneVMg66XhBUJIm3KYY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745671194; c=relaxed/simple;
	bh=HGe/OPklMwwmi0KbRZ1YBYsgB6xNkrl+bD5rSA8yo80=;
	h=To:Subject:From:Message-Id:Date; b=cST0W4HjalNqzWZxmt5+Ft7ZnY4pb+I2Wvm0MlE1QQZ3axEZ7H0z/i5mpYLo7N9ph0UlAkPW/YSTI36D/eyVezvA7rrA3h6X8VepXKJjaIC17Iox1rZ9NyKlrfQ3fGR+GCwGGV+dvhdXyVA+mr+SRmlscrQuhu6/paxM1W9A2DU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KwSIXVah; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KwSIXVah"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A529AC4CEED
	for <ddprobe@lists.linux.dev>; Sat, 26 Apr 2025 12:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745671193;
	bh=HGe/OPklMwwmi0KbRZ1YBYsgB6xNkrl+bD5rSA8yo80=;
	h=To:Subject:From:Date:From;
	b=KwSIXVahdoKXyvk++yRL8vs44x5KWHkMqZgYr/ehOqDlWNYijUJcE0JFz8xR0VG5x
	 02tBGx+jmcPyCn/p/kkKlHNGSEeUkjsD8PU5915tzk9OSX2MiXWosuKbbCf5qUgLZz
	 mcfGBW2vEIfcJiqQbcqrB1g5UzMypOYzEcq9LiU8uSgZEbNhb+wPly36Pj0P2luTQU
	 uLH3yqE/+q9QVS1qieSSWKzL8C6WhPxBWg3jpNPybcMZ3rx96JRqVNzB5ydrLK4DFy
	 inFm7fSto6ds+LEa+w8XL14uC830drSBVeaRG8lbdQpxvMXpdPY3UiyB1R39ChwtNa
	 NTZqPPPVSA5bQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 943D1C369CB
	for <ddprobe@lists.linux.dev>; Sat, 26 Apr 2025 12:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174567119357.22699.4270213617903055926.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 051f557c00219bcd7e3410635307d6b22592d5d30f8d4149ad0be612dfe9daa5
Date: Sat, 26 Apr 2025 12:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745671193
