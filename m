Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4726F41C69
	for <ddprobe@lists.linux.dev>; Sun,  8 Jun 2025 13:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749389395; cv=none; b=YRduy7llbORvjjpNlxyDc8UISgKVcv6nMZWTAWr57TAkay0eLkD9FSsQ6ujgUI4qqItNMiKAxTrwdUGsVQGmzmmLGgHdnURvoOCvOu2Z9rZzaQxqHRM95WHyf571CGPCO8Q7tuaK/5AnnOdvglfQYGb1zNMbMLm5r1sgaFCHfgE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749389395; c=relaxed/simple;
	bh=W5UPDTtAa5iurTeXHXrGQ3r5z2BCBU3gchcHiNut8MM=;
	h=To:Subject:From:Message-Id:Date; b=GoQWy5YkmBKg+cWG15DUIPvA4/l0FIiHspOfWdI4QILjNgP5V04eYrQt602BGk7t0ylscerWXryGqVUS0o7sXBOMs6jSiN0MmKxqkknXULYhZ9x64l3pimV8ArcCur6ep0+hZubha//XzKQLnnBR7kzPf3ifQE4Mawsb/4rIRhU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=q4vlAcfY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="q4vlAcfY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6AB9C4CEEE
	for <ddprobe@lists.linux.dev>; Sun,  8 Jun 2025 13:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749389393;
	bh=W5UPDTtAa5iurTeXHXrGQ3r5z2BCBU3gchcHiNut8MM=;
	h=To:Subject:From:Date:From;
	b=q4vlAcfYHt7TCjy3wTsUb9uuAJLcNUJEWtRC9LbFzC3Wg0oZiU1RqpPYgz9LygqVu
	 Qj53MNIN6tFkc1mVEaIsY/7s4Tx9QH3iZHVdr2Kc8y5dJz2uq7chXTYlKsvfiz8S3h
	 Zo92kiwjerDlOHC1xSVhDALh9IAafafj8XUBfTZFkLkMApLl6sk/xr8oOKOD3d4D7s
	 2OR/CIfah1ZYnpfbPzERVnrc+i2nfHRDY3Ul6RCZcHj9sIBOd0sk6A4B/bl2us3m4N
	 4b4zyr0t+bZCO40jjNZpatRTMlf2uamijc4tleFvhM0JVcYXdT2nRQB6mZtg4Lkxp2
	 bmeen0n2jBedA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90EDCC5B552
	for <ddprobe@lists.linux.dev>; Sun,  8 Jun 2025 13:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174938939357.31781.14054012249247906474.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7530c5435776f1ad0432c5d2f9042b95a388051f1400f923f2a5597f3274d373
Date: Sun, 08 Jun 2025 13:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749389393
