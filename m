Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 227F3298249
	for <ddprobe@lists.linux.dev>; Tue, 15 Jul 2025 18:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752602994; cv=none; b=uVmD9pn2R0MmBvA+QsuGFYzW2JpptoC5NX+JVaG58C1kt8kWNBZS4+kwGNp1gZsLMH3FzCD9ym08zj79M+/t2xp8U+fVHaoovjTjQG16cRb+UV8QGii4xouz1U7T8DwsHHmDqk441u4cj+wedK3Q15ZL5rJC5DGwOOgYc4pXfnE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752602994; c=relaxed/simple;
	bh=zsafK42VOo5O9erJqpy4g9lNX2+onVcABA8xtZ4Pe+Y=;
	h=To:Subject:From:Message-Id:Date; b=olPKn5sExbQT7Ykd9FIzTqeKIIrB2n4mHQzmfXkmmD77cf3WL+HrEOaYxt7RTfjkH9j/I33Tz0UPXwXeNSbjfT6a2e53QmUyXQUIjRD5PKeeMC+xalQm1dfKw3ROSEXlzFihCMQ7ajQ7B4S/2viMDpKLtNJ1uhPvRs6w75YofI8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DfTgOCAZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DfTgOCAZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6F10C4CEE3
	for <ddprobe@lists.linux.dev>; Tue, 15 Jul 2025 18:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752602993;
	bh=zsafK42VOo5O9erJqpy4g9lNX2+onVcABA8xtZ4Pe+Y=;
	h=To:Subject:From:Date:From;
	b=DfTgOCAZ3k6SjlJyHu4Axg5nIcd7sRQO+mtLcMbl6bVn+v9GB63qXHgWhrQo2AFOz
	 9BgyKy5ovgkTi0gDUi8cvZrDNhIUsKWhL7N/NU60EJ4IjQ3bEKOn3Ke2099zx/j9E0
	 cFdBRrkkY4Z3OMR4IynYSMuyxq7R68k2I0Q1QdLm/uR1pqj8Z7kzkFc7vW36gfT68V
	 z+TXDsKp10jQvS24/nyzua61J/FPwKQHAtM1e/ucq+f9pMMLOAGGrdeGApTfYKwr5P
	 U3inI+DPB7ydZ4UJiHX5urhgsIGROwaWOATdRtvbEs04p3pkRX2UUVsfoEx4K3vDia
	 ri3j9ZSCfFUnw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93668C83F17
	for <ddprobe@lists.linux.dev>; Tue, 15 Jul 2025 18:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175260299359.17950.10268147230558523950.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 01fa8602ca1512e85f98420cd13793835d59305c289402161be1ede52a26a758
Date: Tue, 15 Jul 2025 18:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752602993
