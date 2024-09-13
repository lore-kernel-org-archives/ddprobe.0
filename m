Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23BE81D67AB
	for <ddprobe@lists.linux.dev>; Fri, 13 Sep 2024 09:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726218954; cv=none; b=nv7X+/V/8Sw+3eBh17AFRrTDbojErw9MHKaLQBCErq2VjxnyrbsQrGmnE1tGfo9V1abdQSXNeAFq3ElLODdC968FuHUAEZUQjbkJAr1d67w8nP3c8xO/dbvN0CBwR73FRp8T/Vvd6AQfXlh/eqN1ur1ZD3e0NIL/DqKj8bFRj50=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726218954; c=relaxed/simple;
	bh=EFN23iyFR2pf+JClko93Hsw3PGeDqEquWFADI0XzzE8=;
	h=To:Subject:From:Message-Id:Date; b=cIMhD2gRxIOm1d+RLCcAuhVG3OQ87YIX9Tny5pXBfsp/dsx9kjdfZT6Y3zpAw6aqgOVCDcMqWNtNYSWUg7kLpoTn0RYK8VX1/ZF9vcXnTJTB5UhCWaL464GjLozdSyMsXgGy8S3t8B2eOJ/CRNMeDTxuEVPV/Amor9rqBj4hzCk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VIYypPLc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VIYypPLc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7388C4CEC0
	for <ddprobe@lists.linux.dev>; Fri, 13 Sep 2024 09:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726218953;
	bh=EFN23iyFR2pf+JClko93Hsw3PGeDqEquWFADI0XzzE8=;
	h=To:Subject:From:Date:From;
	b=VIYypPLcMVSTJKChx/xMvm4RKQuVmxpiF1hFPScu0VmqyKOCHo0tDT17nOzCVAW28
	 IOwtOYmQ26jL0n4gCyoMHSgAcErv8W+XvH6PKh1gFPMdVLH1kz58a34Oju7y0KKKYB
	 RI0n/mD8qmTUv1/oKyRIv/a3/MkNu7RrYDGD8kR114HrjiYWFVtZ+FL898DPkORe4Y
	 vwIBwSV9Go51EzfI7uYRZStVXS8xDXfDuNtLNqot+tQVP1Qh+rYGKhfND0TZ9faTrr
	 4kqpeE7PFCkUgz1WQO5Q3CmcskAyB4J095A0eh8S0ebDamRFJFg076x3oyCPUhCFuP
	 AlWKq44Sc4ErA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 949D8FA3733
	for <ddprobe@lists.linux.dev>; Fri, 13 Sep 2024 09:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172621895359.21265.17402063254018890797.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cb467c84b4e72d48d79f58d10e0a7ce3b9f5b278bc18e3c80f202928fdfd4028
Date: Fri, 13 Sep 2024 09:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726218953
