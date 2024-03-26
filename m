Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E41C12C7FF
	for <ddprobe@lists.linux.dev>; Tue, 26 Mar 2024 21:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711488497; cv=none; b=dDFhJ8rtXTtjrDXvFvX0cYSOZGWf9i9EiG34mF7TvsBXGRVH1XdMz3KeZ+scMpcZqTLvOSNkadf0VEyYDe8/gxmAzpawwK2JhaSmxuwG+ZLSavb+0u5T9wQrFdVzTAs1MA2LWUCp0T2ZxkNnDvELyT22tnxI0ldYCiTkpBfZAyU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711488497; c=relaxed/simple;
	bh=cXap9kXRMcWazUAoQGnGtPu8C6dQLWjJP516aYBpOpo=;
	h=To:Subject:From:Message-Id:Date; b=dJJ4BRYA9PdT6Sycr8DFKCJk2+HYJFNvkSCrk5H+KKi/rdl6wxfv3zgbP4NSmhpMqpxJ1zOAYnIYTpWEHxZTevMRzcVimsbeKhevumYCE/AFsl8Paw4aNMlMwYZfTTowqC+zmgQnzRO5KW8BMQoauounyriZhZc9C3kTggvSuSA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=n2VMgCN+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="n2VMgCN+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8FE4DC433F1
	for <ddprobe@lists.linux.dev>; Tue, 26 Mar 2024 21:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711488496;
	bh=cXap9kXRMcWazUAoQGnGtPu8C6dQLWjJP516aYBpOpo=;
	h=To:Subject:From:Date:From;
	b=n2VMgCN+KCBlu+OXdsvjv7uS3U9OB/PA3G4URgMLHWAv9OAONuQ5VVWUZOcgGecUX
	 KWoJItU7FFie2RTdzRUmGGyToxgT78791fZpumpzFmBo46ADw13zIxxAVtVKFu+foh
	 iCgv4CfX51LgaO3TM34bnr1WTP3ABnJz6zOzcxJlBnNI+2609cUqzU+Xki7NADaPOR
	 mV0Gd1QGincpwJAcSt2bXnApfz+v+4gN86mj+E8THZy2tadWHGclmEYgLMwDyp/q/C
	 fpWhyuT4T/UHVYQOkNufhHU31nULTgIasvQn2N4e0Bb0SC789kclJ4gu69eih5O90+
	 /2CUdDkPLfzCA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 796D2C54E67
	for <ddprobe@lists.linux.dev>; Tue, 26 Mar 2024 21:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171148849645.21740.9712775245255600718.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 74fddf1c215e4df5a7dd60cf8d2142a4ae334963844e7eacb78029076dd99c82
Date: Tue, 26 Mar 2024 21:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1711488496
