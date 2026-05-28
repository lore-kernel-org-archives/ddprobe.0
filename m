Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34D1130DEA2
	for <ddprobe@lists.linux.dev>; Thu, 28 May 2026 17:52:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779990754; cv=none; b=KVRDzqjWSAUh7nMSYQ6LcxYN534Ff1mNVz4liXDr0JnyZsQOvOZWUsbmD8x4Ync7aLcM9/G0NnxopXNIfey7pMaN9tQv3eCmPOixpAvMzMgsocjBoYy/mYfxg7KSjIVRCj7YpGDEzhm79jVmGbHrHanhYPByJLTz5CWT8jMhr+k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779990754; c=relaxed/simple;
	bh=TEs4FAXHfkNe6ZQWiXfFhnKhJcsQakPHsZ34bDCA/C8=;
	h=To:Subject:From:Message-Id:Date; b=sBwkZXhJ1OHeCVLTysY+ckEAhGSRWw7pI8uPdEIkmuOfg/G65NtbvT2okpB8ufXo9P4A4BwR4m3LBwdLQOpmRs+IAaesI7xgLNfhTpT9E0P5RazL4u2Y9aVeI5d2eEts0pnqrXHd4a1bWafq3yHlGes6KyCFHiQellwd8yIZLyY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hEyzkCZ+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hEyzkCZ+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0F09C2BCB4
	for <ddprobe@lists.linux.dev>; Thu, 28 May 2026 17:52:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779990753;
	bh=TEs4FAXHfkNe6ZQWiXfFhnKhJcsQakPHsZ34bDCA/C8=;
	h=To:Subject:From:Date:From;
	b=hEyzkCZ+5EbZpped4tssF24JMj5qxOOyw15UmDwhKZjbqzT7MLSuFEPT+aswdkcNb
	 MDeADV+6Snf6+KdZ8QQkep8uBChEyjXZ+U8gwbw3KXbv/sN0jzVvPpJQC3XvIYNsiA
	 nr5O+xH+jp3SPhaTwbpXLwsDHq0WtLOgH7WviPG4NbnKgF/Fm0/2q5OZsJozkmRnlI
	 0+24y6NgipC0WBwgLeE+IWxC5yolqV+dudKvnbRqXyyivNpq+tJ4RuUKJnxoTKbp4c
	 GQ0h+3CSytOkw+dr82m5gvIV5M6hOD2RfedODQvZhLRQzE5NLgasUlv/7pxsLBb/tD
	 zVmEMPDH095pg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7C2DCD5BD5
	for <ddprobe@lists.linux.dev>; Thu, 28 May 2026 17:52:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177999075374.27876.4129282459017932405.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 79d7a29002c27106aa7500ea4fc809944bfb1dfbbcf14b6ebacc6db9f633fc19
Date: Thu, 28 May 2026 17:52:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779990753
