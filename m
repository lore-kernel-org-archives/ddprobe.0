Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EA802A1BA
	for <ddprobe@lists.linux.dev>; Thu,  1 Jan 2026 20:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767300834; cv=none; b=r4fMCZzyX9JWYQ3l34OMq89mNybNdoVNGF73TBw5W4aihWEKFNx2qNMGVBIDVW17SXL4TysNLbBp7qJcOIV9N33KLWkvH5eDcBBIcRFGZq6btlTF/jsM263+pjbQcC1SvK7CawnTwBMcRn4i0wWYUTY+7PwYSNRF5e33R/oIg6Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767300834; c=relaxed/simple;
	bh=svea1xRL7hDwyP7XooO/h4UFB7QK92ANHx8fuKl3RxQ=;
	h=To:Subject:From:Message-Id:Date; b=ijT65tcswQQ7AUCIrgM16Ekf0JbAQAFRcrzPjUlh8pc+nfCAPXS8LVieW9fVKJZqBZdXcaMl+xGIkHTSY9e/N1OBOKRhrAa9Q63cCGpEMlS3iphv88Wi7akt2biOYfSgv5/OZIV8JxmWAT/wkTAMG7xH7JBz1X2RIKGNAMeUVVw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Wkwm5Ta/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Wkwm5Ta/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A512BC4CEF7
	for <ddprobe@lists.linux.dev>; Thu,  1 Jan 2026 20:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767300833;
	bh=svea1xRL7hDwyP7XooO/h4UFB7QK92ANHx8fuKl3RxQ=;
	h=To:Subject:From:Date:From;
	b=Wkwm5Ta/+RCU+rlrO9wnoqGdVUjN+0yue9CkRfyk7s68q1dCBeQXeeYFir4WBRkpa
	 FWXbat/p/KU/cmnsT1x+bmh+hQK9FhnxhhSjVub/bbcd3sO0Q43/AyEJcbL1BdtvQ4
	 8iqv2hJHV1MiPMJy3jh/tbdq30qYbr0vwpKi5BBUqcyg2BcDN5Nj8lNKWHBoHSr5UW
	 +7jlQvm5xXS0y2AG5KsMg+kamDfcJzYASAZ4ylWQomHw5TVhejewUy7fv1rKQZwo2H
	 A+0oZp+4f3wVarxxzXvW+4pk25M8CXkT9oCpKpmldXJ2LqhbIzRlJl8k1gV6pAAWlU
	 ZgwUFqZHaBCpg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94690EEE25C
	for <ddprobe@lists.linux.dev>; Thu,  1 Jan 2026 20:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176730083357.20881.1182663851205726183.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 94d1c1d383f8b98bad36fcfd539d5c260acd9a016dc7b8b4b6cac910b9651ce0
Date: Thu, 01 Jan 2026 20:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767300833
