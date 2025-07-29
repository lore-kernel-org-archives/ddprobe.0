Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14B1D18C03F
	for <ddprobe@lists.linux.dev>; Tue, 29 Jul 2025 02:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753756794; cv=none; b=dQQoCROlKILl6VAi97iO7CPRe9IuL8z56OBRToR0hJ2IFde9QShwI2HJY7i8J6OBMNKbD4ZkVmPe0qK6+r9l/I6TMStfbVE1neE5+5dyY94qHV4pReZwMQ7NwxowuWa4ggFAFubFpKoqNeXGQLAVr3LXi8zp0cI4netuRz8fnjs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753756794; c=relaxed/simple;
	bh=5KXLr4rQR7egMnz1F8WUrD+JEt8cDEU0e0Hc+hBfyj8=;
	h=To:Subject:From:Message-Id:Date; b=pD6Jhk5Fw9EBEcCGadr68qiNlGXTZZCHcVIjKpJ4B5sArmx9fZfzdr7E4MmoTYZxPXlRCnVNjoehn1tClGzh1ZIJtjVolMXBb/wclzNaWy5dKJhcNuN0cM/BOPNF/Byo0ddURGGvf/sFVV6703AO+zB5sHQtglQemNGsyvuEz30=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZWz2Ow/A; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZWz2Ow/A"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A13ACC4CEE7
	for <ddprobe@lists.linux.dev>; Tue, 29 Jul 2025 02:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753756793;
	bh=5KXLr4rQR7egMnz1F8WUrD+JEt8cDEU0e0Hc+hBfyj8=;
	h=To:Subject:From:Date:From;
	b=ZWz2Ow/AWTKUt5Cf4EwDb5ftPIgzflXOS57DWT6oxBNpwm+DyJ+xBoBAfwpM8WqYs
	 FjuSiXnqBCx11vO7laCch5IZfXxqPQvyjwrwkn6SDZQNrt8Csjk1hurBbTgZxb5eVE
	 AqucqIR8XIqtcgZZl0F+Xos7nngfpbh9FkUstlBf/9u4Bo1yXECKzQxlB8rXEJXOEg
	 1BO/rDvN2B/LNut5SdwGn8WhFCCM+Xz8grjDkvBsHtRQEjWBLpYKTUSmbFyJWcjNSb
	 eCKK4LcuKHq+fo3WQq6duGTLGcmaoxw0cwx05vQiaNit9pxXFaSPn0d6VHxqt2PkQY
	 ALwXx66vsqomg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E4F2C83F26
	for <ddprobe@lists.linux.dev>; Tue, 29 Jul 2025 02:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175375679357.2384.14121670450454083946.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d842151ec188297b408c79f24582ad55310853d9fbd3cc96f341b212b93fadfc
Date: Tue, 29 Jul 2025 02:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753756793
