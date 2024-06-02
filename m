Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5FE1D81F
	for <ddprobe@lists.linux.dev>; Sun,  2 Jun 2024 21:05:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717362323; cv=none; b=GodhfQSSvodoqd57Dr3dFwewpRDEkpHovAY7MtEqH5eqocyc5ND6SDYV1PA4GntoMxht4tkudkh1bvwdRRG712vNNH8CJ5szXAJp/0Tv8nez8WmmHpStbRBMDJQsWmAir/WPVkwyjSc8nYzxNLN/nFyDANIjw07YvxNUtruqhqg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717362323; c=relaxed/simple;
	bh=keNueH9fH8KlBuEcGO8dOncMj9+qEWMrP3bXux218kE=;
	h=To:Subject:From:Message-Id:Date; b=HTPvnnS/kggCQCSPo1vuMo4tns6tgJpJGdWIqIIyQn04F8cRfmlMriVnypdc4YAn57CePe4cnuvncSiMRyAIHjUUj3jXfWllEB8tH8Ou+sw+PQdRXXhEuzN/wbKswovu321yp03PHQZQnq5rf9SzRbj/lBC6hiCGRfFRuR6knVY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B5xAN9Dq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B5xAN9Dq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D608FC2BBFC
	for <ddprobe@lists.linux.dev>; Sun,  2 Jun 2024 21:05:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717362322;
	bh=keNueH9fH8KlBuEcGO8dOncMj9+qEWMrP3bXux218kE=;
	h=To:Subject:From:Date:From;
	b=B5xAN9DqgcNWS3+fdOE2gHlPCK1XafdXym7oHUeKSH3jLIXxfPjyr9fkyirAFgB/q
	 +yUwgvtVVR2r4Bz/JQ1rAhpl+9t/nSv6P9WhgmOQA5eT2a5V+AJZnUuCdEccHU/+0c
	 HGgvo9vDzHstppZ0Ar16uwjonfadyzQy17uMruSesfiphd/iei8QnXisVEZK1l19I3
	 nB84T860HkxnnjSaPLQoC9m/c1Y53LzLOBM8Ouc4czsDq5fXhqjcgC5xF5oUMtEhBh
	 J5kFQkvEoOtguk9g6JO2O8cY4Gq0FDNYFS8FfVDtYeYrwqEDHYo2JLQM5bN90l+1iz
	 JprSBwQu2I1pQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3126C25B74
	for <ddprobe@lists.linux.dev>; Sun,  2 Jun 2024 21:05:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171736232276.27746.2024991613168685188.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 598476c909b7cdd1c5851a4b2eb39e962c3cd91f98ccaeb21a5761289fc27b7a
Date: Sun, 02 Jun 2024 21:05:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717362322
