Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 70B54243367
	for <ddprobe@lists.linux.dev>; Thu,  9 Jul 2026 13:18:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783603114; cv=none; b=slSDCv62kuhfH6Qf8fg9BY/AYw2u9yRgm3i6H/4UvUy6tZevLxWoPAKKWK6KadSS86agqtq9xgXUnDcXnWtBiENdV7Q2tuVyxhv6TBhzHY5s/46wPrnzPYqMWFikfLKpxkW5MzvO1lZDVCSIeGeYGVFV+T8X4/14xU0WWwHvJPM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783603114; c=relaxed/simple;
	bh=ZMLku9MX1cPEqcMQ7H85OormP0d4idpDtUXa66PXm78=;
	h=To:Subject:From:Message-Id:Date; b=IFMwNpYyPhw1ESpR34FIfl3IAzpDFHZXVQ8KOqGcZfbUvQIGIEQ7ytBXkHxeLZVESVmGHu11FUBLLYX/vN9nZLy6xAJKhYcYXLC0bS3MNcpXu8W7Ydrp4L9eDBDxbWRa5j3pgvMS7C1Wvcs3sCQlokcS+ldqDRyRMY3E8n1fMPc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cwrT0Q32; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cwrT0Q32"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DBF24C2BCB7
	for <ddprobe@lists.linux.dev>; Thu,  9 Jul 2026 13:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783603113;
	bh=ZMLku9MX1cPEqcMQ7H85OormP0d4idpDtUXa66PXm78=;
	h=To:Subject:From:Date:From;
	b=cwrT0Q32CocMITdmTgPih0XJPJ1yF/xA0Dc7N+OOFXINwTSMLbcTQxeZpgqwc580d
	 kcr2OBr3trkgDtRmp7Tp8xhSe5lZflep2GK2Dwg5VIzszFrx2B27yeRm6nFcjSiLZp
	 eeUp+yviZgwaBeQaPuuNmO9pE2/czWJJPNaK9i823fktOTOfrPD2jiU3yXb/rqVmK/
	 6Oi2px9QYB1A0HtSycEspP7M7mbIGNP124NLAfJxvi34zLvXfjQ/aQ8Pt+i4abjucH
	 csredLff/P5IDfpiDQ8vVqSdKnS6wKK+xMiNGEIy1xgjUFN9rmHHO9qxOFlWKbHZwG
	 YUKr2HsfXg7Pw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B601EC43458
	for <ddprobe@lists.linux.dev>; Thu,  9 Jul 2026 13:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178360311373.26337.3577746486267924405.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ba258421178f6c7b5c96c9d3ef5951ab3f48f4b80d7e2ada70280382617e2b69
Date: Thu, 09 Jul 2026 13:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783603113
