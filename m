Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25ADF4DB541
	for <ddprobe@lists.linux.dev>; Fri,  5 Jun 2026 12:14:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780661674; cv=none; b=EGd4bo2PrDC4sTeOE6vRLSWu327IBwlsVvYAclci4v2ietnXg6N9Yg02ZPTO6aQGopEB1AEYuj/8OVoR2qbaSG/SdLX8KZASM4FxZWaHnPwlfPM+iSDxAi9UOcmW3Z0TWqjAH+GAWkmUKxLeVGPKNP4bbMARd3CzFRLPrc3rEdQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780661674; c=relaxed/simple;
	bh=axAHo6jYcOHHqpooTv+6l1N8if5okgsbsDu2yQwYzS8=;
	h=To:Subject:From:Message-Id:Date; b=demtvsjHi1grCAfSF2+GSDWKvDTzZ2lXcH2dhjWXrwPyLP7eN89lzp93IOjlCqt+zdm+TF+odLi8b2Nj3B1FR44UeXI60C3IE0nTlpTtUoa1Yz0JAZMDfKPqDXTUrjUaXF+l7GHTOw98YSpXPoCjhsW5X9SHITZNqgsqo62CYbo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CKDBiMxp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CKDBiMxp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB62DC2BCB9
	for <ddprobe@lists.linux.dev>; Fri,  5 Jun 2026 12:14:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780661673;
	bh=axAHo6jYcOHHqpooTv+6l1N8if5okgsbsDu2yQwYzS8=;
	h=To:Subject:From:Date:From;
	b=CKDBiMxpeL9x4vOtoOClO3YUQjRiPbZq91TdNP3wtW0zBIS8MRWMwYwE+Qy41ZNzV
	 ThbPa/8APjRYw77R50hSr3FsWdAtFXfWTBHVM9Jbu/Onk53e8EUFiX+UNggYAAjlkk
	 kyfcRFYUgUPyLLt8XWXeru/r+MSVkeiT0MPBWff38IzzbMIXTN/oXXNmsC83AJh/n4
	 7/NkcTyVXtg8gXqidy76UOrhgFD1MGcZ8GOZi2tZkL4zy90ZhqN3aa1aLeiGaA6pQz
	 94DFE8n8wL3M6FgX5wbYfyQ6mxDJ7XlnI7HbGdsOT53VXlMAeneFJV0DnVfZKuWI2z
	 Aa5EGteC4HYNA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADB8BCD6E7C
	for <ddprobe@lists.linux.dev>; Fri,  5 Jun 2026 12:14:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178066167370.7444.10506313110924856862.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 108207195205f476fdd8772d2411a44324d00f6e9844db6632a645f359acc13a
Date: Fri, 05 Jun 2026 12:14:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780661673
