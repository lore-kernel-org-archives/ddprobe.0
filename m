Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C7CFD22069A
	for <ddprobe@lists.linux.dev>; Sat, 20 Sep 2025 05:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758347993; cv=none; b=BFUnpwlPoc16TK7vtMmFF1R1eVV52sXT3UoXZhCL6FuKJ+sWrbu7v+FO7LBppY3slGd4/yiyJPY5B8uOCcRycVaAi5YQB8o5WEs+z9HJJ5+YpTvnf6qaVmbwCXbRxgXS6DmDon5a+pNFkftOSg/qba1SLMVU9muNm4VKPkhV2TM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758347993; c=relaxed/simple;
	bh=EAWvRaqjOtg/emcRF879idfi/3LYAxR2CoJDJpqtunc=;
	h=To:Subject:From:Message-Id:Date; b=hZyhG+NB8RFNB0TUJ3+P7uHOV1OvFPR1pgQ4/FiWxo0icQklecLpdL4vl+YF2G+zu5L3SnyjRbT4vVh8x+DdmAOfmE4km9XUh2Pxpc5zqmI+Q+Sv9GL1DpmyGvl5XbHrjT8YBCbspVtWwaS0Ikw+7hPqjXdvrsRdVYgavTjTngI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WUHPq4kV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WUHPq4kV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DF21C4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 20 Sep 2025 05:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758347993;
	bh=EAWvRaqjOtg/emcRF879idfi/3LYAxR2CoJDJpqtunc=;
	h=To:Subject:From:Date:From;
	b=WUHPq4kV3LQaGnhOPZeUhk57GM3CNAlegqVk1VbZ7Xoc6B2ssRXgrIR+FnrO4VWQs
	 iWtb/qXhAgJJ58AoyRqdnv1eYcCl/fQYzDA7kGfBEWZfrmTaic9lO6GQEmkjwS/sgi
	 7J1ErI3YQtHtPTl3TJJJipfVNaNoYdw8Fc6ZSNqsIAaMFtB86QzQe9hn+aNm11lS2l
	 8yuDgLtNA2S4xs9uDqiZXThaLDYWpoxV4UnOx8YnkyVdmtGf/JFLyZ7GTXnBdooi/0
	 4WoC/XXcDfQyTf8J5ifP48c5YAcEsuiU4hFJvrkwlr5sKvca7TtXmXuh2ijVChAyxb
	 VaZAX0yWV2tKw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FAD8CAC5A0
	for <ddprobe@lists.linux.dev>; Sat, 20 Sep 2025 05:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175834799358.27623.3878839284183294774.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5bc0914bf4e77d9b383eb2cbf9cf745b89d2c55b55ac55a2294c51249821757f
Date: Sat, 20 Sep 2025 05:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758347993
