Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BC7528C5DC
	for <ddprobe@lists.linux.dev>; Wed, 23 Jul 2025 10:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753265395; cv=none; b=p63RXvdcR6VHrmT9qDvhSC6gn2ri1CkL+1kj3pHw6eDOIG6Gtb7xy9wj8jkxqhmyPNzdzNLxI7aSbxpcPE/RAFUvmzmuX9uCSQwn02ek88IkhSTuO+NGHTXFvIsglYSjWafAtkh9ZAOFRY7M560HHLzzfll4SLBrdSEqEwmCAQA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753265395; c=relaxed/simple;
	bh=HmbwcpSHKx0KNRDfrSLlJvuMl7dclXKHuRbwrhmLbKA=;
	h=To:Subject:From:Message-Id:Date; b=POOYApwoEn4RlrnKYQJUx/CKwbQOwmHdgSDdZUwSzR5WbxUoq27tR8w5A1vkbPrRnboOJXI7EsSAvWiPSlx6SKWpE/9YK0XyyfcoRotQ82qZhiBtkEZvDNIFDaNT+hhymlqyhTLZJSLMAWkEixnhcjacCkFq0sCEhzJbm9elMNY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q8yWq217; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q8yWq217"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0051C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 23 Jul 2025 10:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753265393;
	bh=HmbwcpSHKx0KNRDfrSLlJvuMl7dclXKHuRbwrhmLbKA=;
	h=To:Subject:From:Date:From;
	b=Q8yWq217tDpI1OKn7BDjGwlffOGI8/dU39qcNLEkdMkK57WgymSsauFtakG7YgCZB
	 3z8K89nzVUbUT+OQaFuwkcLe36AMd6AzGDMaEogtqyi8/FF1ATd8O53bhzl2uUVkwX
	 4BPPYcXg73z00nGeY8klKf1aIMr27fDxtz67rFq9DJTgxmDdDoJrWDA8mJgKvPOW96
	 M0E+hBy8pFwwr3efYaDGybTExt7bMXPYFr5Q9sn2/IYzrOwAx6G8O3wb7lmvmUA0hD
	 F2xPWOfTr2he3IrgiotKs50RLj4r7SP2KLVAp4kK7K71OMTRaWl28VDkpZw4xIjZaW
	 E7qIqSo+msyRw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 908C6C83F34
	for <ddprobe@lists.linux.dev>; Wed, 23 Jul 2025 10:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175326539358.18199.12664421725194240405.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f9a4817de446ab3cca73605a3ee82879d9735245c3ae3ec8cb2e61751bb17037
Date: Wed, 23 Jul 2025 10:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753265393
