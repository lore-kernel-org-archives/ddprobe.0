Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41CA3CA5E
	for <ddprobe@lists.linux.dev>; Mon, 21 Apr 2025 09:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745226594; cv=none; b=hCBEMKU9QH8WHRt73GCTSgY7mMgFaGxPcbuVcF9OnASVXNatrsd/+PXJFllrBRD5XV/EYSpsrgIC9JDtr62m9llDjEFlxTM6xQMPSgu59HHLQD2j6IkbUh30BvbiEv0TjdCVz1pwF23rrFX2bc8Em7ljDFedMqkWfAFlnBggLuw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745226594; c=relaxed/simple;
	bh=nOoiYcq+IBaF9d6T9U6k3gsriunH2N0ZzLwvXhkTvDY=;
	h=To:Subject:From:Message-Id:Date; b=Col1OK9MvOGor9HKn05M9GuLZrZVktinWA96MSF8mJ9og0+NCx7DeAWTPg5Fu/B6zk289br8J3xI+HOMx3iyidNKYs2Bj7mdINLEcxtO71TFY9ZrfDaPED39KcNL52CwrTvlLAkUTpPVPEuzrGT9HHsVESl7zDRRyja9BnfN/2E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Bqf9h1vJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Bqf9h1vJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB7D7C4CEE4
	for <ddprobe@lists.linux.dev>; Mon, 21 Apr 2025 09:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745226593;
	bh=nOoiYcq+IBaF9d6T9U6k3gsriunH2N0ZzLwvXhkTvDY=;
	h=To:Subject:From:Date:From;
	b=Bqf9h1vJqRTWeEJqmM3CrG/1X3W/X32XxDxFO5IeIudqR7svI3NW8U1fMiKypjYsp
	 5nrLt39M3JkJ7Dy9DrS5SeEPeyNvdTpZ5xqfGs5jQs29jmgMn2MZRNlK6i28OD3cWH
	 lG8Cx+iWiInHlEwK8haTxlwUpK0/29wA9IyZ70T59oqTpLJB8GMVXWpVY6bPAvzYIG
	 Xx+8w+P2HFF6UO1bAQO1FKf0lnKdh2nGQkGwCVDldgpx0Ak3wC0xA5SMc54qm9fG4M
	 +bIMrgz2MMLWipaAlvK31uDTVG5nuhUFsyNRYtDACCTlrSb+dIXRHF44WaDIR4n8bp
	 YmtZCNepuVIqQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABAB4C369AB
	for <ddprobe@lists.linux.dev>; Mon, 21 Apr 2025 09:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174522659365.26820.805466352504807776.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4efda885fefc61cb5268e79e6b2667f3e3eded56cd590b03d723a8ea5c60303e
Date: Mon, 21 Apr 2025 09:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745226593
