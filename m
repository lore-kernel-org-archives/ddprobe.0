Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 203EE19CCF7
	for <ddprobe@lists.linux.dev>; Fri,  7 Nov 2025 14:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762526994; cv=none; b=Qg+AsapeFO1CQuOWiNGgYlQMxRgOWyFPKPW/Otgzo8OR7/5mJj1lNG7yhvjKjEmp3LOn4wW2krqYoGZnU2rLEoeUA6E9qPoTtfp9T/O8Dd3j/SpUjUYG6msat3Am2ET2WV8GaLCUB29Lxffw1sTnhBzCcaSyHWN5+Ia3pa2yiuQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762526994; c=relaxed/simple;
	bh=yRJN+6GU7kgOgeDt8wvv4oeV/kfY6gA9SzIFyZJ4xvw=;
	h=To:Subject:From:Message-Id:Date; b=SCwiYUeRW/iffC2d8ZsflJnIh9pCPMy760WVNkodTzH4+ExpBmwEDwF5xcfojFWOpsTTWThNzLKKbHnnEplTZ0qGuQsM3dgHJ3c5+LS+UCu8OsEHyYfs4SOikbc3C1YQKYoGONQde+wMqchqeFOyZLuLVcOIiDZ8hUsIkLohYxE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Sa1nYXos; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Sa1nYXos"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9BDFCC19424
	for <ddprobe@lists.linux.dev>; Fri,  7 Nov 2025 14:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762526993;
	bh=yRJN+6GU7kgOgeDt8wvv4oeV/kfY6gA9SzIFyZJ4xvw=;
	h=To:Subject:From:Date:From;
	b=Sa1nYXos+oJ+1U8rqOyfEdADHb7B1+oyBxmg6NgLTpACFYLFJ/V6kiTRPnidkmZ3k
	 iSDxvmYvY2E9pIXUBY0yuCpEdjyzFmNIxTYkpSRQoBpgpxy43cb85E3TpcyWLxVji8
	 nHIAiPA4zOLHnPdaW7wlpNZUErRhE4IqRfarDrOLH7C6/+aW2T7LWNy9rGeeyaRrS+
	 GuBxIVfBUDpidkFE973JX28VWZ9c1MIqGrachx/C2O6VASOqqDT+R/opWvOvS8MwPk
	 3sc11mYJ/j65AJAJljWAMwWL5L9waJW9wHg4tKtqvGPFjTJgBBDqv3eCz39c/2nuCQ
	 z5KR42ioW81zQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FC29CCFA05
	for <ddprobe@lists.linux.dev>; Fri,  7 Nov 2025 14:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176252699358.21819.6652692026173829905.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 67f4a9a7475279efb6eb55593cc3341fa09024823921e965b4e0f89bccb16d52
Date: Fri, 07 Nov 2025 14:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762526993
