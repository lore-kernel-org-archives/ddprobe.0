Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4563F2877DE
	for <ddprobe@lists.linux.dev>; Mon, 17 Nov 2025 20:11:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763410315; cv=none; b=PMV4fIdja3pUFK0h68AvefY6aMNp9AA1cCDFxqwXwQYCmBw/B0zj9F+fNxs+C8zsCiQQWEtzc0t8E62Ehn+C/yWfPLVlSrSdSyoil1f4tcCJRj2CH4l60iMvsxxZkN9H4QPwRLyHToqv1PDsVk0rgVwqKQQS3hTJmA0UmRsbgtI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763410315; c=relaxed/simple;
	bh=2OKyh0FApJeQ3LA/dGPl4qrMwom5U3X3a/To/QIxpHc=;
	h=To:Subject:From:Message-Id:Date; b=To1TOajKUyjJI2EtuC5k5CsdIjY9ohccRr7PuOKg4X5lOiqsCMnFzovXVwf2OU5gE5aJQU53rZDrQV23jIUBSOfj4S+WOii8FjwT/id/UEYlGWoYwl6D4eki7UUk4Ix/VF+LVYUa9ubv1vy8QwtsIfAdIuYh5OBoia3LcmAdt60=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qUWcpeYL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qUWcpeYL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EAF45C4AF0D
	for <ddprobe@lists.linux.dev>; Mon, 17 Nov 2025 20:11:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763410314;
	bh=2OKyh0FApJeQ3LA/dGPl4qrMwom5U3X3a/To/QIxpHc=;
	h=To:Subject:From:Date:From;
	b=qUWcpeYLwbHyj8VCMmnnGJOCGQzJXhNRu/l0al9Zg9mQ5rW6cwFckqYZWYL9Mf1WX
	 mpDyHOcB2zhPB9HaC7s5F2M9lFLWO4AgVN+5vZeU2dJFaK33WH9x0Hkyt51kL6e4c0
	 1OJ2IAkdycw4jGei+vTRMxD5xCjuwbaGal1/oa25R6KXVp//yjChKdCVrjmO/kmGws
	 PUaMCiwe/QwfPO6yqVPRnTTIck5Gd76TaZz8L56mp2s3ADtH9kWmQm7S5s2VfQTf80
	 G1WkDRi4pknAU40OrfKzN4MDVWMeF8T6A7tlz8flLoAz+ojTd/UwJUbXnaiP5KhODQ
	 qow5oAcfABNew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 969DCCEACEF
	for <ddprobe@lists.linux.dev>; Mon, 17 Nov 2025 20:11:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176341031358.7734.16040993968831602237.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 21e7de94603a06025b47fb1ab80c0f7042d2e9ac7f077513c11c9e282ffa9225
Date: Mon, 17 Nov 2025 20:11:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763410313
