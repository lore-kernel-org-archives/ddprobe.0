Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E6C23191BD
	for <ddprobe@lists.linux.dev>; Fri, 20 Feb 2026 17:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771607694; cv=none; b=Hy1+08Du7zjQjZw/bMITIFYlM2S6kNq+0ApGteXA+NbW8M/OMNQovcBUDOQ+4sjfhh6vi4I5LusE5HoTAG3LhFDLNTz147bo1cRRDnSUHSiBjkX0aXFE3gOXTUslz0B41R9NrEw7wvcx3AtGj15P0hI5ulVnCnyBXryRaahk0So=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771607694; c=relaxed/simple;
	bh=ZUqJW9noHK8LqCPPyjIioUnXRY0/v8NUMNsTGo2RMcc=;
	h=To:Subject:From:Message-Id:Date; b=Kedv9jtv9JAy1v4hyObWYE5r5CX78FFzSWI0B2+rkB/wNyhZugM6EZxuziqWi1b1IIVD0ZTIZyMJNDubzwiDJ6pCPI8llICLjAH4s0WJ4VzaUjdYnM97TaxY21LnmJFJrN9ftew60JW6rRmQK1Vp5xLLxsAgRUZerR0jBV70WlY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JCoU1vl1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JCoU1vl1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6B11C19421
	for <ddprobe@lists.linux.dev>; Fri, 20 Feb 2026 17:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771607693;
	bh=ZUqJW9noHK8LqCPPyjIioUnXRY0/v8NUMNsTGo2RMcc=;
	h=To:Subject:From:Date:From;
	b=JCoU1vl1/N5RkBgjTgD2uczvsu5hrmnZ41CuDM7OAWUT6dbkFQVExGJTseB5nNNqk
	 xdyJ1orhQWATE61BKtvb1t/FaLagcAVhv/z1sSBDaZNCFwfsAbJ2s6YVoIsWXP7Xcr
	 +/x3EABnFjL5d5W8/Fyetov+Mh3hKbTTsYnvkVAH6SPETvxveZlzXcunGsiAlrKPyd
	 nHoZuYKTay0FjgPZ36RYGKxp0GrbvPNxMGwVvHd4QYm25+48f9544XuRqRV7+d1zVJ
	 rODCppEPpkZ/q/n02dsfUFXdzsznPSpQd8av3ukkA+37Onyz13RMyU+OI+HGVL7tV8
	 oYTMLnn0WLOyw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0761C5ACD9
	for <ddprobe@lists.linux.dev>; Fri, 20 Feb 2026 17:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177160769359.25290.17182844548032987202.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ffe0db254ed82b6f518242974049d8c0f2c03e3f58d3573f866958c91d8caaa1
Date: Fri, 20 Feb 2026 17:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771607693
