Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31FE1221F2A
	for <ddprobe@lists.linux.dev>; Sat, 10 May 2025 15:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746890994; cv=none; b=cWH0DhKOW0n8L0qzVFsQNpBIWp3rGvGuwz7wB4lTO2XRwlGvOMNKr4FGsFWDhCQQS+3Fhei4q8hYUqrsce7jPAu7y+Kl7Vw7rWCdA7Xo1L0ytA8BrWlgeKW3nRoTbeBB3jQFfN7oXlSzldRF0HZKXnjux/epJc2EgZtT7CsXZ/E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746890994; c=relaxed/simple;
	bh=5sNbD94Sz/LnsFjFY0EtcRdvgqzsVXGErwqpY8L7HIM=;
	h=To:Subject:From:Message-Id:Date; b=rSiKLZtOCLFLufUdYckjudQWNcHyB8DSE5Q1bmijxv3Eb2tcuueVngfYPHSAjJLt9daXx0IjVl5fMZBWgwiHUEHYbGDd+Vib7T8vXADIeA02VZ15a7/O75vRUGIddJXAqWJe8wSDXNPwxQ6bJBK2vhOFkxAYcGw0OQpz0ym7CmM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k4ZX/YWO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k4ZX/YWO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A126DC4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 10 May 2025 15:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746890993;
	bh=5sNbD94Sz/LnsFjFY0EtcRdvgqzsVXGErwqpY8L7HIM=;
	h=To:Subject:From:Date:From;
	b=k4ZX/YWOMpY5+jxXEezDvKnScOMkfEnpm6rjZ21YtKFg/ff9GaLACnhjWU/LxhslS
	 17IPNv1H3apxFFpVTsroeDYH1ZnZsd/IjEFEYtB+LFnuDf0gYhkL7EEq/1h2MByoSC
	 h8VzJ6tzpMHBG/pC2ceSgzaZJMRLo2E6EcuSnIojLcJ2mIdpSsjRSlInnyCSCswjWm
	 tEPfxJDNnlE7AsqeE9/l/KHq+LIuluGD1nCHxUriTTwITKgM4ZUCjL0P276w9nHXe8
	 tIU0L1wgsy9wTMWwQJ4+5+PxVGgAtcuNCExr/hhgPOlwi7b1lLQsihy5MWYcIoyo3a
	 kgrdvK+wkou9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E622C3ABC3
	for <ddprobe@lists.linux.dev>; Sat, 10 May 2025 15:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174689099357.29296.9279155405788222030.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 806771ce319bed7268c05475aef81ef6168235b756ac36e75493cd1d0abfa33c
Date: Sat, 10 May 2025 15:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746890993
