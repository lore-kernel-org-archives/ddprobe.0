Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DFD6CA6F
	for <ddprobe@lists.linux.dev>; Fri,  4 Apr 2025 00:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743725395; cv=none; b=ZoGtwKx7RKtCeGgJerpLcYK74AFfHOEw4rHEPxHgqlFado+Z0r5xl98ltXFprbeyZx5XlcWdH9j+r+4dVrBRrNO1+KQdTh60A5MEVOvb7/MMhDSYefuyON3vKkQrxqvh6Y+rnu3HNAKXZfREG3kIr57auqctPabdNEE+Q8i5vnQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743725395; c=relaxed/simple;
	bh=h1jgCzZUhJWf0aX+tYvdf9aFlOM4YwDJ1DkO0nCyg+0=;
	h=To:Subject:From:Message-Id:Date; b=ctm660OFNXJqa8jT8ilWxy/s68Pw5XAjrLBiPDK+cgYH9/ehqjFyuzFFm4Wf1nISkKbfwtZtjCO3azVrTB180mZPNr80JwE6dzPJUeRirFRJuFPVymXHwDzSwHFtwCIexhUmxN/y8OS9ZdLtXB8MK0AITY2J+duM3No8bsfWEbc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VeQW5UZm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VeQW5UZm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADD79C4CEE3
	for <ddprobe@lists.linux.dev>; Fri,  4 Apr 2025 00:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743725393;
	bh=h1jgCzZUhJWf0aX+tYvdf9aFlOM4YwDJ1DkO0nCyg+0=;
	h=To:Subject:From:Date:From;
	b=VeQW5UZmXdrGTzqKHPrbj4Q96KaIZPRcYdofLJX1800JC2eLe5hWVCXRjPuIFWn+4
	 E0WKw04PkSujMk8sHKphOG5vdm4EgQV35EeLc1pcCMKKSo8yJOsQGcGUmsYSSkdiXZ
	 M6jtKXDYx6wrOHjaODlugAD3yTfmqnQlY1nmzM0DgEoQGGMX6fWnWdF2HVCsJDngII
	 v1mklYo7+zNdnpfKigRa++WHDMot+vmCDX027BcxTgfzRHNECP7gBOH8V0YIrfSNs2
	 VZWpAcwR2aSBLJ+qtnjTi5Y5sTo7xUvZ/IcL0jEKRF/a9B7McnvdGq3gEdLVlhTgKg
	 jFwXYtOjVtX4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9EFB3C3600C
	for <ddprobe@lists.linux.dev>; Fri,  4 Apr 2025 00:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174372539363.9806.7636063607230194317.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f724e3b3df3df4e01972ceb7f0a173f98fd0be9b6d5220cec2bfb8e52d935157
Date: Fri, 04 Apr 2025 00:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743725393
