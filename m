Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48B7A1DFE8
	for <ddprobe@lists.linux.dev>; Sun, 13 Apr 2025 11:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744544394; cv=none; b=pZnVzZBGQ4t+eNzRUdhXI/+6pKVFab+YkZl/3mULI/8AkzBF9HaOVQRIoE501K9JQvdwDlT+RMQmeLTkZFAxCF2ys72Fvdl3Aie7/7ebX8THwtfVrbwUGv4QSsaqvwdY7kAViFeV+7l4eJ2Y3UOd5lWQZsu6ee7kVw3NMOpWTDA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744544394; c=relaxed/simple;
	bh=2jXnkd240bdSBJsqdY8kGp/3JcnImCkAZmbmLiuYjl0=;
	h=To:Subject:From:Message-Id:Date; b=cIMAKHFiTjDKIl41VJ0kkhxNlN81sd3woVOs9shpR7cZyzE4APNWjDm39KzS8P6hP71MiToH4Wlm1aZIso9lYUT7oiY5kdht4bw2Jdfx4Ud+OdFjhhyDH1trQ5ZUZP911Jsb2Bk7H2BqmpoQBv+bkcdnCJuGu+EROuEMW9f117Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CwEhfNdb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CwEhfNdb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7230C4CEDD
	for <ddprobe@lists.linux.dev>; Sun, 13 Apr 2025 11:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744544393;
	bh=2jXnkd240bdSBJsqdY8kGp/3JcnImCkAZmbmLiuYjl0=;
	h=To:Subject:From:Date:From;
	b=CwEhfNdbhZ5+TzFkMZKXK3kYXIx0T8VBndx2ZuEozxqYj2oEoTkj688OnHg0IjI/c
	 0uxPyulKQ7yFMvSXnP0jJ65zC89rRvI3MwB+Gi8y1OEodE/IxfylDrlbo/tU6rumd8
	 HDohDpbD8/7EW1jfyVqUQRUKdNA1DDH4LhuPNHl2ekY4mqDc6zxXqbZR/KtrA0s2Us
	 6KmrNKtV8w1ZwsJBA/aS+BNwJkaArEI957rt/cUS/Tgdlz9Eozp1cu0nr6Ju0d3Nv5
	 WdSJF1nj5Ekqt4bBtWJTINY+UFduubjvh+zuV/OAhqa44kyWWirJkgXOZByC60mutr
	 84d/AgBCX413A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92714C3601E
	for <ddprobe@lists.linux.dev>; Sun, 13 Apr 2025 11:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174454439358.15575.16386278633621398924.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5eecd32e071387f7fdffe5492ce2142d046a47674cf313fa52c162cf9c880e12
Date: Sun, 13 Apr 2025 11:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744544393
