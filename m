Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37609BA3F
	for <ddprobe@lists.linux.dev>; Wed,  1 Jan 2025 11:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735730154; cv=none; b=G1Gv4I/5scAciBL8YUh1WuMOYcdZv66KyYb/P8kEi+nUe+eUtuLxzaD+lYlM0qfOREHLl1vGweKAKbxqW1Y8IUotfa/YE9N4Zv7y7B6AhuMrx6OPqIxM0NCWDFKwoN0bSSADU97qxPf71f0XYfWS1pRGV4i7Jc6E0oc/5W+22Ts=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735730154; c=relaxed/simple;
	bh=Hkuo2CW7Hj71aVWmvk+3RdCZ2mGqn7iMnDbDTptj0YE=;
	h=To:Subject:From:Message-Id:Date; b=KRWx5hvXoqZV4p6BYjuOOUPftnN5wVijp1gdt3q/+C5DQ6b3FRfGyVciA65eTObtP4awalXn+0SlVF3JsZEQTqYrPwHmEeaBfLT+4r4oinE6Z3ULU81npbXuTMph5kSbtpbRv125ftAFRvhfhttZOjj4VhjBOXtZ37T1X9UG/i4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K7zrXF9t; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K7zrXF9t"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC2E9C4CED1
	for <ddprobe@lists.linux.dev>; Wed,  1 Jan 2025 11:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735730153;
	bh=Hkuo2CW7Hj71aVWmvk+3RdCZ2mGqn7iMnDbDTptj0YE=;
	h=To:Subject:From:Date:From;
	b=K7zrXF9tusuy98lPyn/kOVrdbO1yw2ptWh+8Cx8tUjvN83+hmJFQvo9GmtgTitNsh
	 ptmnWsUJe5k+IosjRrYKbiFB+jS4ipcHPrQN95U5QYUOBbCHOOWFh+tZ/iv0DeW7jO
	 UMmegAI8cepJUCAdmZttue4Ex3GfyenomNFr2F9tCr+Ljg/SWOsXOKTnVzfFFctpPL
	 tHBtsduS3O2vRbMyqwCMj5Gt1Cjq1O5Om9rkeXd1xVMG1VWTwsxSPl5i3PoypYPhAJ
	 Kj7b3eX5xEG08mPT/lzItCIi2G52xKHPNlSqCxE6rg24/ceaZvy4/05q+yIc1Skc9M
	 M/fsu28KgzIyw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94ADEE7718B
	for <ddprobe@lists.linux.dev>; Wed,  1 Jan 2025 11:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173573015358.18449.3637981525350304910.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0d2525a7066d5c217c933fd59ad023a34f6e89b5e2add2022b8e609ba11a8640
Date: Wed, 01 Jan 2025 11:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735730153
