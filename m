Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C2BC1F4613
	for <ddprobe@lists.linux.dev>; Wed, 14 Jan 2026 02:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768358034; cv=none; b=JmZIpFUjOzin3Gx/05cFkN/g3nKYElwxzBkCozC3h3quUlTPkoe+Rj7YiK/Iu8zOO6d084yv4+FKQGcohNfldmq8K/oum7XeNHL/R+N7a7pOQZ6nRb3D1CMBWQ8obYdYn+Llf03t3C3j/bbfb8vLbgRxmWjCv9xr/3YZ4D0SnN8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768358034; c=relaxed/simple;
	bh=7XA2iJG3jA3jZDFfVT1bzeCbRR/LGY0OGGJwDUpczgQ=;
	h=To:Subject:From:Message-Id:Date; b=Id0W0oaujiCEUajI2Oe3BCs7ehPrGCygHe4U+WyYHqA6jfW/BDyF3g7TF6dFNR5B1B6/L1u5+Xx1j2y6A1Gkxa8LAlR1qHF2RbRGjIiIdinrmUBkEXPrkTewT65ygNTJ9aQShst8orY+4x8uhydocql/LmPjj0n1XC4+25Qwvyo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=so4Smk7L; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="so4Smk7L"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA2B0C116C6
	for <ddprobe@lists.linux.dev>; Wed, 14 Jan 2026 02:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768358033;
	bh=7XA2iJG3jA3jZDFfVT1bzeCbRR/LGY0OGGJwDUpczgQ=;
	h=To:Subject:From:Date:From;
	b=so4Smk7LgfyZizX/tC81l4fHbtmq9K6F9nrLlZeGgvNgHSrNERFLj0lT1IF62enUs
	 Vk1YrGweG/IEDTDY6qDA5GNrXKAJvyhxe1TP5ZIFRwK+nciBiBEnZgDPsmYJ8BaJ1J
	 /cGnxg38LuaqAfSR0VzV+zKcC1b1C67i5UK+nL01ymBp1MSqtkdgzUPYCiMYQbTVNt
	 MpeZ8alMInNDoukRpUJ9IEAhoiwfkbHarc1PL3p11fz8h+Fz7f7qRNjXAa7pom5+uL
	 wmn2FeHohqy45AJLniQDyog4mircl5yTskrSBl3Amwfd3jfZ7vd2cDz0zznsxR6KnW
	 YSIeeH2AVcnFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96EEED31A05
	for <ddprobe@lists.linux.dev>; Wed, 14 Jan 2026 02:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176835803358.6590.13757815199683773216.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6964e76ed4de02e04df8afc011dd467c66d01e5d00e0dcfee0f639b15a52c73f
Date: Wed, 14 Jan 2026 02:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768358033
