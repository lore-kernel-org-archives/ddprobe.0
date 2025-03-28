Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 420431DDC15
	for <ddprobe@lists.linux.dev>; Fri, 28 Mar 2025 05:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743139794; cv=none; b=CvgoO8Q8ZVTmcFnfvEJRuS0ZAeQ2BmDCBQkHVe4He9PJ+SSm7MmRYoSZMQtTVW2tl8RrJwF4xn73NaZ0Omed0ac5AfCSAkbFXePHtEOtrJSSj2NTPH2ozFjVQ9oGMjqml2699seBIOc5DE4JpIU/Ib3afenNHc955ZWv9RRI2xY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743139794; c=relaxed/simple;
	bh=G3WbkTNbQCOpy8FOZrpG+U79/x4MfAwfio6rkcmijsw=;
	h=To:Subject:From:Message-Id:Date; b=l5ZRf4VUT3D9mbi2sJ7v+ZIwbsZFBm7xUfiwNzq+DLQpPwl7desBuKRPq4dHA0aP/e8w6HjuApCnuPD9VqYhYUr6SShmXov2IrrmHxutPBgpqkBIWCWVIC0QhEVIkNRormVLxW8N8RmZyYpvNuqpNSVbMeMsObEWMu742KXteRo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=d634nBt9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d634nBt9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B726DC4CEE4
	for <ddprobe@lists.linux.dev>; Fri, 28 Mar 2025 05:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743139793;
	bh=G3WbkTNbQCOpy8FOZrpG+U79/x4MfAwfio6rkcmijsw=;
	h=To:Subject:From:Date:From;
	b=d634nBt9V8U9Z+hID5JIDnCZe8Gxqv0hP326yfdyeM7osX7Pv8LbpEyzCuUkULlL3
	 Tw75hji5UCVDwOxCQIz+ZNM2vKyhlE8KNSHBCjM2otdo6REgUK+QhYkCHDlqhi4tYC
	 Bn7OXQM0G/lhe8Xz1yG3wlw4+IHuZtGMSu54nSdZxPe4SSyq6a08adT34p5FBDo8EV
	 lyYDpQQSnKyW0LfmyAnL9FY89X+sxYGUyduZvcgKQOjVXoOK+cZjDuPGju6nId8/LT
	 JCbE9hHgSdwTNTd8vGpUaUfNzDTfaCY+xRmClufi/8TQS5Q9L2Iffg7gXtmbR4C249
	 LEe5Ta83QIiPA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DA92C28B20
	for <ddprobe@lists.linux.dev>; Fri, 28 Mar 2025 05:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174313979363.24504.4599944482248198716.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1598931fc714ec7138b8a1d67c9e402749e4a22491abde8e84f5d905a08dd30d
Date: Fri, 28 Mar 2025 05:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743139793
