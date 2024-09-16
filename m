Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D7071BC41
	for <ddprobe@lists.linux.dev>; Mon, 16 Sep 2024 23:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726530354; cv=none; b=J3Tb7RReurgSv8hc82P85Y2KcAe+vD9DM0spL8uxwFmNA7IGCrdhPlC/txf7MPCHNX3is9arvtOuAS5+qLXwf2kkXxncnq6S07f0oiPkxUmOCjdougIVFIodTh4GQOGIhbKp7sAXRW1v2XjzIwoxd2FM/siXiJsGlGXov4nIjNQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726530354; c=relaxed/simple;
	bh=9VjWkJsB2OjB9/eUvKkEuZ+zBZ2ezM+qWFOkDyKk5r4=;
	h=To:Subject:From:Message-Id:Date; b=lvW+ScnaKepVkd9mXO9odvfx2DD9L9SwcXd8Km1FHnAdKgTKYuUcZI6D7Bo/4a7AS9zBgdEE+9Cwhf7mVxFqoaDyT3uHph+wTqLm6eWBbnyxj2ps0WLpHsyOXR56ywd5RxtWmqbKSSMAMGuKJt56sKEFAhS5bO0HLOdmxYHJyoo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Dt8f1QXR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Dt8f1QXR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CE32C4CEC4
	for <ddprobe@lists.linux.dev>; Mon, 16 Sep 2024 23:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726530353;
	bh=9VjWkJsB2OjB9/eUvKkEuZ+zBZ2ezM+qWFOkDyKk5r4=;
	h=To:Subject:From:Date:From;
	b=Dt8f1QXR3KC8e9tSURZk4/sSfW9pLUOkh7Hvj4wWa8GnVRw3rVuyfl/ANrVVw+5/T
	 K6+t78aQQWpr/ZGzOGYM8vQNJmeDxGFbEFHaXmdrtqtEo7RnTNhIqu5viqg4P3MSOP
	 E/gLiMgVCOX7p3Lcfw4B9CmYyO1yTM/D6DHbi66PyRG99Urnv4d84k0pxvoHPjMmt/
	 s7MNMCcdKTOKdwfiPUyBerlJ8i5VFkVx1UIGj/qk4gn103coZAwKlo3DCQp6iIvOc5
	 2b+5iCLai911axYBXluUpl+bZN/1Pc6wEVyppXZW5N3pN3tXQWngBNqCLddozcZaPQ
	 frXDHxp/V+waQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EDB3C3ABB2
	for <ddprobe@lists.linux.dev>; Mon, 16 Sep 2024 23:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172653035357.9281.17297618760043590655.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 42598f911a0b5d94b89834c5b6376a7046c37d189be1b5f64d4f3aa92e6ba302
Date: Mon, 16 Sep 2024 23:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726530353
