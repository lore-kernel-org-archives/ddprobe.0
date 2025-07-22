Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 260A92E3701
	for <ddprobe@lists.linux.dev>; Tue, 22 Jul 2025 03:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753154394; cv=none; b=DLKuigVxxvqiQarO2uRKNgbpUqsMWlL24wH+neADST9Zdytu1CKMzyuVblVRzNqc5IaHlL6/wL7zDBT28dpffF9dir+OV/xPKhFT9SJE9+5O9VVDKgDqgvHl57Ah5Q22zexf/r0iofwnjoZtsW1IWFcc4eNJKqGxtZNMottL0pE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753154394; c=relaxed/simple;
	bh=zR5Gq7XMhAmAmfbETjmY0/74WTUFhsBhWQvcayK92WM=;
	h=To:Subject:From:Message-Id:Date; b=YBk6etaxVLT4QYY3DV82nrgcEgOtTKobYGgNAhLuQ8gWTFuvzJyoxYyrq6OiZKNN2aGF4gLUWuuEhsk9upmILlTlp+rNcIGAzXR7g1sLcJu5mTguzqTwUhBVhDr7HFWv505OnAeGjSP7BOhYtGpn6tRkUQbv+ymz7MbcMvBZIbQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e7nBh3M+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e7nBh3M+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3ACCC4CEED
	for <ddprobe@lists.linux.dev>; Tue, 22 Jul 2025 03:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753154393;
	bh=zR5Gq7XMhAmAmfbETjmY0/74WTUFhsBhWQvcayK92WM=;
	h=To:Subject:From:Date:From;
	b=e7nBh3M+tgm5M+eTaRGIfKWHxchWxheqSxee4L4DXrOCrAF/7cH+xQh6ls2Tp7Ssp
	 +SU3mRwqgDH+QVsrByC1WajhTf1ZgivI1WffWpSw3cLUHHZwPxnpb2wFW0tLqTsRvK
	 J99JD2WK7RJtgfLzUuT4fCxad1CQnbHE+hhXiNBHMh8jvVMfKmEu1hLMkNIjAw7Jn7
	 NWmc56eSXja8Agcb2o/2MLhUTkSabgrzUxQ3AzMism8pK7q8VRquQVFE+N1zY7uogi
	 03AM5ArlU/tBTnIuWBeFWGdxXa7PzpgDD0eVB1tZ8uGbMCVPwRmCYbgqyT+uEikai8
	 VNkF1lyvwc83g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 908CFC83F25
	for <ddprobe@lists.linux.dev>; Tue, 22 Jul 2025 03:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175315439358.15703.651244206365268913.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1863e7796c52607b6297970e2569a7648a0c69c776063cff2a7d5efff4f481d6
Date: Tue, 22 Jul 2025 03:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753154393
