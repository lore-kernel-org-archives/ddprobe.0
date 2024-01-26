Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 109541EA71
	for <ddprobe@lists.linux.dev>; Fri, 26 Jan 2024 16:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706286497; cv=none; b=pWWCdO2TR7Pr/vaFHsVGWddkNpF7nxJr9uiIigX5wEj56amYSSxI8KMGXEqVYNBSMaPn+zpYXU4gMlwMyYAEFQUGGLi4b7xgnPKj5TVE/C28w7uW3OTz51brGgXSgfZacs5FVSDpKRc7KDVZSdyKjgRYXWH4o5/6IQrnnhCcq2w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706286497; c=relaxed/simple;
	bh=jHQUGnFvdb/1EhogpjVPyIO4d5czC5yTNG0w3CAcaLk=;
	h=To:Subject:From:Message-Id:Date; b=Msg7S7wojJ8aTfcJZfmtZa7EKooe37s6AjIZQj+N9JbjE8ohEyqWSiLViKArDlufUXsec6ZP5BEy6ZKLzmiWOikf3/JSR+uvO7AnOH9nOZl+5PL6Gf/jU9naZJbZlCv4dMRsCwFZjWfNWOm9jAgRsDyV464WpVPtfJsHu8adEgE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FYWTWEhl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FYWTWEhl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7BFEDC43390
	for <ddprobe@lists.linux.dev>; Fri, 26 Jan 2024 16:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706286496;
	bh=jHQUGnFvdb/1EhogpjVPyIO4d5czC5yTNG0w3CAcaLk=;
	h=To:Subject:From:Date:From;
	b=FYWTWEhlOX8wRztqLanm8NqMhvK86lWN7Ki/HJL6QJxvfgFLC26dteSIe/ShXowYW
	 mhVEP2+Q4edC48qHoKXWaKrKiu4O/gSWyGP2vL63iaHVuEggqsEs+AauTxUPvZaHbe
	 yMawKCqpk4BM2i/334ghBI2NUi+8EAThTLGP2RAfZhTkbU+N97K2DKlSAOy2OzKI10
	 GQfgUCNsPl/QTAgSp4kmyxLgv4YoYdf3bIunPl/gASv7d/H508rOIa69jUiW2M9l6d
	 hCBDijN25XAfzeBoi16AmolbIl3tPzQAXLHB7IoCPWWMzCk5JCCdFqVLXhtsJ1Y1ul
	 MEEivPM/2dSjw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 62F2DC47DDB
	for <ddprobe@lists.linux.dev>; Fri, 26 Jan 2024 16:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170628649639.20811.15595790202914272739.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e1a46615a7ba960fa4edd2d9924b479b391561de1a24f25f4423416bb7eb9323
Date: Fri, 26 Jan 2024 16:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706286496
