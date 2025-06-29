Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14E871E412A
	for <ddprobe@lists.linux.dev>; Sun, 29 Jun 2025 13:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751204394; cv=none; b=lOeVfYCnddd+L9R3Dg5mZhUQ0/gHVDJWjEVKX+5u+wfZKGqXq81mal+RANCSMWnlDCsIoyzHEr/iyIQ75fl+LFc+0dfCaXErhZ0F0aZMKYRHyOTUYtL53edptWNjd0Sj5ZFL4ZvtzLffoVq/hntfEVV9tHjK/zP2NP1MSkvN0QI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751204394; c=relaxed/simple;
	bh=1K5iIz550nEnnUgqmkq6FPE6ZYjWp23iHAF8FoIUJIo=;
	h=To:Subject:From:Message-Id:Date; b=CYpRNQ53QvGlZt0PPQ+Fe0SiBs66PExB7us2IECaiLIEQojXd90u/BxIkPwzD0IyADbNsk7XCNr5HbyXlEIBV3qVjQWKjpRGK2ln+/XNnM/jQm0Z64g8vlpfr2aj2lBOmqOkGYsmeFIDkQNoT5p0HFe9rqslyqqB8rNV3Azvx0s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sad1vQh+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sad1vQh+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A72F9C4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 29 Jun 2025 13:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751204393;
	bh=1K5iIz550nEnnUgqmkq6FPE6ZYjWp23iHAF8FoIUJIo=;
	h=To:Subject:From:Date:From;
	b=sad1vQh+7yeIGaLNkgz4TAL1kG8sUXS7sQSr2J9PzEc8xq6XuSfRe5HKstrXbPTOR
	 lTAKoc9++q+0NwvAtMmaU4eOfC5Z+XsnS/k2gqOE1DPMYdhHBimRFCuygn7DQ++vMn
	 +xi55ckuAYIWe1WSaVheasNyNGNUo5AUG9yPRJD/WcItXDDlhVraoZfQAviYTcHs5V
	 OGaCz3Y4tCurxI3odOHASJ4LoKGw1i2HCqrYmUlPnsjIRlAiI6MZoN9pXijEk0yUjY
	 jLKh/I5RXIL22USInfbFqkzhipc61xPD6xyjGWNIhWMdNhXKBHCn3uZoCtDyLiA17s
	 b8Y7eRT0mD/zA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91E67C7EE30
	for <ddprobe@lists.linux.dev>; Sun, 29 Jun 2025 13:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175120439357.1384.15766058883571889096.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 820da5cbd0d7a41f15da8f5f87dbf8b0daa8345ed1602962e78ea2f1f899a799
Date: Sun, 29 Jun 2025 13:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751204393
