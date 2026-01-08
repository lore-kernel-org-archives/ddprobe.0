Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EDBE31A9F93
	for <ddprobe@lists.linux.dev>; Thu,  8 Jan 2026 16:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767890634; cv=none; b=QouzM12RSy5ymnOEQG//EGKpHvog6JIUNPcvwOzC2Z90q2WKq9T7Lg7+B0JEtDTP7uecmlAkacLzi3McHtW0JDMVjP5VZg5ejzQF3/mh/Dog/AW0BUw8gKWZ7jn0R6MNTSZXv1W6Mv4FIfP8D/qGNYaTs12vJNirPvVmFQFH0KY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767890634; c=relaxed/simple;
	bh=XdMIzq+Ug7YjW5u+Y0ocHEl+frp2MDmNkf0fS8Bo7fg=;
	h=To:Subject:From:Message-Id:Date; b=nDd4zDu7O++DRbP6MRvb4I9pLwUwn50sOb9isfPqg8kA9Es05jS9UV71T7ByE+fTFwneUiZm7+LMmnFjs3EDQiqgmdjIo1g3/UciX8dy1tRhmJ1LIrYE9FobUYKeQwqZSp2oz8lSkN2BmQAIqT3saN+2Mojjc/PtnEk+4OWuh2c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WVfBlUUF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WVfBlUUF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D60DC116D0
	for <ddprobe@lists.linux.dev>; Thu,  8 Jan 2026 16:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767890633;
	bh=XdMIzq+Ug7YjW5u+Y0ocHEl+frp2MDmNkf0fS8Bo7fg=;
	h=To:Subject:From:Date:From;
	b=WVfBlUUFe6N9Ju9ohAEcpp5+l/CNYez3gW6WMBrppmAV2dyDkNu9EqjStYGrxodDB
	 PsrlPBVTeybh7TlZ/aJvWZ9iVceCxpsQ5/F93ZvtHRkohH/0eA4wGN+9fuAob/uWyN
	 5P40H4iom3TQM8W4kdoGQfmMm7Z206QttqKJN/90KRgg77CuufGkWnff25yuvIWr00
	 ks1dE/xjnrUwB1oMagOHbCbJfr7mcM6/3DufvX9w6mvJcrllzRSFKAbaDyPRmf/Cw+
	 x1MPw5fBZVpujStiCccc8NXS5LxWzBXLV/dEEztqEvLz8rinHwlOxBBanVbXC806nJ
	 1VlUbuZzYkrEg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F99AD1D482
	for <ddprobe@lists.linux.dev>; Thu,  8 Jan 2026 16:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176789063358.6429.5664571899483924881.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8c925d2add447724bd9f8822f2e3ba93964b2546c8da1ca9e061b09fe09f09b3
Date: Thu, 08 Jan 2026 16:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767890633
