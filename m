Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D7A167D060
	for <ddprobe@lists.linux.dev>; Thu, 29 Feb 2024 13:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709214496; cv=none; b=liparlSe1Smeh1ZUEc2+Xd/A33bmvDu24P3eZeWtUHTdCvybDvUWljfIexmpF8FSXspofASP8LGAmmCYITDpiacFK2GpaOJhDUI/BOHFxHrYj7L8BAWvGfTIcAKp7ppoqzRaDbase8jfogg7oONIqEo6MZ9Z0r3HG4Z7YRjmro0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709214496; c=relaxed/simple;
	bh=r0lMtmE2AxEeq29Q5N5iv+ECf+rfszNcvZkZnOqk0wE=;
	h=To:Subject:From:Message-Id:Date; b=rQjev4fS2Oywn0JlJQ93jrA2DtnJYgDsdpeD/63hPIi34RLhd9SjzEdWjRGuDB1cZtR/xAC8mk0f+kQUi8WFuO8Vf+DqjEJ/U9O3PU0Dw+wEONF4qhZ71VNo9umKuTQpZAq2VgKNbNau2BWZAWLf/Gx3Gadat4WmVOYS5NqhhYc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V7RFn6xo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V7RFn6xo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 71C24C433F1
	for <ddprobe@lists.linux.dev>; Thu, 29 Feb 2024 13:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1709214496;
	bh=r0lMtmE2AxEeq29Q5N5iv+ECf+rfszNcvZkZnOqk0wE=;
	h=To:Subject:From:Date:From;
	b=V7RFn6xoEFIfyfSs64FsDRDy9IOr/hqrw6fNCKJm+XRZCOoSSLAC6XBvSM/Fd0unL
	 Dhj7VxO0jJPYeDF67JQwFA7cHXmJrXIcbbuqFBYVuWULlNiX+Fz8R1puCE3k1Wq10+
	 /N/6A3tLG7nZ/OxGWPjYrUaEJCQr5t67XrOVOKSt9uP9frWYArgUYg/hKnzegVDleJ
	 UD9WUrRfJdOYaSUotOuyUa5Fs3LGxIUjdQueXxHlSQboF0B0BQ7O3JwbEFhNL79M75
	 h5E690FlEjg3V7EYmV7krBJQxQRkxBkyNh0fZXsrP5iHgjHFCM7m4aW/jvZg8tYnI8
	 dFBE4uarq0vmw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5B7C2C48BF6
	for <ddprobe@lists.linux.dev>; Thu, 29 Feb 2024 13:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170921449636.16605.9832285763597316283.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ea840de6de0ca7dcb4ed19584b1d298ccad19a7afae5af9461eb50b280b9f34d
Date: Thu, 29 Feb 2024 13:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1709214496
