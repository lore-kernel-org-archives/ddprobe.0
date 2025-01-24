Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D95C3C00
	for <ddprobe@lists.linux.dev>; Fri, 24 Jan 2025 01:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737681954; cv=none; b=IOu4WYMwQLbnlMT94/OypIqFBK0qDLh7srYgc1X4pkcyHsEI+alLARAPgYnoBW+1m+I1NIp9WZqfNXQUd+zfNiV0YCwwvFtkUdaiE3nJ2tLG8pL/UrSDa48W0eWJsOjgxK/wE2fbpjFP+BopMuIX9V+gfq1B5GMD/owOytoIPQU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737681954; c=relaxed/simple;
	bh=ycpNtsWQduidPNBGZg8KoiDmPmWyFMDUS1IVqZkoGAo=;
	h=To:Subject:From:Message-Id:Date; b=C+5vLvnt33WKwkhRpejQgXpIYmb1p4Ux4aHW3KU71cHIETetnYedTaALZ44ETsCnkxwPcl+1zGEfQXYUVPT8tNpTm5ppYB/V9PyPXzCt6VN8D+1cEhlbjkV2LXUFtQqdTQiPOjPSBdkxSqTgTf8ocSN27hdwWIaJyegf0KBfJX4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gF8y9UEd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gF8y9UEd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFE0DC4CED3
	for <ddprobe@lists.linux.dev>; Fri, 24 Jan 2025 01:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737681953;
	bh=ycpNtsWQduidPNBGZg8KoiDmPmWyFMDUS1IVqZkoGAo=;
	h=To:Subject:From:Date:From;
	b=gF8y9UEdgxBHkzy/jH5foVEHkdRJ05B+rF09loPumcAWj3eDN3lCpOYKifIrqJdBm
	 wT6SHpQF+hq3Gkge2dksxSjXARbuKAlUIx6jsv8NEocXP2/cvIvF3eZh73ZUZ147wK
	 i4/Udcc8SJxXoxoWin4bA+tV0L/lt0WB26+SUxOXMVNfbUQ8ZdyWdNpZ8DXnlMgbMF
	 FhnoufJ0fsJAWXhaO5QijSttppjI0aNf/K/uTb+vHqaJykui9mqNKuCpm/iCv4Qpwy
	 BkVVdJe+gGPa+42KowUcUqdvqU+fqVLMrTjNlugosyQAKRA9D/NwaaK2wIHQBcAdFH
	 IZ+xamXDqPYFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D03EC02182
	for <ddprobe@lists.linux.dev>; Fri, 24 Jan 2025 01:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173768195359.16542.14129134938672811480.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bc6781c05eebaecaf5d2a0ae76fc0429c2eadb2a24638837ff93ff0afdabc9e9
Date: Fri, 24 Jan 2025 01:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737681953
