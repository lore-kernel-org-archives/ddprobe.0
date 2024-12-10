Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22EDF1AAA0E
	for <ddprobe@lists.linux.dev>; Tue, 10 Dec 2024 16:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733847354; cv=none; b=dUqPf7ohbjUQhdb4OV+jIps+kC+s3ozADDZpALGx8oLdN+sKRNvHtT0PtzKXHInhErq5xPJwtKHHPeuovRhPS2ejL30YyLrdNB2g5DDumk2PreCTrwPm31s7dmQziGhOT8JBAmrYdfH18gJDYwaOzZQFfWtipiteECozCh08n3g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733847354; c=relaxed/simple;
	bh=q4xHVzd0BCFVwg3jWKVO9K+6P+m5NQVIEfUGFv4crqE=;
	h=To:Subject:From:Message-Id:Date; b=nREYTz1N/5fEuwYeeu6aEHI/g+1K3juhPzwR/++XK5NYwbXVxecKz0GGYdvw8OlnepcTc+8Qbe7V89alXB2HHemP/oxZ5Okc5Uyw5w7Qrm8Wrlsy+sv73iMckO3whSJGIpQ7ESNdrKUN/KJSFWBh2p2fT46CsANOoSO3zuJUHLk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FryWYLd8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FryWYLd8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF624C4CED6
	for <ddprobe@lists.linux.dev>; Tue, 10 Dec 2024 16:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733847353;
	bh=q4xHVzd0BCFVwg3jWKVO9K+6P+m5NQVIEfUGFv4crqE=;
	h=To:Subject:From:Date:From;
	b=FryWYLd8P6wpKFwCd1ojrWzQZK+en3gX9lbErt7eMEzi2SA/lL/2z9lZE1XKiKGPn
	 cBWpkRFcFY/KKEmdeX9NoGCBZpF8xusbzLZ8WVStO1gLfvy4bAtT2pHxW5Ha+V0hpb
	 7fCkrqwOqosh5NaIiS2o+CH6VS5huUntZ8S67s453UOBYClrbPpiwJkq9krv8Mk3Mu
	 hPvFzyCROIrcjQA4A7F1FOywxRYRngwmkDfU0GRqDzNgTAfNfyVutjS0eK0yvvnZoj
	 vDITtMWueETerc8UZn6M+rpXiwRmaNKkvL20HfmRVcg+dId1CLwGqkVfUrA1U10c9r
	 R8HFZ+hC1Zoig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BCFFE7717F
	for <ddprobe@lists.linux.dev>; Tue, 10 Dec 2024 16:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173384735359.4907.12851121394803505505.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fe3b8eb2994d2cc3ff8c704d0cfbf66f5d032aad6fe739c3bdbf9b51052cb401
Date: Tue, 10 Dec 2024 16:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733847353
