Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21F63881E
	for <ddprobe@lists.linux.dev>; Thu, 17 Jul 2025 23:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752794394; cv=none; b=LoNFUEDnwFhNS9eVrqJ0tlZKPXdSgvp+H34fnfTfqIKI+H14gtIQ2aoz1mGB4iJLS0R94+GsD5T1rDoLzNK3/T7CcYS8AtXfDaUwLNTiEA6Rm1NYDzgkPK05kjKF8N65kXPADN20BdBpgp5z7vDp3rQ3WQ9FljOM97XhCNvPkXI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752794394; c=relaxed/simple;
	bh=JmFWIndl522RXS8s2r57Jto31zXsjV/e20qiEOLYrqs=;
	h=To:Subject:From:Message-Id:Date; b=IqGjrhmAaVaFhIr9F5EWcdMZQ8PNS3zc5C6F5MjOSJM7f1PmVgt81pc0A9KKktemvGoTDWKyAxvpJYO40JH9w39fDJQSecyvmMTz73JesvJ1yatsbOsHyTKOY61AYyBme3f+2tt/5YU7qK8bHg+95UMWbjJjcqf9ZAL8nuJ6T90=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rXBG8H8T; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rXBG8H8T"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9E5DC4CEE3
	for <ddprobe@lists.linux.dev>; Thu, 17 Jul 2025 23:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752794393;
	bh=JmFWIndl522RXS8s2r57Jto31zXsjV/e20qiEOLYrqs=;
	h=To:Subject:From:Date:From;
	b=rXBG8H8T2dQ9gbnTcNDsgBa4a8u8gEFSKr/AcX5oukxmY5ge5ZSMbBfIHfVXJvAHf
	 IdlI5E3t2Hsm27TrCZAD8hhiokwzJWy8YAU0h77jy/lTpjyY3hWY0qz/ZiQp05WVep
	 TBillq98HMBoRae3fGiZW784cVUuiPQQB1qG4X+jfTi4M+wvOeOyqXXIAJlVnD78zh
	 Jf5GUoA2254HTVkGDs9/MMWRBv37CoSIOgGPyVVvK7W9v5mV3vYDPNWH48WdYLExEP
	 YXHfwnAdku4oS7SPTvK9oSD/U+c3DmASraW/ytlQwiGQv2zEsAJo24GoyL9ixGCl/W
	 tdtQfxD2V9h8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92483C83F34
	for <ddprobe@lists.linux.dev>; Thu, 17 Jul 2025 23:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175279439357.30750.7717700518046013512.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0da3ab2fee95814431aa80751d42fa172a179a58e989c8b6b4a989d33462d403
Date: Thu, 17 Jul 2025 23:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752794393
