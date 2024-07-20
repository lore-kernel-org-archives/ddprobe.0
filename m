Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33C821B86DD
	for <ddprobe@lists.linux.dev>; Sat, 20 Jul 2024 11:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721475954; cv=none; b=NaYuSmAoyionsjfdgg4fmW+t+pq7ia2y61Wog6yCcLyJxhpPLgOA9dzOYmvwyUaN9K4yQIU1Rdxi8MjrAwmghiAJFVCDMG4No61O28y2IoA3io3IdIgBF8k7hLXBYSK6Sx6Y84FsVi3JPXXlgOCwwlNHBjEf9zfoomNYdHL06M0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721475954; c=relaxed/simple;
	bh=hNJmCUoVRrH75lL+RkvYZ06BxA9KkwAYldnHnhlUMJU=;
	h=To:Subject:From:Message-Id:Date; b=qug02K/EwUNUROntEpTHAxPUKKUyMaFe8yTf0HdAf9FsstGzLiInrgWtgXdn8EKsVJpzftpsYRCxGG4LgP5v9272gO7CA0rWPCw/k1/J2df/lrAANtm2reqOhOFKE8LgZq1Xj9vDuiK9oTXKuutX92ZGInyQeWCbYCSKqgDebC4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jmQEJrZn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jmQEJrZn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4106C2BD10
	for <ddprobe@lists.linux.dev>; Sat, 20 Jul 2024 11:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721475953;
	bh=hNJmCUoVRrH75lL+RkvYZ06BxA9KkwAYldnHnhlUMJU=;
	h=To:Subject:From:Date:From;
	b=jmQEJrZn3Ahg3o+uc1TP8nnptCsaX/D62XAetg48rJZ1MhCChWhB4gr70fEP4lpF+
	 b4c40Ud2SKA/M9lZwNNMEL6yqLTSe3oYLJehXtm3djr53dkfljnFW3BjEPZuROCyuA
	 axm9q+Xg4as1E3WfMZ/QaDGWfNY7Zdr2+A62NhqL2OmZU/uE8T55VD0pGDBBXCtDkc
	 0doHGLY1v8OBVXzRsP14zmip8uXKz0EugUlszCSQj2wJyPPaADn+HsZSliKAmurdvI
	 WX3qAG8VqfaFVf+8I+ygGcjQQFygfmIuuXl13BAOdJFkLYskNPlW4d+/XV99795BKV
	 Tg22AImtKUb1w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 994A3C3DA49
	for <ddprobe@lists.linux.dev>; Sat, 20 Jul 2024 11:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172147595358.27887.14978148673443845221.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ab47861a572ed5c8ca3e830931c6ae4181842d86e3922212091c27b12fa9b2bd
Date: Sat, 20 Jul 2024 11:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721475953
