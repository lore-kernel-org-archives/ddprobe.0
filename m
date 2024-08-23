Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5AE5628DC3
	for <ddprobe@lists.linux.dev>; Fri, 23 Aug 2024 07:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724399754; cv=none; b=AtmoaV8hOjsvgM6BCEl5cEs1bA1BGtYRcSsL453nS5MBGWWbpGvXO1yse1mDs9kU1eJk1O+Kd1HLi7ng0nc3kPzWNG+tNVLpD96OAxSP8GgGtwyJQRgY1ndEShRBQ4pwPEMHEUNcBEI+D3M5zzHcJqH7K8n0GD8YsRea95autkA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724399754; c=relaxed/simple;
	bh=XYtcrftwizOoMj+sFbCpD8vDGXOSuJ/9SV0ugLTKdAs=;
	h=To:Subject:From:Message-Id:Date; b=c6ISCJVwzybulBT90GsVE7K/e8bzZwB+lE/+bGrJxIO4qnjPQFVGI+8tiK5+2n2YD4wM9vubf4kCQf2pUKh/H1zwq10ZdIhn/cN/WkIscH8ptQnbVgi3c/PiQ2C/LIeHnqzKIBH81S9E0WwKOZmtLE8ffcyAy6V5Sv/8FO6S1f8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ktrbjhiL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ktrbjhiL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB99BC32786
	for <ddprobe@lists.linux.dev>; Fri, 23 Aug 2024 07:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724399753;
	bh=XYtcrftwizOoMj+sFbCpD8vDGXOSuJ/9SV0ugLTKdAs=;
	h=To:Subject:From:Date:From;
	b=ktrbjhiL/bLAfQ0vA+zr+1C4gYnOyV4UMRpSkxAJf4HummwoKwDuyqhcVjjVeudvt
	 oRd6pzE86cXk/+MBX7BF9VdiTZLupSWsPkomoj34TmLE4Fh5gpdPVd5A1u2AMTE9Y7
	 vA2Rhd4eJVkGmAcrAt4rdncy44fvxauY/pPIqoaV62+wkxL2wAqNVGBsbVnGlUhDGR
	 DiyWzUnel9u6mKP2Pq9jLSk7cf2S3R5noKGHu5LkkvX0RN3uZX2C7R0J/k9nLU52eN
	 5R4QoKW9dHV8ej1MbvZAbPlsnRAkogtVRBl1CxgRRFWEMPRzrSnMF13TQehNBGly5L
	 fMajav3HEpXcw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABBBBC531DC
	for <ddprobe@lists.linux.dev>; Fri, 23 Aug 2024 07:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172439975369.2772.12824498806523548261.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: faf608734e7d92405e018c673fb792cc65292f3e0cda4a5536d30af553d4f003
Date: Fri, 23 Aug 2024 07:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724399753
