Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D46113A865
	for <ddprobe@lists.linux.dev>; Thu, 28 Nov 2024 07:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732778754; cv=none; b=ngt9VQlyqMNzBmfbFDH0+XR6RAwMS4YdkboMFfG9W2YecGOglfGWlcVMHf6gyDWHuyE5naATqFQPuzuDvjjpCV5Q8erHkp75lZrfBLFT49JmjSgL+JmwyAkDpN+/MPtX4eVo5N60jIo+99yUY4P10awrsjFfXyfa1XdF/7qYmIM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732778754; c=relaxed/simple;
	bh=DafZxrBneiJ+FvNaEL9S7s0zXes3dsPDspX/caWOhKg=;
	h=To:Subject:From:Message-Id:Date; b=Krd2M3cj5I0m3g0efCHPD3vNmSnNxZePtPy6VSoyBHCmG0XfKWGbt9tShnfgt324F9O/tU8KUJq7aYvzazolVKr7Ah8KszUGKrr43hMbbYxLIuLxi7UstWrwDfsWuDbJ0EdijWJjiMycW9o+v4SsJLvW8pl9Rz+mGMLQvWjOyZE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L6V6e7fb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L6V6e7fb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1CE8C4CECE
	for <ddprobe@lists.linux.dev>; Thu, 28 Nov 2024 07:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732778753;
	bh=DafZxrBneiJ+FvNaEL9S7s0zXes3dsPDspX/caWOhKg=;
	h=To:Subject:From:Date:From;
	b=L6V6e7fbxcM7PTe83iYrn7fKqA/9i49y8P2yluY3c4iedGeRq/hOVBpEKtFgQuO7a
	 a9R6IhfhVh3SmBN5EhqDY3Dv1Lq+2KmuDLmv10t8YmX0VVOxqOTFGcPXkZUj17b9pp
	 /UD6yg8ugaUiQm505NIWH0jJc/elVL1pRWX94Dglj4mwCFODfZfaY1JSHGS+txwuvS
	 wpnOArepbSIv7XMm0DAKT7GeGtoF2sBr2Zl7F3xnfQqvZxv5d3nvSXE39OgfdCah+y
	 wjlFnsdfM/giDivdMBp+X2FOK73vtxKjzAS3/ZLhTkI1RZfYh2hKGn0efUWST3lI5K
	 UiUXvBG9EAUjA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99AFDD690E3
	for <ddprobe@lists.linux.dev>; Thu, 28 Nov 2024 07:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173277875359.3622.5417685106587787289.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3925e0c5140e2e1b1d47a537e04e7457f20c4dd013915fb45bd2ba6d9c2d9042
Date: Thu, 28 Nov 2024 07:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732778753
