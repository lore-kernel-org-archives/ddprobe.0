Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36A41282EE
	for <ddprobe@lists.linux.dev>; Sat, 26 Jul 2025 17:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753552794; cv=none; b=iWLpidDLx2DeSlGahFC4Fiemn4jetXJpjFX3+BhS3yhuOg5vOgE/bDk629IXsP8MY+l5eEE4KL2sPm72ZUETwg5dWcPo80On3PXEnVF+iXCDo1vrWgxwakHoDjYZssk/7ZDTR8Iw4ifx5kzZXQ5zDPf2WpkK9t8NUX9lMo3nKRE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753552794; c=relaxed/simple;
	bh=cQ61MExG3ahRCsWq/nsFGdIXY1hagFewOua+d5pVhdU=;
	h=To:Subject:From:Message-Id:Date; b=gYem6X/aEMJ1qgpzR8k4xUhZ1XaezmpvCdA4KITRkksapzIsrZSBzjQ3KdtUWMf/EI5CRslv8HdolS6Iv/NNASImUBpzDECB9dAgaZjVm5aUfChs14cz+oxT/wOprqBdXMCq98Zlke+HXEnAy0kFX5K9zSa/PRP38Edg5xiY3JU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QgA2pY6a; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QgA2pY6a"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7386C4CEF4
	for <ddprobe@lists.linux.dev>; Sat, 26 Jul 2025 17:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753552793;
	bh=cQ61MExG3ahRCsWq/nsFGdIXY1hagFewOua+d5pVhdU=;
	h=To:Subject:From:Date:From;
	b=QgA2pY6aZ3JPRbz1LxUqseqTSMGkJEagVbNeiRhFQKcyYrOdS8jRMlsIst4dZPZLK
	 SHWHghtkXRN/mlMpjceYJMGZ+Gt6ixf+7WoYQL/0rGfaiImHzhIeH9mX8pXDGJcROq
	 HiSNN6S8tTlOUMJGW2XlC59taFnGcrknJz/6Ord03QjCkd4kTa16qjO3zD9KMmdfev
	 DgFBpf5qgDaviM/WkrdRlYHi1iv4wRADNuL2KSucqw5zPXGO30yOe1FnQqBJj/IU6J
	 FD78mApRsxN5Ae2Vm25LSNKlGS6E+hi1W795Q1pHyB2ZI+4W+tdhgKUmaAjUUerS0d
	 pbENcGgT0OxTQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95BDEC83F17
	for <ddprobe@lists.linux.dev>; Sat, 26 Jul 2025 17:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175355279358.31163.18276677308627621352.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7944075655a71356b080c472cf81ef2ce0ac5193cf110837bd7effc623f16c17
Date: Sat, 26 Jul 2025 17:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753552793
