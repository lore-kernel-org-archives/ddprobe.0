Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 031492FD1D0
	for <ddprobe@lists.linux.dev>; Sun, 18 Jan 2026 18:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768760034; cv=none; b=cktXm6sDY9QWIPNSmlyI6hlBXIKg3R9qQ6Ol/Wt8nOLxDfNmv8oZZ1w6CybLiq0jQuhLwFRNaSJW3Jnp4fYIXi6CL+QK61tL+3x6uHLYHHVqIRO0tnDj2aLsfLVbIKqitJrxXqx4wN2TDZlzZ1RHTAAymwejjH3xWzWrR2S28MU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768760034; c=relaxed/simple;
	bh=m9HCKiaMUue5w1wv+ZVLDGPK/ZfE3UEOde1kpDcSXjg=;
	h=To:Subject:From:Message-Id:Date; b=Y49RcIMIRIA4XgLa+cjB9RVRJGGgn6AGZHX65h5VgBRaaaLLEzxfdN9hqvbFlz5ln45S1HHs6v8mYWRqKQFO2ZPbhZaoI/O/GHHh5+FW6jTzLx70YD4XjQ2Lkz3ygSe0+I7ZddOERAOGeKPznR9yU4A6lH6KyLab5BZsbFtZMFY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NJJ9QdMO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NJJ9QdMO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FF2DC116D0
	for <ddprobe@lists.linux.dev>; Sun, 18 Jan 2026 18:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768760033;
	bh=m9HCKiaMUue5w1wv+ZVLDGPK/ZfE3UEOde1kpDcSXjg=;
	h=To:Subject:From:Date:From;
	b=NJJ9QdMOB/IPBFhFoBDbmKsaY0hq5I5fn2u2F6YNIqlN65CHmgPHXuA1adj5yf4Bt
	 ajQnwIgO9bXSISBi3oTr0htVjycXWS5PPVgbkZ/rw6a2qtIGajeoJLI66SP1LKch4M
	 d4q38kbYRnTYDYperNFhcwjvlz5KQ0CPOTKdqBblEs5bQFp9obl3PKuzWZB+h/fGca
	 dbx2gUq7VoNqNOYaKoQfmoOLkJ8eB7f/tPijm9ZwViyDpllHWEmvsW3GtBoWw9gtcF
	 37I6tkyHlGNX9U0d02tO3b3knq3qRNIdK16C7/0xic6N1Mq6GLcHYuTO6ZskP0/zRO
	 SA4Fs5aRtbTHg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 920F4D4A5F4
	for <ddprobe@lists.linux.dev>; Sun, 18 Jan 2026 18:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176876003357.4041.11886851000995386962.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1b2668c0f0ac424f7b32bf23df0d8bec42d1333ffd19c836647819fac250b566
Date: Sun, 18 Jan 2026 18:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768760033
