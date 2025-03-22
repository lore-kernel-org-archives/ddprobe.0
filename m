Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DC95944F
	for <ddprobe@lists.linux.dev>; Sat, 22 Mar 2025 00:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742605194; cv=none; b=eEshAYqQRoIF0QLI5w60A/z6dkxMhUu1DWwhj1cQLlAN70pc888mkJjGyxmX4Z/NxBWhhe8VZO3gW34I8XsIMM91O+IeEPVE7ALwAo+WDVaCDZdkbjjir45+Ct9cn50sTcdXnX8PJPhUiBJunhb7UWPqfQBCopporge3s+UEAB0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742605194; c=relaxed/simple;
	bh=+2g66XH9AiIl0lLKurwzwRbAOlajE8dKF5DFaI8YbDw=;
	h=To:Subject:From:Message-Id:Date; b=KdmoSaaVtsQ4S4fdxyf9BpMotkOUEedj5LjSxRGo9/HzHSTxi+vAeRYAuqgK7y9GcBEhV58l5mq562hr2TsrM/JUoukfatN2De7Ag+uOLHMsc8MNODzC3kFPsjaYAqQULkQYgkb6Xna9M1nouYRu5Tf1UBYIKrtI9YZaZyYfXuY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m0kSXd0/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m0kSXd0/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9C90C4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 22 Mar 2025 00:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742605193;
	bh=+2g66XH9AiIl0lLKurwzwRbAOlajE8dKF5DFaI8YbDw=;
	h=To:Subject:From:Date:From;
	b=m0kSXd0/or+920C0/A953OZ9oc3L7N5zJc/WZoBetByknU4bkO9g4OaIA6wOdypd/
	 IuyAT0XikdauwH5Df8qQuocAGnpuzFHN2dWG+e6tqN2RVP03fXPD0OjYXM1Oeld0iH
	 b8dDQk3kWEKeMGkUCTfdcaguqGZig2X6GIuta5jxQnVAofsWf2q09+Hjio39HQeQvk
	 t8fjxFYkUCPNxlxsVjCusgdjancxE+iMmiLbXZWkzFyxEE/aGlU/iFZlyKgu+rA2ry
	 KB+kKm6r37ZobjlLJUs6CHcO11B4MzsvVMa+fYzyarDnXMMUWvWc6KdGuk3THTguQJ
	 Ak3Fv49OxWQ7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 951ECC36001
	for <ddprobe@lists.linux.dev>; Sat, 22 Mar 2025 00:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174260519360.29190.6651658832484854158.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 48ba7d0bc60300953f54c221fd33422169f951777524e9ada68fbf8bb3607f61
Date: Sat, 22 Mar 2025 00:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742605193
