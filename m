Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 456B839DBF4
	for <ddprobe@lists.linux.dev>; Mon, 12 Oct 2026 17:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791826834; cv=none; b=MBFhUt4PI50Cn6PDkpVV9MyuIDPyLOQb3FBw3X6S/YvM6Ns7sBa3aYbnrYbPOgGNBjnMPUo6uKfaUGOCpfuUR2gbwGqWG1VHPY5iKPvVX596KSedhdwDdWjMdQ2u5tXXU7bJkDUuvbz27mz01wwl4yBfSm8nuTuCEyRglDgv4j4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791826834; c=relaxed/simple;
	bh=DqvbuLbuTjhl0AKWnK/jq+73WMyat1AymPJQKp8uh1s=;
	h=To:Subject:From:Message-Id:Date; b=XSzwdYfAVkaCB/DAsYBSA45CJ7JOlm5TI+MbNbBUHzbBy8t/Z/P6nC4tHv0t45mP2PEddUNszKG9K6CXVAe0wWf7Aa4YrzseoJfqatvK9/+0ZjfFOgHHXrV+4jMF5r1fgXXjUORp1KvWAjorRw4tquhu2qbOZSvV+4jq2IhHdBU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cGirFOmi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cGirFOmi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D178CC2BCC7
	for <ddprobe@lists.linux.dev>; Mon, 12 Oct 2026 17:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791826833;
	bh=DqvbuLbuTjhl0AKWnK/jq+73WMyat1AymPJQKp8uh1s=;
	h=To:Subject:From:Date:From;
	b=cGirFOmikQT5WBzbnzpoJ0w4ms92zR7WCEh83ck0nRLBme78eEXrsVppyvg2zCYRI
	 u06OfTaIrin5lxCE3pSNQys+hC7joJ24gRHce0S3XLgU3+vfwQTx6dJ6TgZw8v1K84
	 rSWkXKpYr4ifTfJMfJ5WHw7zk/toLqPKbfayYGc1tAwWchnN8PF67ftbQdv2cRit3x
	 4sk+rJCDXWZPUGOj/dpOuBhC5c1ia+zyJ8UcN7FyVoEaxmRSKkgnpRhL0ON0rQuUo8
	 eojY3uE6Gk7MsZTqjASeGMozEMPzMaetrUwQjpxOXwb1c25C+3GmV7tMXaWf4pDwFE
	 mJQgM66BImEmQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACBD6CA9EDE
	for <ddprobe@lists.linux.dev>; Mon, 12 Oct 2026 17:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179182683369.8771.3847914842240887615.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c1df88956feb9c3236825cbef06a8f8dcd20f2d94344490a97709f8e1e13605f
Date: Mon, 12 Oct 2026 17:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791826833
