Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43D416FC1
	for <ddprobe@lists.linux.dev>; Sun,  7 Jul 2024 09:26:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720344383; cv=none; b=fjOKPMutFOKhum+9DszayodTyaX7RqU2aSULoSBb+lTWwvziXyiJXfeaUapYw75pfJrpe5BT1YE5pBAEmbKmWW+8WUj/EQRoiCAn0UT6hSh6B3FL7Rpy3rmzt7sXwROy1dght+ijVPFoE/QjmtnzpBIGJ4pOr1WZlyfjOh0G6rk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720344383; c=relaxed/simple;
	bh=BYYruRimixFZGisM8QhU4eolMzHqjuDyhJ7h1WTcmdY=;
	h=To:Subject:From:Message-Id:Date; b=oZPB/WmelVloDpN7J2jViEPECnXcpiO6F4n1NiD8tZQLjVJFZRF33gJdrZkcvY8nBejY/H0VqTAWn/Ok7YCFBMuoD0pnNJ5Qgm1+doAHXGd8y7XjbRSjqIp27evCjkUBgsUDcKaGYPeVBUzkQUuwHpPFwyJhLqaga6+wcy7OceU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=th/gsJbZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="th/gsJbZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1005C32781
	for <ddprobe@lists.linux.dev>; Sun,  7 Jul 2024 09:26:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720344382;
	bh=BYYruRimixFZGisM8QhU4eolMzHqjuDyhJ7h1WTcmdY=;
	h=To:Subject:From:Date:From;
	b=th/gsJbZLRMYJaGu1wleon6bsZHem1x06FJeGhLktmIDH3MOTfjwgTQ/MwXJVoXuX
	 YkARVspNT4lXESyKKDDlcWdyA3xPCAMgvz2BEdswTQkygtoiVRQkvViB10YmZE9MLY
	 aWkodBKWd2F3dkp3cfnxKmQmUeugwnqUj4aqG7F4iDDyyhYtFTJx80qrCb7FQFTzpO
	 WqyqKhoqzsbIB08pJyRlSkfqXEt+rA6MBUXZIJuTbwnkPNYXjEvleFswYPPaflCmZy
	 siGya7lC/+8NffnL6EZy9bO67CaI0wJL59kwRHNZ4wPFxvmJZucR4KjAXF+MUeORUk
	 2gpX/Cr4ZzzSQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BDD50C30653
	for <ddprobe@lists.linux.dev>; Sun,  7 Jul 2024 09:26:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172034438276.29143.16376278595482696019.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e9e6ca08a4b463d42cbd361ff8dadd2ffdefbaec5bc504cb5937498867ee4fc9
Date: Sun, 07 Jul 2024 09:26:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720344382
