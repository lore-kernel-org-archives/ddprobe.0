Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A21339CD0C
	for <ddprobe@lists.linux.dev>; Thu,  8 Oct 2026 16:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791477634; cv=none; b=Zn5XEm2z4QdMG0Du1mC9WMf4PYQzzpKPKATGNzxhl6VPIm7DLOSwPDRMUR8/nY20AKcUUveXpo05Bj4sDW6oR8TgK2QTA/Myf3jjP3egdVlAwM6BVFAlsTzpWxW3UKjwjjjmzDkvfKCByLcZ0N3zmSspINaG0TPRGvFgwtSoLPQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791477634; c=relaxed/simple;
	bh=ruhQs5js37I6GV3365T/XugOXrkshBir140HjVZotdg=;
	h=To:Subject:From:Message-Id:Date; b=BOkyOP0J7JEXpWeTk/mHK7EqpfOlk4bNH9R0RrUah5CKfX1JftT9kniUBnlUyoiMPTZHdX3JK/cOTkivSFnL0l0V2itrCN0dENLvPIkC+t/moJeMkF2qOvQN8+gTKebhAk/geHUmUnzowFoNCRU9TN33ol3yryHubCShZgI7GO8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m/conafK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m/conafK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB415C2BCFA
	for <ddprobe@lists.linux.dev>; Thu,  8 Oct 2026 16:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791477633;
	bh=ruhQs5js37I6GV3365T/XugOXrkshBir140HjVZotdg=;
	h=To:Subject:From:Date:From;
	b=m/conafKH7xqK8H2DSczwfcsrBTzDyiwA/WbicEeYLy5Lr1Dn7qSFwhDR6rvZu3tq
	 lkrXrgfK34NLB+tzHoWvTUlyn8ID/slZqEdA9rSuaSYe8zeVmTh/veo4UfI7G/dKxb
	 4aiiGfFAcWQ7wNtOxBFmuUQICGX1PEI/dtXgO4XT4GZEu4qLO+4SJNlZcEdZ7dAGxk
	 d2hWGXm0o0hJtHCOtW8KMxWPlyUdu+LfNkXfJWJucse+kPrbx2T/ZwNlgdRCYV24pC
	 aNG8iWHmxTmTCnxYj4/TCSQ47mrnVfFNWWRG4XCbl2Jr6t2MAWXj8JRsqv/grthNoN
	 4rGYiSmCKIixg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE450CA600C
	for <ddprobe@lists.linux.dev>; Thu,  8 Oct 2026 16:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179147763369.1435.11576361896612530361.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e92ae438707e0ec8fba8d93c230ae62601e968eb7aea71a8a27ef1facf4abc38
Date: Thu, 08 Oct 2026 16:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791477633
