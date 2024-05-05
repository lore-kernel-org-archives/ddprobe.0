Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F9297470
	for <ddprobe@lists.linux.dev>; Sun,  5 May 2024 10:12:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714903943; cv=none; b=eKJbO01uyA2KLD6buSYMrijiInPhmrfe4BTnYO/8ECj4lB7kibiqIC7mpazN/Df/qFmsOPUaE3cuMILC1Vpiizge3Xn+bs6CvBgg9KDPTUOWj1iI1iJIhKC5tAohygRgHSu+bop8pdatoZ1g3xl8S44aLGSeqoMCE3bIsDFAsrs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714903943; c=relaxed/simple;
	bh=TWMwAN2u7AvASrT8uOptxkWDhX8M3asjxvT7cLkXyFk=;
	h=To:Subject:From:Message-Id:Date; b=jKjCSU7qCzAsy3p5FLLSboBDAo3CYMjKhJksazASWrGO8mj7l4uoX3qHKn5cvhcnYSE0klRbtqyoIfNG4ZwMx1cz7z2i6S/SkELV6skcqiY6XGPWwBNNDFZ55JUfiK+9X+8iY9jj5ElPQD7DUKEcZsLc8nAgFcipauhNsMHGUco=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kp1kWgHc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kp1kWgHc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E9C0AC113CC
	for <ddprobe@lists.linux.dev>; Sun,  5 May 2024 10:12:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714903942;
	bh=TWMwAN2u7AvASrT8uOptxkWDhX8M3asjxvT7cLkXyFk=;
	h=To:Subject:From:Date:From;
	b=kp1kWgHczQpoF8r5ncN8jqQNa7448xag6Qklh/LMP1d9/73DkxhB5HpEp7Q/Rg9wO
	 DOSazPuzCbUDfnw6uEsGF8VPH2DxUcYYncF1zAZBXDpO2mnyfztk9E09Eue/1OAMbd
	 OVvdUXczJivdCDSGQlmy6tRoHa0bBehwbHd0y2CerpsfwVXZD5sQ0xJ6XXmjC+YqE0
	 gA9S7R3MGplKegCSJ3R09gAR+DttaFov7TKgjp4+BHzCHSsRRm5Z9Y5miqwqAHg7A2
	 gbIm+ny/7FjZfqwT+gmi5XKosERVeIFAcu/IViuBjt2V8Ys2AIHugwXcxni1/0bVVf
	 0UHlTO17k0LsA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CAF31C4345F
	for <ddprobe@lists.linux.dev>; Sun,  5 May 2024 10:12:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171490394279.25623.16179223288728163575.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a130fe9e94490d6cbfff7e5a27e416b50e0210b9f7084d2807f42b603b149af1
Date: Sun, 05 May 2024 10:12:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714903942
