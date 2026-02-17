Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B7A321ABD7
	for <ddprobe@lists.linux.dev>; Tue, 17 Feb 2026 05:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771307694; cv=none; b=pT4WoiZ19+C/0Am/D4ACBuMuelcIQhEd+ctV+XdadXmd6D5DLyirZdb7vVqM3EIRAmjqUTu6aIgW9XTcFkMyFKzmBCzN/+iamxbKcD7Z7/iNJNZgOJ3lfQFCQaXFQsXY6GgZrXItLieBNKyZqda3HyJrBtBQZ7kLRA+cpdu5DSg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771307694; c=relaxed/simple;
	bh=113gEY6uVt77MvbhFDj5TNJR8db/ZNCX0qZJos0HUGI=;
	h=To:Subject:From:Message-Id:Date; b=VTYlo5V0yziU8IbZ1iNli/meGElOmVHxQsPGUJj/+seVCvWIS+6W/TwyRP2rnwOBZ5xvIlGlaz76OeKUUBdmvFmBlxnLpb6skC3QY645z+COt27vHsHN+rp/8lEoB45bjC2lIHNRfN/JeEk756qrndDlH3rzdVOQz9qF+vjcbBQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WYbLjg4K; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WYbLjg4K"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A24C5C4CEF7
	for <ddprobe@lists.linux.dev>; Tue, 17 Feb 2026 05:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771307693;
	bh=113gEY6uVt77MvbhFDj5TNJR8db/ZNCX0qZJos0HUGI=;
	h=To:Subject:From:Date:From;
	b=WYbLjg4KB/9rIBIJu0yqfV4SY5Rj5XyrLHDFdvR9SLCXM4b96Ajb5cJBiraDpwyHu
	 hdioae7I07mzSH0eAqmQxr+UMOVkpKrMLfcE0Fl/WQwhgu40eN9itSclirxahcil07
	 4wXMwcwZjYD++NvN+doAjK5CzBeK+y9Yyy3moxPL2E0P0EtNvCPzzrngxC6Rx6c/2T
	 IF5S6StGz8TECMzjzDKiOFp6LA4bXDRg54zCMAOZlBH/aa6nZ1laNWPPlBHuRbQznU
	 vay7fbSvtcIelJeSzuAzBfp2M7DV871Eyn1Pz5W8TROQxATza86arjgjbrDKhXIx0Q
	 AvqyH8oy00BuQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EF3BE8384C
	for <ddprobe@lists.linux.dev>; Tue, 17 Feb 2026 05:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177130769357.16319.12279564177892946432.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4156845da48909022fce1f587904139f2be7d43e805ce0d15a5e75577684f972
Date: Tue, 17 Feb 2026 05:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771307693
