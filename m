Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5AA032135A5
	for <ddprobe@lists.linux.dev>; Wed, 19 Mar 2025 19:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742412594; cv=none; b=a5GldnkPDH9gYNVk28xpwGrUUgElTZ6mXydxIxfW/fyUenvK+WtdTlwJ8yDQjAzb+6j3A4wkByElqoWMgPdVSGTvvn/C0nZOFQbOwtDll9EKV9DNKGSaQqV6gTwv6q2jgIP4ajxBWhrhffsLkdTVnEhEAM+vC3itcBX3E+MZLmg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742412594; c=relaxed/simple;
	bh=m5AVNIMyIT66Znmos04ghfu61W4RhDQJD27hAQbCKTQ=;
	h=To:Subject:From:Message-Id:Date; b=l1zUUh0Tw1Wilip9hrh11zEVUov1cCAScfay5czFOz8cRzKzN/MHeNc7XlCIc2roEUvnfr6SjbFAj4dgDpQO0ickj2c9lb9IUQNkVuRXMdBkjhyZXAybWj9iLx5yLRreovIo28N5zVcC2yVAjZr6pXog6uBuZ7/vvsVXr8u+B6g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HlHVbALe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HlHVbALe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCB3AC4CEE4
	for <ddprobe@lists.linux.dev>; Wed, 19 Mar 2025 19:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742412593;
	bh=m5AVNIMyIT66Znmos04ghfu61W4RhDQJD27hAQbCKTQ=;
	h=To:Subject:From:Date:From;
	b=HlHVbALex2F4f1NDkaDYgMAoZHTsutDLSXJuIrQQE7L0CHADZu36Zlgogo5wcXSui
	 iCnR1zMi2gOQ95nN28aTG/3OZ6mQNEHwif2aUXPhcHetD+Ntv24d3xu27eCYyEUjYW
	 M0jv8/XkH29rVWY2QJCkKyaokKkrL+q1C1Sw4eGgtnArmnA5tkmsP2I6d1oZ1LuzD5
	 WTtxeMTBnbOVAuRF4OARedtIMLWs8So3DykuhxU2SIAcWSl3ynWzQoaWdqF8Re11GX
	 yEYv6n1XlzXdcVuKHnhQ1QRnKpRQ8FNKU5i8N6AUVxGCpY5M55AIuvwmQLTM4sQKiP
	 QlS2HOHBQhNJA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B45F2C35FFA
	for <ddprobe@lists.linux.dev>; Wed, 19 Mar 2025 19:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174241259371.5074.4234348026883309143.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 24c02a3a0f97ce11f994f04f9f96007aab679b691dbf1c325b50d13858926727
Date: Wed, 19 Mar 2025 19:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742412593
