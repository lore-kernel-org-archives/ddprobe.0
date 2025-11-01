Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36C3F28CF4A
	for <ddprobe@lists.linux.dev>; Sat,  1 Nov 2025 09:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761988194; cv=none; b=rZMBYfj8WMp8kzDYL2wM15msB86ZSVldNp1C0cB4uGEgy3CnAYGBVqiZVA5uvIeYmDlMeQgYhlQ1L2JAM9MDuI8Lf+Gazl6zWPNyZcec9W9ajpA5w8SRF4HAemf1YsJs/PYyIrO9TGhLsMdqJnUfVxR06E3bkef/gVTWLsSrId0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761988194; c=relaxed/simple;
	bh=AT7PiHHZW6M/fkrTsEqMjIUgXr23CmadN8Ibb5uWXxE=;
	h=To:Subject:From:Message-Id:Date; b=ZBb5uHRnL3eYoffZpOHdbZDiYpZIduVoeHrfHp0kmJJFEhgXGdlZxzybsDXeNXetrkYijOx4SK8NCaUdQCFOWGHbFwn9TAJU3vK4c1I3oPduKBUaSAxpQwqEez6L+UehQ5va9S98y/XAl47/dbb7kKikz2LQPZB32MO0L4amyKY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t4eLaPPO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t4eLaPPO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6CF4C4CEF1
	for <ddprobe@lists.linux.dev>; Sat,  1 Nov 2025 09:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761988193;
	bh=AT7PiHHZW6M/fkrTsEqMjIUgXr23CmadN8Ibb5uWXxE=;
	h=To:Subject:From:Date:From;
	b=t4eLaPPOPLX2ngSou/IXyvZ/fzAehvyw3BEP/9zh2ZHSJN66Dj1MMXLF2GdzfPTWk
	 VZB1jrM0clShsRjK3nDwgG5UpGZdBlY9CWwU7RISQ4nJQstPUe7+biXpwRYjboOL/n
	 I4k9rZoHVQm6mobn0dFJmv7LfVaDeSvcaDrF4/wRv+dhjK9Q2DDNlR9z0YEqfZaB1m
	 uE0j/ydLzZJF6WhCwKUOfUVkkYzOmYCiHu3ORDU1MPAXrgYYhdpivgkAe038YJHWut
	 Jt+E8wnUqSD8ss9tG/YTs1X3rFxbNCB41+LZ1wa6rQsJEOJH9qdUfrK2PCWAjy2Ftb
	 aazMTZVP1bEZw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 924D9CCF9F0
	for <ddprobe@lists.linux.dev>; Sat,  1 Nov 2025 09:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176198819359.21860.14223997640379310428.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 710ae40b37dd57eb5c6ebd1fa1c56def8ae8386d1c4719f30bc06f5ee66a7201
Date: Sat, 01 Nov 2025 09:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761988193
