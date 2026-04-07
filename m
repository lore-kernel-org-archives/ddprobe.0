Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 290C730E85C
	for <ddprobe@lists.linux.dev>; Tue,  7 Apr 2026 02:15:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775528134; cv=none; b=bhnlx+KrydrgYdSz9JfaS/OlFjoZrEqkdvbvL7Qp/VukNMnrQFUuOp9tUMGsqaVN2AI+NYEBQz5IDmbhqjUtJ62qqMJF00WYi+a0+tLNYHNUcSTs46wX7Z/R6RbkWfEIra1YpnFwKt8d+B0Xl9TZezF1ukKhLM8hXcCnghh8Vlo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775528134; c=relaxed/simple;
	bh=JcJAVz55PQDj78hzypiOIP3huDcW7BNiHKQv7gl6tNE=;
	h=To:Subject:From:Message-Id:Date; b=bS597T1KzXrOyTyYxjkipD+e4DdUwTVaBCq1f53eV9603obPMVqQu+bE2mSHEWtrTcy/4UqXhrrNIdhLgAds6PoCP0yff4eo2bOv4WIG5qiWXm15eUZZAkloXMCo31hEc5CnczbqZd2UuTbxkHYyWAbvzWJVnbtpvokWk7VoBZQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JORguZci; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JORguZci"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0C13C4CEF7
	for <ddprobe@lists.linux.dev>; Tue,  7 Apr 2026 02:15:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775528133;
	bh=JcJAVz55PQDj78hzypiOIP3huDcW7BNiHKQv7gl6tNE=;
	h=To:Subject:From:Date:From;
	b=JORguZciQbYXQbPqJO/wURdPZwaOj7VUyGTNPRGEotFJ0Dhda4vohByzUPlD2fFcC
	 q08mtsYXzo0JGkgTk5s2nH6WlyhvIbOqrjFwtur23EwpO+f6MtwWve/dCF9gtOjkrm
	 fqKWIzxO5U10MKk1nDSovaLcQVHSIv065na2vK+wm6kTajsoGmLWqmkow6jcCwYLM8
	 yqMoNxE+GMbt7i0WGY6OcBSa8mb569iBVV7StgHjUnJyH2Q3RvhEB8Flb7xdb7C9Y6
	 mJ8F4Hvy1MEL14r+XRE2WSfNpBMphEKgX89hcAjbZjNmZ+72s1oGiEWbsiVCTmjDdD
	 m9SVHY5ZU3bBw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC12EFB5180
	for <ddprobe@lists.linux.dev>; Tue,  7 Apr 2026 02:15:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177552813369.17931.16726784797478826057.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 72858ba373c63c1f9648e142ae5a75c517ce16725c3f477f0444d1de6d57da56
Date: Tue, 07 Apr 2026 02:15:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775528133
