Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F4071E6306
	for <ddprobe@lists.linux.dev>; Wed,  2 Oct 2024 10:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727864754; cv=none; b=A7BUmIPhhnm8GRZ+ZSV9NezDAgtAYa0tDQOFdAMs9EcJ1fJ6RSqLBAUPYg74UEvrS+oWSAEuO2q8g98UcGR0mFmAgy3SE3f9e0J22L8g/7J0seK/uZNwlzqMe/WHq6Cjsm4hWCz+qBRmz+HPbL3G5qEtDZAaPGVnJ0tUCZ941tA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727864754; c=relaxed/simple;
	bh=yp0YfGdqMTfBYWU9rCClmNw6AYwOjha/0MzN0RCGvWo=;
	h=To:Subject:From:Message-Id:Date; b=QcsAQMUXhGZcp7fD8d5w0gf0T/DDF0RUZ23/rRqjye11IeMuuufTU2OHy11/x596CnoKlu5YoU/MxOqlzSDWPz5P+zta5eVan09LB7a1oekbWAChtB480SSehVMCOaltP0xNpvTwhN2ivEBgenxhrv3McxS452HtgFZ6u5zTt0w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NgsjMD6p; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NgsjMD6p"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3065C4CEC5
	for <ddprobe@lists.linux.dev>; Wed,  2 Oct 2024 10:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727864753;
	bh=yp0YfGdqMTfBYWU9rCClmNw6AYwOjha/0MzN0RCGvWo=;
	h=To:Subject:From:Date:From;
	b=NgsjMD6pPI3YXU8H7WplcZdM1Iw7wuVIxPzGMPS8WkwyjWZjF/GKEVzVlXmmC1Cpi
	 kCv7NMUtiJyB/EH4mypMyKnyjBrozeaQUTaL7QYmPShES2EDPvxcIf/Jnm4k+q9q4M
	 pJPbUHQdhlSzYx7tg88zKgbBPdN1GZbuW3JbxUg+UMhGARlecP7a0CnqzjsGZGPoNM
	 NMHWzFbzFXD9vkDArLyqIzXRfL7vdDkCJEgUzi71sDXZdP6k6qR9rdwf6B2F68H6x9
	 8uOztdTlpAxL7jZXjINlRi15ovn+GO0zjBfP2o9gcHsUElNtysqvUjAKbKxALYzJGG
	 SjqDRUCXEC7XA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93135CF31AF
	for <ddprobe@lists.linux.dev>; Wed,  2 Oct 2024 10:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172786475359.17689.1049977916609481774.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e03426fe0ba4717192cbd04cee04fb4ae08fdc5d8909b1bee535749338ad2883
Date: Wed, 02 Oct 2024 10:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727864753
