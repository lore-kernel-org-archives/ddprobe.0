Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C30086323
	for <ddprobe@lists.linux.dev>; Thu, 16 Jan 2025 19:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737054954; cv=none; b=sITyww2GeHyVJhevyXVIQx6uxlCKjq5XOr8Hoq9KwJoyZchB9IcXgxSUdpKIzlyikkAEKL5xNuDmKLmdZlgKzgqaNA/NgiZafc/h9s1a6H5o0s3FFkay5dikRb8exWLgwguZmxoqruD1/bmKEf6Xtv1ucuLY6V/ThHIAQYS6MNU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737054954; c=relaxed/simple;
	bh=lUb95gdcNDKKQjlquch5tlej81T/oOymOY+kYfuHr8w=;
	h=To:Subject:From:Message-Id:Date; b=AKRfMXs1UvJ1m19nmt7ehrdIBu65t/w1fG1VAr2w7Ev/ksZ1/v4MTJslVPPDi0zE6FVoxIaxIame/nQX3LjsZepLuhYSbcYUsD/TIN0Iby4Bx1UEXpkKLfFiFKy2G/mtxvJsBYgwzrjpr/7Nn+aI7UZ+uJwdCqOlAIEaVR5hXUk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MTQ8gAwE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MTQ8gAwE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D10DCC4CED6
	for <ddprobe@lists.linux.dev>; Thu, 16 Jan 2025 19:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737054953;
	bh=lUb95gdcNDKKQjlquch5tlej81T/oOymOY+kYfuHr8w=;
	h=To:Subject:From:Date:From;
	b=MTQ8gAwEGeKYX2R66cG8E3hVKb4A1Zb//xZr7QJBzu13pA7WZgvHp7b6fsX+PpeQA
	 OzcpFjuX/R6e4p8hLO0JgycxMTAV7GzEJWvGmsLCBfchad+JxF74RmyG/H0BU7Or+E
	 QPEcnv6wdV6/J/NDLWcirr0k2rg5Kzqic1Z9UG7Fr2szPNQe/EkPpjZGi1HHFHzdoj
	 FZp3M+6Mbifba51nRHeKWNWyr6nQ/tB0fAPS30ObKhLs4uRlcJHyKPdfTg0D19YQtp
	 5p+tZZrJQbRFeb8LLQVF8Spd4lD52jvFUlN+fRguzfclrwbFGvfbM6bf874Tbo7HKn
	 Q9ZTsD9cEf+ig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAC59C02183
	for <ddprobe@lists.linux.dev>; Thu, 16 Jan 2025 19:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173705495362.24984.12452194357989075472.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4e5d2fe362472fbc8d8556c8a870171f51f8ad9fbbab7e9afb66caad7cc96fdd
Date: Thu, 16 Jan 2025 19:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737054953
