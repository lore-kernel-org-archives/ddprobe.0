Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 499063B776F
	for <ddprobe@lists.linux.dev>; Fri, 18 Sep 2026 22:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789770034; cv=none; b=GUB7gsniQGxJb9B75vbm0mq8XdYU03GLYysjix9ig/ws5kVeZo6JeRXoShLcGcxgauSqTGnf/QJf8UwnFYl5fwjLMI9xLYVXaCFt9NKAxlVmDND5ll+PSQWGpYugJakR9r6uVuP+/SbI2J12fDcLjzrEC1I2JrZBYcvBqcT6mR8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789770034; c=relaxed/simple;
	bh=fNpOCNxnB3T2EqD/g8ChyMeFGP6oFzjGg482T4ixuPA=;
	h=To:Subject:From:Message-Id:Date; b=HQk/JY2HYrsax72OuDyIKhI7BnJEFaoqDm1qcVDkMgI2JAVHd+zklEteu4VjCAEyHbQMvpy44C+oROOl2WYTxy55hFciZLNTuEqYDYGwuQoIOutaBhSNRcgBAu4PmM56dC1w7noTjMSOhtRcaVSMFa0E6fAwiLqwEIcnx7NVwG8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aipPj3N6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aipPj3N6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D230AC2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 18 Sep 2026 22:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789770033;
	bh=fNpOCNxnB3T2EqD/g8ChyMeFGP6oFzjGg482T4ixuPA=;
	h=To:Subject:From:Date:From;
	b=aipPj3N6rk6Wst+AwSGY1ULSV+pXgqLPo3p5L6nHqgqVYwM+WKMnrL5IqM7evy9Q2
	 YdGL5LES3FBve4gWo7Gu1IBsh2uYLYdXLEPtmwi5bDyCC26QicwQQn4vas7X4xQyvG
	 FiJrFRnrfUi1i/S3UNSkRdvCXnFkKLEvAbhHRoKOx/mTaalhPAwN6h7ziLgN7uG8RZ
	 GkZAMfx00NZOPhOjlMFqmkK21FZKWQh53YAmEaRXCrESF6D4zVkNu4cjMHNQ+y0hEk
	 yqzW5i9VQetaVDv3/GH9wb/Rm15yniCsI+L6fH/It5M0M3re+VdzWS/XhWAF24A5O1
	 C94hmhTHnxk0w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACA33C982D7
	for <ddprobe@lists.linux.dev>; Fri, 18 Sep 2026 22:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178977003368.13456.4659535178389664869.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: acd0a5e1409b9fd6f6d7961578ca419c13576f973349863d0dc6ec62cb738c9c
Date: Fri, 18 Sep 2026 22:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789770033
