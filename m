Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39E58383A2
	for <ddprobe@lists.linux.dev>; Wed,  4 Sep 2024 14:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725461154; cv=none; b=bDCu1UX51Yg/V8CiFIWX8TzB2VVlavdsqk84J6/inb4PmIwc/Qs5HaIlNrAmpXOKCCrTF9PhchaaLg5F2nCf81SLrRurAy2PbUgsUxU9jFHDCVlvfNtLXLXoHBWb+kh9BZf+oh8Llf5KpuM7WCQpdu9sMwwB1E9BGgs0fYCekcA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725461154; c=relaxed/simple;
	bh=pYc1ZU0aLyg2v1ZKDZNDhvuY4dG50TMnbN8/WX9buxY=;
	h=To:Subject:From:Message-Id:Date; b=fN7drrUCxwc7VXWNYqFEwPoxwM2mL4ARUHHa6lO0YR/yAW/kOPPmYgylMlDI/f2lGtwGTcZO+IiuVHZvczXlCQkd1t2M12NXt2l5Ajyhex9quYjYZjZPtsSHEOPaJCBjcUL0xS7b9dvzrhG+n5rgHgfB2GW4SAM5W6nBA0kuyG4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oeXP8dd1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oeXP8dd1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A423EC4CEC2
	for <ddprobe@lists.linux.dev>; Wed,  4 Sep 2024 14:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725461153;
	bh=pYc1ZU0aLyg2v1ZKDZNDhvuY4dG50TMnbN8/WX9buxY=;
	h=To:Subject:From:Date:From;
	b=oeXP8dd1j5WaUmET9ER9LtSRfSV2gwgfal0JgM4ZvYR0tGMDJhNb/BpWBVXXzCJD1
	 5UhuBrjFbyz6C7uK/ImfWT+521VPh8qh74vsqiSIuehbHU4VS+KovfQE1kaSrYn8nm
	 o+/Ydc1p+3bj+EBGivl+u/gBf9j4X/YlPo8l75O4BkKhVdUTWuqGSLcsUzfBxo6XXZ
	 2LEGyF3HUG8jcxLi1WCZuHSkA6VQoi9QnF0KykF6xUHpxe8RLju5y86V10x4dIkTc5
	 StacfmJdIckdsBPx+BiRJg8RCnrUgx78WRdN6M8lB7xtTcVLPcAMvvw+kShtCO0cMB
	 mOmnkGnpJg4UA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9304FCD484A
	for <ddprobe@lists.linux.dev>; Wed,  4 Sep 2024 14:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172546115359.11421.10990799237934269576.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 03bde7581440a89bfb77be91cd3b9cf1c61ba046a13b6348281cca64cc1d6145
Date: Wed, 04 Sep 2024 14:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725461153
