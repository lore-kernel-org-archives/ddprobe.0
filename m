Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 141F03AA1B8
	for <ddprobe@lists.linux.dev>; Fri, 21 Aug 2026 20:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787344234; cv=none; b=Imc32mbM5TTicG8MwxKldwkES+hWraG9oP+7J/G/wc8bj19Qlwc1xqwp397t/ZD9bG++h6E0nspr/DGcf8G4l9hK1WFGx+H3QPf+C2uQOGxeFpZ/Rm9EWu4q21jPn5HJoLg9PQrdrizCizp7fxrfefVY4Wlcegf/YCB3XD7JPOA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787344234; c=relaxed/simple;
	bh=aAYKA4JVGE9EJTO7SpReFbyZhHp8MjVUFF4VKjfy7nQ=;
	h=To:Subject:From:Message-Id:Date; b=tPmpX4OihBNo1FNDqsWbm998xbVVN67kjdGkzy7xbeiruCtGEfqF+/JrEgtB1VOznzPa5QV0RwhH0Y9HtT9OGdSTM7emdqCesXCU7NCorzqUNYHm+xkDPId+noslPX+E0WwHfpT5EdbRYUROtrVNVScWuZv5zCvj9jmEZwG/g5w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QiM3nJba; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QiM3nJba"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D714AC19425
	for <ddprobe@lists.linux.dev>; Fri, 21 Aug 2026 20:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787344233;
	bh=aAYKA4JVGE9EJTO7SpReFbyZhHp8MjVUFF4VKjfy7nQ=;
	h=To:Subject:From:Date:From;
	b=QiM3nJbaaCPojaTGqo3bOdYdRMsSDIBFx9/q7h4BjC0NmSNdBbZRvzZc6qFoNA4o7
	 VUjrG865AjrYP3/CEAXb/bCVzMMWJidzg+B2oqce1wxM9jV85QK0ySlLcSjiYENZs+
	 7gcySYQ27NALI5EuriJGtCd6ZzTpxxUOzYvYN8PfEWBc1r91q7yBy03JlKhWNEi1Bm
	 /Uq+485pWr5qWuKOYYcD8sJS+imYtdfnfJB1rZI3D2iGvMhEpOkKL8xDsN7zMn3X6/
	 mb0dsYfVsfmQRMRYyGPT+tbZotOpEg1UNbaLedvgLY8Yw0RIMFp+KSYu8TtotfLL5i
	 rksSXqBVu6Ucg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B25E1C5DF8C
	for <ddprobe@lists.linux.dev>; Fri, 21 Aug 2026 20:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178734423369.1058.13375915912712254362.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4db1557f8d88f04baae43d6e25de3e1a7abc712f6934b5fcb416220d0ab568a9
Date: Fri, 21 Aug 2026 20:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787344233
