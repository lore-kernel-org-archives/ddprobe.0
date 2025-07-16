Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 404CB2F5C2E
	for <ddprobe@lists.linux.dev>; Wed, 16 Jul 2025 16:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752685194; cv=none; b=kAuNVxGlsduA9CEPek4gkLS8arqLaqNsJto3uR133Zze2OgeP7Uwt42B2ZvYkxAezkKgUFXmKk4eJRK76PKdrQiktozkhVufQhii0P5yyUpL6j/TjKhm+p26citaisImSlJtPpQzZ5pVbivvolmN8Sci71gJ9bhye40xItfeE2Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752685194; c=relaxed/simple;
	bh=ZYX0z+nxBkNI2bMGMSVnJy1tbcUX9TJ2QViN0VtI8Xw=;
	h=To:Subject:From:Message-Id:Date; b=qgKE5FGSZ+5OxtBblBkzubkK5FJ3XueFu+2Rto5EoD1GuSdOazadYIOVS8OSxL8xf1AW6jzqTavmBZ5CTZmKGp4odL2kVBCBbB4+3RrSbnfBNBR31ScvOpgGi19n2LEgpm8oTwn5uKZQ7cqWb+nublI60K6ivK5FLEKkLO842j4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G6OtHU5p; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G6OtHU5p"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5770C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 16 Jul 2025 16:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752685193;
	bh=ZYX0z+nxBkNI2bMGMSVnJy1tbcUX9TJ2QViN0VtI8Xw=;
	h=To:Subject:From:Date:From;
	b=G6OtHU5pD1ukRRT6ZikGqWgSDIjMz9UTAwiCkd6rOK/tQiTln0lsw+HOZocNhM/k8
	 tHJ8FEhD1YitAi4buLUdXgPwdKBJmCwBJYqaB96prKz1OtGYU8JW2meVmPAqNkZz7g
	 kT6f4k8ZMuOt4vAkTN8Qyd4h5uWcG9MyK5kwAZO0dZuEkSCrLZPMS2RhEdl9cD13Io
	 cmvpdCsBgLxiRaib0JfAnmBtJcdgMY5FV4OQI54ljWvD1xeJioaGi2KNY1RJeVE3h9
	 vCewv9uop7j5NI8iGfieHSj6CnV9MbTZ9K+Eu2B7GyvDRUbe5XglfjvtlSECKVwjtJ
	 2OPYvTEWT6ZtA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93F63C83F1B
	for <ddprobe@lists.linux.dev>; Wed, 16 Jul 2025 16:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175268519358.11139.7065047689016861970.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 99471b31f7d93ed6199fdb35d30d379e028841c312ce191d7c27e62ce01ab09b
Date: Wed, 16 Jul 2025 16:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752685193
