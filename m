Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F2063F23D0
	for <ddprobe@lists.linux.dev>; Wed,  2 Sep 2026 22:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788386435; cv=none; b=iGVQHAoRsRJiIdS0hXTJgsdGTFE1WKOEuyT1OZVm2oT3GcWkKUAcMrAphRp+9Wk9oiO8alsFU0i0gJKXKkdrEyX8rwwsxn72Dslf20lqtdHSoTx7lkLrQ2Pwk47Ka/taUnziw8wQpJSkUiO2PpLzdOmkYTWyU173K4leUIigIOQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788386435; c=relaxed/simple;
	bh=mkT/0bx0D9+XohObSEnySeSRasFqLnd5G9CPl0Tggio=;
	h=To:Subject:From:Message-Id:Date; b=rOWFTs9n4h9x0ICh7rkpLF/BzQ5LQClYDhHOq5WWKBv6um6zMsdk+lWnkY6C7Cf5/f92DZCcOOmHuQCJ2ZX/Nvjl9I5DnkTj1Jsmfro2SGKHrCvEH6FCYzmRvob0xq/3kohN+aEzt0fUFmREzraJ/DVd2rBwH+mC8ZRHBSHjsAI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oxsJLMYk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oxsJLMYk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD028C2BCF5
	for <ddprobe@lists.linux.dev>; Wed,  2 Sep 2026 22:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788386433;
	bh=mkT/0bx0D9+XohObSEnySeSRasFqLnd5G9CPl0Tggio=;
	h=To:Subject:From:Date:From;
	b=oxsJLMYkofb8KYPUJG0RjtDYQ+Fty2SSjigR4Po//+tBFhVqWujj5mH5vhsDfA++I
	 /mQr1+icJ5U5tCdv5NXJ9S9Npo9tI9h1ISDadf8x1kGza12oGWAyIy6Era3A3+VFb8
	 7YybnUBeco9G7ZK+o8z6W4JVhOa8hA0S1U1banafgjPoieLeSbW69NStrnhrK2rouM
	 pHkmdkJnilZJTVLv3f/cNzEHIIWG++qwMqpTbt9Et+jRWjL8lmicebmi/JVdmcJEt6
	 l2lqT9cEQbOGwc/FJ4hKEFUuf0k/RwlGNlHUzouZsWH4pLze722nQfbaUz8RwgacrF
	 Ack0Gh0QJimqA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA08AC61DD6
	for <ddprobe@lists.linux.dev>; Wed,  2 Sep 2026 22:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178838643368.12687.17327920600338176647.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 54537342853b98f70f9c0acb16485116e70668baf3113a737beed261f3bef719
Date: Wed, 02 Sep 2026 22:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788386433
