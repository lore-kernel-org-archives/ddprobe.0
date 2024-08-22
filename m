Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DAB91CEADC
	for <ddprobe@lists.linux.dev>; Thu, 22 Aug 2024 17:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724346354; cv=none; b=UkFAWlACvkSB3dyiNyItbLt2a15yU1qepjTyv8ip3qK71Lbago6hqLR97eNpeTYIUYP3I6cibhpVgJJNDMv8JSMEsxJC++kmpH8tUMrXPxnKVJzZu7SkQh/oRtKKrPzcX8DhzuPNjYbeXARVTNveeV4/WF9vIZ7SkZ2Ndv3KPas=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724346354; c=relaxed/simple;
	bh=7gNtc5hnL2A8mECoSFlAlCopswJsdHbzg16m3nUj3yk=;
	h=To:Subject:From:Message-Id:Date; b=cqJjEuefSZl7pAtKE8EYxAGn33ZzhDBU/jRC0CxEB6hbRkhnxNiP193bPwkns43DJfhSavl/wAJSRrneXLWWCR+Oj7W/fQLT7iDe7DWGZO2z6yDu1hb5sh55ECfeYZL/+VmrsE091E4Ffk7Dr0Ygk1G/16rUiCNz50xaD92XN3Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gOPcR7WI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gOPcR7WI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9D25C32782
	for <ddprobe@lists.linux.dev>; Thu, 22 Aug 2024 17:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724346353;
	bh=7gNtc5hnL2A8mECoSFlAlCopswJsdHbzg16m3nUj3yk=;
	h=To:Subject:From:Date:From;
	b=gOPcR7WIS6x6nHtxM/63o4xCEd/ycv/dIqoAl3ouNzUrgPc6TDFj5L/XdRzwcp60g
	 NR5mPmUp05Gwtldxdbwd6dUnZ0mmdu9xALLlbFm7oQBVRpibdsJpMTkDtywT7Ao0bK
	 0DChsl1GoaJCJusuhPlHwj3gstFgfK6E6VKl1d/wh6P1OYY2adNiogwKwQmROXEOza
	 Lulg14R6ljMz6ilue/F92a7re0YJdtv1VkkrQwX7SS0cQjXVo3nRnYBfZ9rGAoqGqR
	 E6O8+RQEunYWjoC5LveWXw/KiK0MqyEQGzAUrjavI6tYW3zzNxl3VLHipCa/35/Ege
	 hn3aFMCek8T0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 998E8C3DA4A
	for <ddprobe@lists.linux.dev>; Thu, 22 Aug 2024 17:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172434635361.20699.12698689382059211563.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4d8cb012742a0a3e2308569a16e944402dfca7769d9c64d941d58d1a1ae8b5a6
Date: Thu, 22 Aug 2024 17:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724346353
