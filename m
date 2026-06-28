Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 529B3175A8F
	for <ddprobe@lists.linux.dev>; Sun, 28 Jun 2026 09:08:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782637714; cv=none; b=pyXVD9u5+ZYXL2+DVff9YUn+5thmf2eEVyQfDCp5SclTYAdf0I5DjhYkQyrBXjAegxVOT7URdx8pF7fnvjFhSx9NzUYg/wXeoRJXcijEr1AGLdS6QPRv2GWSD9cUnulAe8GY4+nffClu6EE5PEoHeUjq0zUc8+8OEVpVWNvDM8E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782637714; c=relaxed/simple;
	bh=QZtPjk69UOuONKqCYGU6llq8Biv6nPiN0YMB/BCRZjs=;
	h=To:Subject:From:Message-Id:Date; b=Gu1y0HfdCkd0fvBtX3Tq9NeU1UWQSuhPfLQMptzr0YDmMpbKNL1Q4cjxxjWTjQ3H5ic+/K6GIiqZp3khWm0AHxsJPxlvFzhhCv9BTNSzmgIxrjajEVkPU0Uvlg36q8aWOU6GYFEK4ilt9dqMQpUQpU/A2ofegM8a0nnpihnzj5I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ltHopyVG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ltHopyVG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCA26C2BCB4
	for <ddprobe@lists.linux.dev>; Sun, 28 Jun 2026 09:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782637713;
	bh=QZtPjk69UOuONKqCYGU6llq8Biv6nPiN0YMB/BCRZjs=;
	h=To:Subject:From:Date:From;
	b=ltHopyVGJW2IyiMvQ+TaHStqmdPqYGyMBLR+mxrTbMTgSdwZXkzYwMnEmbI9/C0Ps
	 uHuclxV4A0xfvG623kA995xgS9icXFjAWPeNc4MZxMwQpM4/Mr5r5dR4eXJJVULoF2
	 KWxmFNrAccymY+7ADGJ5bfk8QkOUiVHKqB9n+YQWTfjopVtZRLQIyfvmeSssrfwva+
	 NhDVs6zAfdCoAxfwJPzlyXVJRWqTXO6CVDZYUA24PNPG4MnXwnMUW4Ohwj0hW0nCMr
	 UxskgKWdGvwTk5BztNVxe+QqBlycYwjX4TLfxtKhULQLscyW9ZLk5oepBg0LrapZQr
	 U/s+YN/mnTZhg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF44CC43458
	for <ddprobe@lists.linux.dev>; Sun, 28 Jun 2026 09:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178263771369.26040.6249432250929762592.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7bcb14af2c4c9abe9630077c4e9d8dee6a306febe8f4611da7c7d4c54bd135e0
Date: Sun, 28 Jun 2026 09:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782637713
