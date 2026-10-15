Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5CB952949E0
	for <ddprobe@lists.linux.dev>; Thu, 15 Oct 2026 08:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792053034; cv=none; b=eCu1BrIViA6QgJvTmNWx/4rC1Xeiisq4JTqImwpKMqksZx3fV65WJrr9kc2Xqq3ojSyewECkbfdUrvkUYrR76lT5I9/beT2KHrToZljQ499kWHOnVhc90IKLjHI2ALXRvdnoyk+Ee89nBQVhYda5EGGEhdLbShPLdlpSH91xz5w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792053034; c=relaxed/simple;
	bh=xN9EK0IPrtADfFA6Tx4PKmVQHZqXJUrqeQZEbOFPcQ8=;
	h=To:Subject:From:Message-Id:Date; b=P4/WvZ4EFPtn0rDMiidqZYc6sFMkp0ATWM/JuL8MYJJrooiJLMrno9ssldukcScaed1nzTvdXQYcm+IC371Zh6mUiRz58NcEtI2YXAfBwt4CerBf336GgCkeViHvqAHX+cwmyPing1Ma+5qLP0rKy94+y+GMwqDvdxs+u7hhIxQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mNfaDHRH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mNfaDHRH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C72C4C2BCF4
	for <ddprobe@lists.linux.dev>; Thu, 15 Oct 2026 08:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792053033;
	bh=xN9EK0IPrtADfFA6Tx4PKmVQHZqXJUrqeQZEbOFPcQ8=;
	h=To:Subject:From:Date:From;
	b=mNfaDHRHO2LRCuOEOyW1cZFt4m5lrPe/2DIU/OSDCw/HSaRb6sURmqgPDmlNCC4oV
	 AYuEo2B5eL2C/ctRN/WoGUcZ3xvn4u9zNYIciun9OPR6U/t7Jhtj25oJETjutflQwG
	 2REjbdG9mk3z+FZhA2cn1Htj4kG+biARvtaiN/c0jC2JVE0XV3GuvkxCc8WejrwROo
	 0x7eq2oN2KpjJZ9RbyiGbuasd3FmeEvMafrfH8qCtRvCXX3nP7scRifkLXP3Qa/XfD
	 JJMJ4s1cx1v4006c09KI18BVTMjiPq+v22uKQdVOPsJF5kUdZYtg7C+Pd3+j8pKGbO
	 nGY6AmiATamIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE0E1CC6B2F
	for <ddprobe@lists.linux.dev>; Thu, 15 Oct 2026 08:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179205303370.29125.9912574286047096413.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 91effc948f13e73b691cdfb74f93b0d7c612d900ec833dbf7ff6767100d69506
Date: Thu, 15 Oct 2026 08:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792053033
