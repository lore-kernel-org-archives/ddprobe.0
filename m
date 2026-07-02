Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D8E2936F8E4
	for <ddprobe@lists.linux.dev>; Thu,  2 Jul 2026 06:08:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782972514; cv=none; b=m82T4Fp6p9T4t5ZwEDTPQ5OqJBOhsxvLLFcmCexL0kDZ4JO2Boy4J4hAOmI0HTnO6++epQBov8Sv2NeErQfYUFqChWBXNJjsRpLn7yqOPcHmFwhSqqfJivjj6+XQXGWdb61sI4zzYLT85rC6yIYotkxY2SVUjvITb21/P73x2ZM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782972514; c=relaxed/simple;
	bh=p1KrC5ZW8Qq4B6UATttNl/kz9vKjpnoB6mDZP8mevBA=;
	h=To:Subject:From:Message-Id:Date; b=C5WdgnsI3PmqtukKbe5tS8S72hcq1p8xJfynEtV3Ul9gBF3R4Ds05czbq+o4NmOG/8Fk+Qa5PKWKx9Lutj4XdOfNa9NL7LEZ1aWdzMu47hOHa1FzZlRiWMvQYjSWp+1I0wQLKzQ7oKyS7J70zOZqPSLiAJaBYQW8N2imr7I1Myc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oZ0QLL5P; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oZ0QLL5P"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C87CBC19425
	for <ddprobe@lists.linux.dev>; Thu,  2 Jul 2026 06:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782972513;
	bh=p1KrC5ZW8Qq4B6UATttNl/kz9vKjpnoB6mDZP8mevBA=;
	h=To:Subject:From:Date:From;
	b=oZ0QLL5PPxkKcoYkai/Dg/+Gr/tBlZMX8g/5nfgEaqYCwCAVobPBj7TiKufJx3FF+
	 a5St89D7gb5VNq10rhP1ifoppSxL+QyafSyF3l37axHgO5XHGMsJAYnvW5xvwYIZrp
	 9DwD3bD3o32WGviFr0MKR1Cjk1ckRwiFqfByM+l5zt2+bvHRNFfIsLYvQxKHnYlm7n
	 qnEPLgHHCJDGxCedq9K1AXWyIdOrE/hzvoE7xZ+9LkGCjLi3beNkoqljSTawoVrMP4
	 4NzsSPVPXCknpLrPaPUuP2HWeTTQIZ2dOs7tgf5Q0lt19K4QF6O0RVW4NaoeKjdkhu
	 zW3nodtuEzVcw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7B0FC43458
	for <ddprobe@lists.linux.dev>; Thu,  2 Jul 2026 06:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178297251368.5068.4709650301257758271.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 66d44985c4ce8313796b681b9d338b6429d1d2364874d03a9f1302ec44ed9207
Date: Thu, 02 Jul 2026 06:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782972513
