Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 112051624E9
	for <ddprobe@lists.linux.dev>; Fri, 12 Sep 2025 14:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757686794; cv=none; b=DwkclM0ktCJ6qBwqcTBQmfz4u3nU6OSg+R+cmkvkxxG+z4Fux+ZkP058XJNMr0kmx6Cv1h+rI+EOB6ylKX8MBffevlmtxSp+UHKIjay8JvYiN/RJC5HKnuQUYA7KCgEiCrdkLSpJCyE+8GkLrJU0++eLk8HcoKXfzhtVUEpjOUo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757686794; c=relaxed/simple;
	bh=mFYXIQXJFwfWUZAmJByD9bBy8kXVMePkny776VsKX9w=;
	h=To:Subject:From:Message-Id:Date; b=bRn6Tkdp88Sxtj9A21TOMWQciBgPueLs1FhhhfPIUwleEYCeLwqcS14o6Td3GGsVIV2EfMVPFJ9TreIY5u6yf3gRjP/QVtVZGPMY/sJk+okVIqh4tdWVqcWKmWupPlU7tjOGqkyfIZTNMVVQ1FLj8Aan5snP3bNR4e76xJeVdBg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ru1v7OMp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ru1v7OMp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C72EC4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 12 Sep 2025 14:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757686793;
	bh=mFYXIQXJFwfWUZAmJByD9bBy8kXVMePkny776VsKX9w=;
	h=To:Subject:From:Date:From;
	b=Ru1v7OMpoARoNObHWoUziC0SH0CG4hNnzhmFMar0kTgz2xZozqtUbLFMjN/C4gd04
	 zmBJZ9wMQKSh20vdt3+Ur9S1ancE4miT2UJHOUpZtoOniagPBQ827+LnqVSzCqKSnC
	 /EXy7KMoWcjT8TSb/qqbNSmOHI1MK6qn6G2r87nOyXTpQiq89Bp8f+Pwbd0rAab//0
	 x/Oss6uAQeDULKxvUOtp1JufUron3K35jQwkj7E+guy7kUVMkQW9BQ2EyhrYnLDNsq
	 u2Fh9lbNnRM1Q05T4SPbPiPdXhu3VaWOzTMuGyLhV8+fFXMELlkTCEFoRiH1roWKho
	 qVUqOA6foB3+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EFAFCA101F
	for <ddprobe@lists.linux.dev>; Fri, 12 Sep 2025 14:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175768679357.4548.14566779341508215611.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c0e0e11d778d85460e8f23b99f1912ac1be63d486f440fd06d5119c4acc285a9
Date: Fri, 12 Sep 2025 14:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757686793
