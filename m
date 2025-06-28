Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1941D2110
	for <ddprobe@lists.linux.dev>; Sat, 28 Jun 2025 17:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751131195; cv=none; b=b+D3EBuU4MIfcZ0GNIY4y0gTIuLCKr4jXeFWd+NZFntlzSnEbPFd2YmCqdZcAgCVrL44rpWXZuBAlSapXLis5ot1zWZ+d7bYZuEQ6DR7XwlGft7gu7uCltSd606+GnGxVhZ3Z/vaUeenKRZ+JrgbmofWB+S/Kcbb8oDal7x1kCw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751131195; c=relaxed/simple;
	bh=8ENbNedfJ06BDcikZKBQwuGQKV69UMFQDwAnLHcXVa4=;
	h=To:Subject:From:Message-Id:Date; b=dMwdLSkgMH5DpP+J47NzDu3ImJfEGBgD6gZyHjFjDHkAfdD0JEyObF9LC6TUM1xUSlPHes/6mne6/Tl3Acs+kKYYWIM+z0A1jGZZ2x6A/jb4QAc91CjOD9SHnBvwzkf+bZx38w1L8kFmdJuRhomki4PHScnjn6O1hEJ0B+k5EFw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hPGw7u1E; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hPGw7u1E"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4B2FC4CEEA
	for <ddprobe@lists.linux.dev>; Sat, 28 Jun 2025 17:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751131193;
	bh=8ENbNedfJ06BDcikZKBQwuGQKV69UMFQDwAnLHcXVa4=;
	h=To:Subject:From:Date:From;
	b=hPGw7u1EOAJF4xgjoJOzNnl9aQq0EVfa4WauEjUDa6697Uriqq8W5eOSMmf9c87tB
	 GZjW2yXDsWAyvYCRp516iN2iPCEPGBrNam72qGaitUl+LWvPxE0Y86qMDWBVy6P+fI
	 u9sOaZoISzoIG2yirh7OYySwQxo7jIAdJWYH1SWdb65dJHSe/1fCYa27zRlmPNRhzA
	 RBdRVLPYZNozizYG93Qt665XNmmGZPFKa5VyfTCTBH8MWyH4BPL0VcX5ybWhGX/iBf
	 IHML/yVNgQ6vqlmJkehuLPB7X620tG+zjZrh8QwzIQSvnRI0ulnceC4pwTpbOUVOBq
	 WQDzvrfFWa4LA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 904ADC54ED1
	for <ddprobe@lists.linux.dev>; Sat, 28 Jun 2025 17:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175113119358.10238.13911906935022384162.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f093cd5aaa98e2acec055eb019ce9775cb80da6c9c07b3290f0d0f7fb189ac92
Date: Sat, 28 Jun 2025 17:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751131193
