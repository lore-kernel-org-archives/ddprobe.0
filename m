Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 505B31AC43A
	for <ddprobe@lists.linux.dev>; Thu,  2 Jan 2025 15:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735832754; cv=none; b=e1sv26aq9NN25h0itW1EbHjJOyCHi7DjhHM988X5wPdfftCHPZqZqUQhaIKkea7ZNNAdGyb+mkzWDC8NBKPWVjdu4FiADG4q+NfJe/6v5PP7pAnezDNv/XvPZq6yPb3E7LtRsYGHimivrrF1LOEY8uGwyoaO7q86FccXxmBe39s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735832754; c=relaxed/simple;
	bh=5GJ78yQI3vEYYtYMCBew1C2bWhdlpwaSZYu0lpewDmM=;
	h=To:Subject:From:Message-Id:Date; b=PHKM61Pwvcq9BEb0LoirhoP8Y3KKa/IwcZLH6kmbr15J3IUtRx1DDAbzrT+WcyFEQgBxjdM1KXKSDHIQuQM/WHCZeHnF2MIKjQ4izeRy4VYiGpZEHIJo5nzfJgklxIX/veFD6m2tInK1UsTtm8SvxVkLL08uZ1Qne9wGG+7LvWA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QfOt5Tf2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QfOt5Tf2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABE8AC4CED0
	for <ddprobe@lists.linux.dev>; Thu,  2 Jan 2025 15:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735832753;
	bh=5GJ78yQI3vEYYtYMCBew1C2bWhdlpwaSZYu0lpewDmM=;
	h=To:Subject:From:Date:From;
	b=QfOt5Tf2Ru+Or1+ViMWE33nzHNglNyMqTn430OOfl8HL5T5gH7lFYLonzV4exP7LB
	 JghlV+mFMIj9z06xzqBkj6BKCgC7Kw4nHyzm2AWbEpBH4XGCQBjEJ+vVCD29lxnj8K
	 sJkSmOYQ9RW0p32Zg2IxlIP34Z13IH3nZ6/BEBBL1h5pnVCYsTHd59o9CJ37uOabCD
	 Js83BUWBgb4kp9ykLqcdUHFizKA1IGKcINnAfjQl6tc79M57rFRVKpwYf4yWAi+ai4
	 O62y7PntWDBFWB6Qs31DHkH5r4sSSnDlXoUCi6hyUBEWu/hgGD5IXdWRJH/ppnYBFa
	 j/Au71zzPEa7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95C83E77188
	for <ddprobe@lists.linux.dev>; Thu,  2 Jan 2025 15:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173583275359.25679.6290378853322133308.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bf91b43839d4e52d883c9b9bda8ef2125cf0a454f5c8d42d44dd99cd6d5d36c4
Date: Thu, 02 Jan 2025 15:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735832753
