Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 232CC3612CF
	for <ddprobe@lists.linux.dev>; Tue, 16 Jun 2026 08:06:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781597194; cv=none; b=mt/tF/A35M8VPFn+5on3BAeZlIjREaASY562oV0lj3CaivkZNvo4/mYv9P0vfCyjDaMJ9zOuOwSQ/OD8p3cus7pM2+agh0OrTvfm+xSAJUxRx9G0M/3fetUE0wnjNZ31CSByPXsdu+HC5MRJinGaivibL5cZnonn3IhDJml2VWw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781597194; c=relaxed/simple;
	bh=11z3MqfJJnmwSGz802W/8gvJ1tZwlYDlfXf0zGYIDto=;
	h=To:Subject:From:Message-Id:Date; b=ltcWl1EOJdAnbXtsa61rkmfO5XYQ+FGtncSVPgifcef5DIoVkBkuMtj25DL+CNNFm9DDadTZg+MuucLGHvbZamPAekc8rqGw/eiSznY+zCMXn3W8G5igPLXb1oeNclRUQD/YX53eE20xsLqJfD2adxRJSO5yGwBgcugPdKp0Ha0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SCzEpu4s; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SCzEpu4s"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8DEEC2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 16 Jun 2026 08:06:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781597193;
	bh=11z3MqfJJnmwSGz802W/8gvJ1tZwlYDlfXf0zGYIDto=;
	h=To:Subject:From:Date:From;
	b=SCzEpu4s24jjt+Cse4O3gsof2UagwwI7iv9QrS0FS7tpzEQATjlefFS/wYMLdjrTT
	 zarEczHoCxnZHOpkEvEylQAMHwvBXpZ94A9/eu0u1VkZkK2qNDuNwK61mPAwXOeTgg
	 JEO23pJAGjw7cVFmmotq5FEGrAYZoJPrbrEtITdUYc5yrTcips/SOmWHUdJhHgx7Q2
	 oavK8w9ijmOQCFaUacIgMG0Uu0BHhq40OUUbZ+R1nz/TSMEjox/xo+7mVn4oAuvAzv
	 9/0q56nyWpHW56rx/WcstaIdCppF3xSwLflG7nXjVz/4xrdDvQo7rsK7Lp7wNGQL96
	 s4M/hVNIPW96g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B85C8CD98DA
	for <ddprobe@lists.linux.dev>; Tue, 16 Jun 2026 08:06:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178159719373.19440.5178681999674175934.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 446bf3d2a9c8d744f9441f726ceb574ca91c5841c635a3ec41264e5f353108fa
Date: Tue, 16 Jun 2026 08:06:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781597193
