Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24A5613D638
	for <ddprobe@lists.linux.dev>; Sun, 21 Dec 2025 03:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766287434; cv=none; b=AcqdUszFjiDO7qBR8/j/WHD1/qRXIBaoK3rpzuk9ZXHlssmos9drnT1tkq26S3HV/8fkY9HC2qiXBxlfVzILcpPAXVHN8rGZHtq8EB/DxJLyUmSZl5wr0dlZ1YQ67QqpOEYgUDKpssialETCPZVFe3LpVyJg65gFTxx59H/jcsc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766287434; c=relaxed/simple;
	bh=9ISuEcl0iOvOS+lZpQ11Sc9CWiTNIQIQTcQ/hH0vz9E=;
	h=To:Subject:From:Message-Id:Date; b=fZg+SNnvj/5vaBDSp9kIbKvhCGfyVBwqSmFoNdw5SgMC/cX437VmxFyfMC2PWlbnOd6B0jzQ+HqJJ457aOdyVBZ2S1tOYBfPTbQ8uNGbBzRfRA3om+OiNG55NWe50RnFEMxkrDWOjT3lHjYZp/QaF/ogxvyeC9fIiftsArXhw3k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mnJNkImS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mnJNkImS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6CBBC113D0
	for <ddprobe@lists.linux.dev>; Sun, 21 Dec 2025 03:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766287433;
	bh=9ISuEcl0iOvOS+lZpQ11Sc9CWiTNIQIQTcQ/hH0vz9E=;
	h=To:Subject:From:Date:From;
	b=mnJNkImSgBs2n6rq0JOaAr10NWzRfuTyi530Wljk5CSKA2BExydbJoqtzbHoVT12N
	 OBGBXUxuabwT2g4C1hBq8YPTGzZgm7fwuMbfacMp5oz5c+SiiGzkopeSExJ0dZFxin
	 kMp8cAGjj4JNMX7+OwNmvbux0R+scNH4SRclPlMlcgs4fyVz5kz+mO+hi3CONRbyib
	 odu+80O/TLke9NEJqTYFJ3nt6ZhHKUWrGvc/MqFma/QsfOAlS4lf5swDG6+vqyOgmV
	 J83pQS1RR3p9QMsfr1ht1/WFQsO9nIRrmHT1aMS78zWFgHKeN9Szhy0Wj4EzNLVu+d
	 Tu6aenVrC/5FQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96EDEE67495
	for <ddprobe@lists.linux.dev>; Sun, 21 Dec 2025 03:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176628743358.9209.4391683987577932677.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dd24ba4a17e3b2a59fbed41a65f5123de4d97817751297db57d1ab0beb0d6a11
Date: Sun, 21 Dec 2025 03:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766287433
