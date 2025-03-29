Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DCC62F3B
	for <ddprobe@lists.linux.dev>; Sat, 29 Mar 2025 06:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743229794; cv=none; b=qJbMKlRNalcoru1wvzaoO4vqCPCkVar3SlJTfvjsG9wLPlNPBSU5oXmMGzcC87VTw0/i+4+Mngq7fgUJAEYGd25PfDEuL7izmw2YuauDOZJ2GolZgl7cj2Ekou/+lZiDd7NuD1S4KMrhImnlva4ssuvA982VYrinhvUPEGNaFyE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743229794; c=relaxed/simple;
	bh=TZkbVzZ6RU/rq7P46jpu/3iHcUJ5JabVPAdu5aEStZA=;
	h=To:Subject:From:Message-Id:Date; b=GE/YEnbj8DuGU1PPPnHDgzMyC9KiNOZ97u+aKjIdSVIY4Mz7Z2lY8912D+zgcsbpLicfoPhEpZMAs6l8n+VtqcSc3htsDwsycBWWcFlrKI47zu9W+sisrtR9jyDPLSK56Lm7i6lpIRyF5iF3BolXI9H/gwI2skBlnevuSfXN3Ys=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mEHMJsWc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mEHMJsWc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C34DDC4CEE2
	for <ddprobe@lists.linux.dev>; Sat, 29 Mar 2025 06:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743229793;
	bh=TZkbVzZ6RU/rq7P46jpu/3iHcUJ5JabVPAdu5aEStZA=;
	h=To:Subject:From:Date:From;
	b=mEHMJsWcme55fhkp7Ipvcc2okob6GZ8amBDYuI2AE1TS68qktM5egb9gOt1jeobR2
	 qqDbPEUwKQMfPCnnaxpp9Da1nLn1xyc1mjiMlTr85lRCTq+pXu6W728XfBIhqSqIlg
	 Sab2ZpAPFYRZTYPM2qSgtlXXOzXmHNxAzUV1fik9tahlnVjDBoc9z+wF7xrf5fvhpy
	 O+RFz6CijBaVv3uDbHqePWe6abSpR3Q2yxdNlWpUjzCJNmbsJGA3OuxieXkjtS3BQP
	 YY7YS3RuxTLT+pGFP6cBTSf/gJU3vl8m56FjFIZWbB0XGMRQ9lR3mdikt4CA6Tpu48
	 ZucNAZcs/pFfw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8413C36008
	for <ddprobe@lists.linux.dev>; Sat, 29 Mar 2025 06:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174322979364.684.14778234201787401098.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cd6a30b6673fb2a3956adf7b2d14b0f380f16435d45b0774475ac1645f9c5c92
Date: Sat, 29 Mar 2025 06:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743229793
