Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B99315ADB4
	for <ddprobe@lists.linux.dev>; Mon, 11 Aug 2025 09:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754903994; cv=none; b=iEvFoSXWkGpW/U31bng868KMX9L4iANlTNV4b0RseGunZ5zsVZ8S/ELhQTnSKaJlBUJ7PkGENel7knq1RmO0AwS6eHZ0WlMqtjrQPKo+WyROc9p5CB6unOi3mD+5527UFi0TQcdq+5j0pjcCFWb4T50lUQzmZ/lPU/EgmKCWq5M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754903994; c=relaxed/simple;
	bh=uK4sN9m8Evuih1GsCbi69rvCo/SYoTvHMSGjQI6e/os=;
	h=To:Subject:From:Message-Id:Date; b=Db0I+buhcdiYBuh4gaDvJFoUYDJHkYxVoIC/EfAjOpy/aZByZY0Qn2+yrad3XRCcSjzi1jbfa0+CkX6wJOHSodlNm6gJLZW+LELbDePZxgfE9evqY2L+pEVyC7cqAP0644fFCv6BhXu6cPL6FiOmuaCeKHiWGVD7MAkgPLDlpD8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QQpPnnub; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QQpPnnub"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A059BC4CEED
	for <ddprobe@lists.linux.dev>; Mon, 11 Aug 2025 09:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754903993;
	bh=uK4sN9m8Evuih1GsCbi69rvCo/SYoTvHMSGjQI6e/os=;
	h=To:Subject:From:Date:From;
	b=QQpPnnubSDZ7mr3RuW7nj/eOu4AIYRkTe967k0HrddRyIe3n7I6o6sdCW/TUvkjhS
	 vlsqkrOT6PxZVr7XG2l+Nw1ez4rVaAflGHe2KzGacjhoRngKzFyCaYbidtGycxDJOB
	 yt+6cQV7BgBfsTwVX6KtzFirBdOE1Sv7N4w8z7Cno2y8stv/D22KlclV3K3jTxRppl
	 p78S52dP6VMT/mzp1rdxlYFhYNjVvkhZIM3JiAEetLWmVqT3LpppodD55R4z96ACns
	 A/VOpLONjNcoEL0hTxZtkxZ0dCCqsgto4OinOGpWN/2/ZA2B2oFSPHRh8c1q/9n3lY
	 dYhslYi3KNqkQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F606C87FD2
	for <ddprobe@lists.linux.dev>; Mon, 11 Aug 2025 09:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175490399357.20279.13957374235382696634.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f33180f211d65f75ffabe65ab3de2e5eaf2fba388ec576e8b2df04be24fc7087
Date: Mon, 11 Aug 2025 09:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754903993
