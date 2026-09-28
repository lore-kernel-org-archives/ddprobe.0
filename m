Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E82C361947
	for <ddprobe@lists.linux.dev>; Mon, 28 Sep 2026 03:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790565034; cv=none; b=XJXjTnxBZbymCH8u2iMSxTAiaIyAOAMH2TDMusMa4ZTGsTWT4x/m5HvE80QN+4/IAvM6mA+ZPE0ny7kn4R0iVMArQOQQGJz9HCaNDocmIJw8/NaD5VkxutEh8UgXqNPl4iCsPT9jw6knGzHfLWnwiC0vVWYHixo5GgseLgsyIhA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790565034; c=relaxed/simple;
	bh=rgbDdB3H1PuQ0nsjrE1+OOb454BpckZgJO9rxTSaYMs=;
	h=To:Subject:From:Message-Id:Date; b=dNVKJRf2/LahV0JEO5mGCxR+D5WHn7Pm3v/iVioHekzkdPXzW0vsRTP77zipVP1NtvMQRivCqesbjZJVf52DQ9SpUdH7IYMLBsacE6GSSaPEK0NQcdr4fzIaQbeTv23V1e7FSL6TrP6xgJFPQFtpqJ9If8Hc+lfXbJOFEUEJTGI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pksfcDC5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pksfcDC5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF7C8C2BCB3
	for <ddprobe@lists.linux.dev>; Mon, 28 Sep 2026 03:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790565033;
	bh=rgbDdB3H1PuQ0nsjrE1+OOb454BpckZgJO9rxTSaYMs=;
	h=To:Subject:From:Date:From;
	b=pksfcDC5UnVae8oidpxOzAjJ0CgadhgLpg7/5ELVN+IVKAJTzu4PookEy0weMVU1l
	 7pLFsUaHvltamkUA+vDt+uZzxcqNWmFG3fHzd3nyIb7nbXqbnL7RMn77qf+fdlq5H4
	 SgpjSAZ3ZfBuXE+37NJ3FVcfmWrD2d/aRLllox4a/yzquFwHITTlIy6ZFUOJbJD4Xy
	 fMzQW6g6JbWjoLMQi7qDtdM47A56P6XIuasBnYwKQvXVJG+4B7hfp2zjtkgV8UAVCo
	 TiqSiNSonlOVYCEZWiZCNYpf9Xq7aG80hjDAzJbqtbzPHGF3iWXBq7OLdUuw/xlXA1
	 O6ai5T4YNsMSA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE79AC9832F
	for <ddprobe@lists.linux.dev>; Mon, 28 Sep 2026 03:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179056503370.32715.14905757070046806148.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e1f6102821002216c6affb65f2e2eb6e49ade5965b767ab2302bdfbe47833df0
Date: Mon, 28 Sep 2026 03:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790565033
