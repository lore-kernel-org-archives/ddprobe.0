Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0CDA0331A73
	for <ddprobe@lists.linux.dev>; Tue, 10 Feb 2026 21:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770759834; cv=none; b=I+GU1kOmgFahxA7wh1Y8v8sRgDha/xxjIaDQqmfDAIoGt5xUIIQ17UmPN50UHpy2j2yJbKb3qHWSufsSPT1ntfpbl24xV+pXc6jYXCPcJeIOkk350YaHe0hS7ASEOPdisB14Eb1o2+qBT9BjZuyyBXx6/R9tE3bxdgAjrFo72Bk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770759834; c=relaxed/simple;
	bh=I36o6GjHIv4uIMFGArPhJUY3+aoI+ZjbXtDoH4KGHzw=;
	h=To:Subject:From:Message-Id:Date; b=i+hOZvy33o+QkRga/IrCo3JcWGO0SybT4qo0qcCnoLGoUiw3NbHGVkA5u+egD1uxVuCc52OUqNlftuzHOURtiX8NrRhdUBMCS39pW/w/oPRGPHl8NTT1ltzGy0E3EQz09xnt9gkwhzL4p2ujz0xLwb/WYXmW0csFAxCIlRXb3Bg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Et0vm5w5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Et0vm5w5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1E44C116C6
	for <ddprobe@lists.linux.dev>; Tue, 10 Feb 2026 21:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770759833;
	bh=I36o6GjHIv4uIMFGArPhJUY3+aoI+ZjbXtDoH4KGHzw=;
	h=To:Subject:From:Date:From;
	b=Et0vm5w5txK2sqLDrVV4TFFpNT3/I7ZX9pp7wS9pFDij4aVXHPOwUo/mm2CtIt9Yk
	 LDXI6Z1BUsKtqtIpIC/41e7QdJZW/YS5t+jmeiM44VqA2ZBpXA1L0MRoyLlLcWTwbP
	 jQ3h5XLx75mKla2msCxNE0rv8BGzEnQCVjebqd3jrfn7azvggA4kgzYq7hU7FaKvg2
	 /Ln41oCii0R8N3YLIlnb09ffUDO+S+cltkis4lCB/AtK3E7ri7bSQz0LBPLK9Kei+S
	 amxDyOy2GI7u9jXLK2s81xv09522a4oEHorvggrql7l9qwEkzEUzyD/3DbRGo6Mps3
	 tSnZ1tzZNpaDg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 923F5EB271F
	for <ddprobe@lists.linux.dev>; Tue, 10 Feb 2026 21:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177075983358.24391.9608272008928213868.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6b2eb880b9aed8cb4f4ffc5b0075e9debbae524cf5419a5c5d602e1a595d4da6
Date: Tue, 10 Feb 2026 21:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770759833
