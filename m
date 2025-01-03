Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31AB7145B03
	for <ddprobe@lists.linux.dev>; Fri,  3 Jan 2025 21:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735940154; cv=none; b=fvlEqY3Jgzj/RBGVVVnBL/b+2NO488xbwi6q9lYCJu+l9QEAvJC/HvY4C9wecXz2T9BAVtEa4B/OEhBFCgJms1bpwAIunSZkLysrgMl0rKuozHcnSLMU/RypkevXJE0PU4idwYUampD7xXAZlzkvjmsFW0Ur7LPQTKMBZbp/WuE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735940154; c=relaxed/simple;
	bh=ums0U5lQWXRGI+Im3yEP8NTi6zxl4QKvzZyd4u3cCno=;
	h=To:Subject:From:Message-Id:Date; b=Uy4LIUe6Ztu3wQjfnntV6+qphAjEBd5RQw80TilLeytcP+M8rVbLvnq35kPz52jGdfcVAL96XIZyLLBfznpucWd+gqA4L4N84BlKl9Kau7UyVOUAo3VIlRz5l41EK52pEJAlVQ18xsQzZaobhFw0lHop/f9IyWg9CsE8hY8meD8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qF2yVbsY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qF2yVbsY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABD49C4CECE
	for <ddprobe@lists.linux.dev>; Fri,  3 Jan 2025 21:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735940153;
	bh=ums0U5lQWXRGI+Im3yEP8NTi6zxl4QKvzZyd4u3cCno=;
	h=To:Subject:From:Date:From;
	b=qF2yVbsYuEb+hBwPAkfuQevpdCVEnywv2Tu0F7y9u4BTXZy1W9YU7kwk8nQslAjse
	 s8ADOW8GUJ5Lnr1GjFhXYwdYCjXA5QdTKS8kyrLYTkW91BM6iRTiEutL9CYqwXAzm7
	 5d5ANaXHLTGJvFmxa62qIRXWtqMP5St0UaYp/+XjpsoWMU8OaGUxfdGk6zPNpU6dv+
	 v1ogTJlT8rLod9H0TnUFdyDgp4Fm6uxVbyVXQbv0rxm8jV3b0mN2mADG32IGar3t+w
	 U4FCpnZg/I1CD5HW6SHMfT8WXOWtbNvrX0PevcuyM9q9SK6EDjXxB8RyTE8EqcAdkC
	 lbWF5hFi18NLA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92EB6E77188
	for <ddprobe@lists.linux.dev>; Fri,  3 Jan 2025 21:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173594015359.22990.16889801022945743057.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 384b1a19321598bbbe3b9b3f974fce36a9251929b8045b3257050519779f2c32
Date: Fri, 03 Jan 2025 21:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735940153
