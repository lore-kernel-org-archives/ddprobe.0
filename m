Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C5F526AEC
	for <ddprobe@lists.linux.dev>; Fri, 25 Apr 2025 01:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745544594; cv=none; b=hKpz7aTKSVQLeOKpYJHk1i/9HZipkrkyg+Qxxb/yvnfpQb68x2yAXgM+ZHJgxsupmghouiHt3s7A/j/xXkrxiH7vYXmqu+cyO2l/VjgwoA2cLNZjRU1+E69Z+SZN8BXnWAmAj4hEZc8BBI416DcI3Nq3niyRUz+pKvb18rqN7Js=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745544594; c=relaxed/simple;
	bh=TSEXS54Fo6v6teqTxCGuKhiP2gsQtNHpxRrEBi9vzT0=;
	h=To:Subject:From:Message-Id:Date; b=SWOMpFyfhkAs2S7JDSp4SKS6q9FTVetOIfSLcSFwsM9M3oXQgGYX/sy2O1Di8PdAge9nV0GxI8mCv/1PJ6SJleUP8n0YOZvhXF9O4DqN4s+MRuGtfI1i5ZyXOw0/HILDropdcKkSvddw2XhwSlD2Z18Zy9/eoN9dt6pvKVUWv/w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gtk8tsU8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gtk8tsU8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE797C4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 25 Apr 2025 01:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745544593;
	bh=TSEXS54Fo6v6teqTxCGuKhiP2gsQtNHpxRrEBi9vzT0=;
	h=To:Subject:From:Date:From;
	b=gtk8tsU8CngyZCIBR3CAcSyYPcwu1GnJ+9/dODUYqu7pd4J/pEyr17P//sPm92m18
	 YB2JvY0mxZpzkFaderKpRZ4BXpe4gDOzjciOlSagh0m5i1WMnllwnmwx8p50Aq2cQe
	 yb1EDP8sLbTkNyoD+FCDKA6a0cRlpHAv15rbJdXFP6GNCPGWQjB95NIlTn+OTeNdv+
	 6+bPIyp2CmFDuprvna9/N2VpaX855cqHmUo9dHIqi73TB9pAgmvf/4hCa9vyuOpdg+
	 iPnnGy1IVhUjfHyK6dtvWGeZdNtagpEmyPZteuIWaYmjaI6lXo0SP0n4Za+lcZAd95
	 38D47120YWdmg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96BDDC369AB
	for <ddprobe@lists.linux.dev>; Fri, 25 Apr 2025 01:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174554459360.26825.6084445053219922669.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5ddfd7ae400a34a60589580006874a025a279c76ba30abc1e0419f28643cc80c
Date: Fri, 25 Apr 2025 01:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745544593
