Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EE5811C6A3
	for <ddprobe@lists.linux.dev>; Fri,  5 Apr 2024 06:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712300297; cv=none; b=uFOSxFBUIhxQLkzKkFh4UdGpiQsDbRDhv2V2EdLcDeGKqgANRb20/YS6BqXixID+WWaltVLKMgfrWf0m/8IPK6tH3G1+j1+QbTIrX4+9bnpTzT5f8h1hdYllZWXohWvNfTKPzQAK/8oYqFD/3e9WnwWVcj6RqiDav8My/KySShQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712300297; c=relaxed/simple;
	bh=lN9z6vk1ze0peKgf6PF6mBBHukFH2t7Rdqe7OVgQmZk=;
	h=To:Subject:From:Message-Id:Date; b=DoFtz6p6CGTascBmZ4ytDvfoz4WgMGy0dyLJz2RBlAYch7uEHkamfZy1CfONMJe1gCl66y2AFbq2y/GMDufdbB7DKJU6411IuQvb4wglTIWhIxpg1NTg3AQnksOdSDttdy9Rqx0kwMThqzw0U8tMcNCiYW2qn8XmWBNNs6M67OE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XE1nMTsc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XE1nMTsc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 75671C433C7
	for <ddprobe@lists.linux.dev>; Fri,  5 Apr 2024 06:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712300296;
	bh=lN9z6vk1ze0peKgf6PF6mBBHukFH2t7Rdqe7OVgQmZk=;
	h=To:Subject:From:Date:From;
	b=XE1nMTsc30YklVzJDG4YDao8OmF8d4m4Eeqs1JrEzHWpAHV/zUWuc/7QIwh8qctd2
	 4pEHkjU3pu20+6K/zCz9Ww+r0RVI9yeWVBz8sYk1W6OkuakHscw25WFDoEgR8u3L8y
	 nQaUZAwIYfG0euSL1MOt9gmHLuzeMm5QRk6w8H0C5WiqNDRfoQrfxoxlFg0f7sb2vx
	 /Qq9nQ0FGeIJDkXM1b8+annJf1dsanPiGGHqAaXzfRS0PTdfBR/7TWioKlnT/Ng1T8
	 cx0b2YGSCiufekbSQ7l9bcvHrivLE3iHMTBhNpm3jina/ciAFfxxHlqOnCkwQfAcFU
	 doVh2ML5GjdbQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 67384CD1284
	for <ddprobe@lists.linux.dev>; Fri,  5 Apr 2024 06:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171230029641.18368.17150991027378711846.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 49d28da3419f0af2da9ecc11b2ddcf7db83b9cef9e46f1717d38698d63b3e869
Date: Fri, 05 Apr 2024 06:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712300296
