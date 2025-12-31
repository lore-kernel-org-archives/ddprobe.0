Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52EA1312801
	for <ddprobe@lists.linux.dev>; Wed, 31 Dec 2025 08:43:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767170634; cv=none; b=YRFsjJtOZK6jLcR5BJs3sXwZ1upBpGUN4iBjGkgQc/H8mcDOqFJkM9dWujAe4agUw8BxzFvPFb7cobYWAgUplmqaQX5N96jh+/YIaFBFQ8C1BEQxRCa3Fhg9yGemIakljrl92RQBPeD3SnpDNmIi8fYmQQ7Xuw6wyDUYrfy6oFY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767170634; c=relaxed/simple;
	bh=Te5WALQMni8JhN+0TD5M4Y/fgNmqI780S3mBbxj0CPk=;
	h=To:Subject:From:Message-Id:Date; b=hbzqDTJpDtyskQhIJYjYxia71gm3ky8Q8LtPFjtushMqecrfDd+wJl5J0ta2JEwSWbgE+tkF7/1aLSANnPC9hK7zE0mtduiaQEkNvCprsNhPxdSzK0YadqQXnJjC0OqZpucl3CBYiZbGMU9I+iVHl+Er0PtQodCH8etMaAEs0/8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZMdvfaLf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZMdvfaLf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7424C113D0
	for <ddprobe@lists.linux.dev>; Wed, 31 Dec 2025 08:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767170633;
	bh=Te5WALQMni8JhN+0TD5M4Y/fgNmqI780S3mBbxj0CPk=;
	h=To:Subject:From:Date:From;
	b=ZMdvfaLfhJ5+WD+tB7E8qt1gA0mrZmeBBL1Zj6CKqDMXzmfJZPHqeJ8/BwTmwiQpj
	 MupLuLQep1WYXhQ/t9atwRWWbTL7jE01XeCZ19/Mo5qpKGzNBV1yNh1F115y0I/xSl
	 PPbAioWnH7B8DpwyerI+RdHJBnum7bfSAYBIoIu8edOSTm0weuqNKytO9PU6zUdLrs
	 lGM7d5y0m6kogRXaRVddmi4yR25+Q2KIZkgoHvX4Hrhjbrv5TdlpW20OxjhGEZKB8y
	 UJzUbSwOyMtP6c8oey6O1btIqTrN87siCjLDFUSdyLCuRrLM8Fjuc9VG6ij1mFhl43
	 ksAt60Hf93HVw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95AEDEE57E9
	for <ddprobe@lists.linux.dev>; Wed, 31 Dec 2025 08:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176717063358.9165.16689127370688736006.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 50f1e7b5b98f49a5be830d7ae1f895f33bc2822c82150adf66480fa8f6e83e34
Date: Wed, 31 Dec 2025 08:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767170633
