Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 180981547D2
	for <ddprobe@lists.linux.dev>; Tue,  7 Jan 2025 10:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736244354; cv=none; b=tBuJmir20hQEStDtQL4c6HL0NvW1hg6hukIX/58X6nqo8CKxPj+gcwCyjn+W/lbkt4IO0sJoHunvEkfIe507fgeucKju8CsEne03vyOuoIA507fFfzevqcTMmPUchafj8Kb9XPgazwVHvrCV0SOHVzrW5/638wvbG7iACyA5IKk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736244354; c=relaxed/simple;
	bh=08BL6S0XTzIRYQuBSz9lZorQQpWLYbA/1zSm1Ix7wSk=;
	h=To:Subject:From:Message-Id:Date; b=u3J5mxNM1xBdtdgCE14q+0TfmAXxA5JgJELpE36eZZIOOO551WlbeiCid6eOzFmoYNk8l9mn4CyztB/Ulz/AYpZuBx2e58lZ4LdsFNL2hqPG10fqkceusDgrOBmfhWsQR6CLtvVIWqpF3PAKcUE7tOF/XqDpo5ffKblFxRqLoME=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jPTXcihs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jPTXcihs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5DA9C4CEDD
	for <ddprobe@lists.linux.dev>; Tue,  7 Jan 2025 10:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736244353;
	bh=08BL6S0XTzIRYQuBSz9lZorQQpWLYbA/1zSm1Ix7wSk=;
	h=To:Subject:From:Date:From;
	b=jPTXcihsHd8DkFJte1frmH/jJyd8rJryTaXB9fZSLi7fCpdnVQY90XBc2OkoUVZ9G
	 5jsQBpfHTD2nH3myfIWmzqozcV2eHc/dd0KW90TcwQL36tLjNE8L3dvyWu2+CCXY6b
	 pHvvMdaQz1gwkM1j0Fwaz54O92vUoUi3UNlFLaurTHUqgVOSrpdKzu8ay4YfmSQj+I
	 KT1jWZkU57AGJrQoSi0ACOaEV+pKKPdKcKj/kE/+lf+XtHsPuxBVyB52/8nfr6ex5z
	 Q3tkXk9b1aKN3YZuaHQfpFmDMAJg9Hw9yxLGiLlx23K2rZIAltuC4Hrg66hGvcTDnE
	 tAizu2avyXY4w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91425E77197
	for <ddprobe@lists.linux.dev>; Tue,  7 Jan 2025 10:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173624435358.7741.1239483493448647883.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3f28b5ef6a1ccc37c8589d263ff63e200bd730ed12c32a5850b905a98cef9611
Date: Tue, 07 Jan 2025 10:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736244353
