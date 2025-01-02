Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14DFF7462
	for <ddprobe@lists.linux.dev>; Thu,  2 Jan 2025 14:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735829754; cv=none; b=FXSf32q78oCg9iSWMfIRF75rJGape3LNYGv+0C4PaNNSS/CZlIPpRzdGSHi73dstyID4oVd00uqr+obhzlWlw0nIewjpxrMmOVaK7Da2CEDNuFgno+RTq06r8qVnlLOBWm/OtVnpWoutknME4PwFb/Gbh99a9lUQAkEpvSF7Y3I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735829754; c=relaxed/simple;
	bh=oGMyqPRH0ljybAd6HwaHVEUlVJu4/iQ20RYz8dNvE9M=;
	h=To:Subject:From:Message-Id:Date; b=CTjjme28qkaV9eja8GeDh0KFW670RNVK9GJnAS4mAcx4/X1yVnZUR8FnScuaWLyKk5uqFLdYqpJG5KFAk9zbahOGa3fU8ajBcJJN6MJ3+x8lYxTAOpQt/Eji+WJvedA7KBECpMt4vrjX8IJcfyrA3UgR4FZ7/vkMnAENDreUpLc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XTtnCoqL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XTtnCoqL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE2FCC4CED0
	for <ddprobe@lists.linux.dev>; Thu,  2 Jan 2025 14:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735829753;
	bh=oGMyqPRH0ljybAd6HwaHVEUlVJu4/iQ20RYz8dNvE9M=;
	h=To:Subject:From:Date:From;
	b=XTtnCoqLCVavUR+YcFD1UJo67kETR8ILqiZrLycGucG9duc78h3bUWa5FoqK0YIZx
	 MxZUEoRwvnwehLoWqBSLfeBibt1ipozuk50RdzraSI1qY+xCwOxTfn1kI2eNY7BQ//
	 ZbrX37drpvr5r25zwJFcoIv+0jzCv1RDhhydGP0wiYc9eMtZSikwaqURC9lAVtcKU0
	 9lEbIvlDBDNY1e7K6BmgIcCDMrICSF2uYcns6p6RXiUq7e2JoHky2wDeMCkacbEUYt
	 gZRqNCHzKrtNnqFzsFjRXDfMQ6LJV+lnj1DIsqyIsbDYFJfTAMCa6oHw8EKomBixRm
	 0+peOlaWZrU2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9907DE77188
	for <ddprobe@lists.linux.dev>; Thu,  2 Jan 2025 14:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173582975361.15676.11757367351295394020.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3dc6b325b331a868fa5f828d57a40439bf759522b167d48e1bfa9bbb352666c2
Date: Thu, 02 Jan 2025 14:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735829753
