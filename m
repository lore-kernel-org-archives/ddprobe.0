Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 07893EDC
	for <ddprobe@lists.linux.dev>; Sun,  7 Jul 2024 15:26:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720365983; cv=none; b=NdTzSNdWZ1fGKaeeb91fmFt2OhuEpugTVtEw6hoBhnpjeRGBoW4fAHmEWrkJMLXSl6ZaDbSSjuVGC8spYcHDepon8npOuL/yQLXbfnuoxd21q/knnq5cirdEvQRBRPNeC1Ag1I9PUl0Q5dLj63xFyKn350tzMEsKSmWAD0FOK/E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720365983; c=relaxed/simple;
	bh=DDp3YL5UDNziRyjZvTjNYwtATM9cQuBjEVQ0Y1f+PuA=;
	h=To:Subject:From:Message-Id:Date; b=glYzfaB6WXsURwex16ODJ6a7GPssh4hXyS6N3RHnSGyNi3qm8hMGpRh4/U5ZyDbdOnxuUPkoshaZV5L31W3TLUnaZSztOXXOgnFUh7XvnGtMRrlkTKzM9B8f/LgEp5KAY6ztYL8whoi9uT60kN0ikEDriacoLo6cAjGQQ9xtJk8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eBHkb8ax; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eBHkb8ax"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D21E5C3277B
	for <ddprobe@lists.linux.dev>; Sun,  7 Jul 2024 15:26:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720365982;
	bh=DDp3YL5UDNziRyjZvTjNYwtATM9cQuBjEVQ0Y1f+PuA=;
	h=To:Subject:From:Date:From;
	b=eBHkb8axXS0/yli68Wtb689uKewcvWTVVL6pg/iYazNCXCDsKXGWbHPGjGwi/3/7M
	 wwpQgActarCNKRUMTK63RS7rRYcJ0d7Sor3KBFw3+YnsTYOeY9ZPBZMbjipeZ/9LG1
	 CqLex3Wu/Q7DvtRYlV5BXzTLIUTOXiiBfm0wdp8FwwYxfGxmdZKd9l8p+xrma10Syw
	 ACZFE6mqTJxqcbYsEmimC2HgWMVfJQlkrWQKHzd0DzjtJzHxAt0ij0vusi0Lnf+4nj
	 y8xaSuWoqf8wabLHWAGZ6TbWd0ZOQzWL3eoiQhRq2TT0TJIcHLT8JLR3FSLMDT01mn
	 k/1u5kFRnNE9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB62EC30653
	for <ddprobe@lists.linux.dev>; Sun,  7 Jul 2024 15:26:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172036598275.25332.10750822148683750234.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cb4861808bca0c6187842699788d2713f1303d79291a26ff704e482f9dc4a095
Date: Sun, 07 Jul 2024 15:26:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720365982
