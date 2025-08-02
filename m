Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34B032AD0D
	for <ddprobe@lists.linux.dev>; Sat,  2 Aug 2025 10:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754131795; cv=none; b=NATe+Hw6ngDnz4LKvrFDudAcrFHMpvuAmKMv4aLNzgW6F0YDoO/d+HixquJJ1iF9MqEKhrT+AA5GhjyKDF+1T1MU/iwoeVgcLRHCd0tVQKwBqo0lWCbGvYJqL/HvOUU2vEBlXOZ9GXC/jXhl4Y5G6wHHJuL+IvfflztFLHih9Q0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754131795; c=relaxed/simple;
	bh=dICXL8QnwJTFXT2PIJ4OQ5eMuURZaVKDELAXfy0Sx8Q=;
	h=To:Subject:From:Message-Id:Date; b=K6acKfrC+q9kUNH6cXRhINi6qqjFx9dbCiXk4oQiDNsq/J2jk35OHTZ1swj4zZjsIoYoxIge6JqTVb9vUR1GexZOw9/8SxSBNtPZDN8ycsdjNFjRW8pll9/EKAAg82ZOEtI990ww5CbnCJp7/hzIesLprssWaP+WMRaYcd/YoH4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eRDrr/7E; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eRDrr/7E"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A72A5C4CEEF
	for <ddprobe@lists.linux.dev>; Sat,  2 Aug 2025 10:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754131793;
	bh=dICXL8QnwJTFXT2PIJ4OQ5eMuURZaVKDELAXfy0Sx8Q=;
	h=To:Subject:From:Date:From;
	b=eRDrr/7ER9F5SnbyB/AlbiCGYh+osA986yPNbdJkylt9UW2h4XacnKSKmJL76J+DM
	 ycDpEKtv8TfVQABSJMN+wpGTqaZGEOgRtg3Jwb6Lv65SnKzFDhTOw4/zeJnH5i80EC
	 +U68+GYY6bIDUdkkzy/zpfpTmaJ6DnLX7RAPVmc8JQQzqo0YCLpkLFGuZ3mRwMVivP
	 X/oXEmYutKXCf3dblvsNUxPs5DjF+oLWUy6iY4rsxE8XTkj1gg2wn3VVpPSMnmUepR
	 gPLxKJMkqiLCAqhuocxD42oaG7ySQIB3iqSLqGD11evBZRn3jD+Qzl31K/JFY8ec0+
	 7VX1Cuf10X9xQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91F36C87FC9
	for <ddprobe@lists.linux.dev>; Sat,  2 Aug 2025 10:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175413179357.11732.3172958035365570618.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cdef03e820c9851321d05c09127d7e56c9003c4d7e86883719d25218cdc04000
Date: Sat, 02 Aug 2025 10:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754131793
