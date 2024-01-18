Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F2E39250EF
	for <ddprobe@lists.linux.dev>; Thu, 18 Jan 2024 21:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705612097; cv=none; b=IXSRbcvtZiXUGYfL3jxJx79AmjdOTCSgCMSHrPIuuEDPuAZg+m0QsCOaIdPRu3tGswHni+Hc8ibgHQnBfmoGoDckFDHR92UkcBSCCtaLfBGpjRNlpT2AVEsPg8dLyN4UrZUlmNv8yXmBhVsVk9aDUxw04/Vtv4Pw9IQF8Miv/o0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705612097; c=relaxed/simple;
	bh=Z6zjRlUfxYKVB3YygTsQEykOB0jcVgFlQO1CF2OSmiw=;
	h=To:Subject:From:Message-Id:Date; b=lTMyyvZKULkCcs+jOmMiBf+yoTa3A2FS7TzRki7NMNdvXrZrvx0ilpYXJ93WPH9pCHOaWWqR6WDU7f6Vyv10A+2ylSj+coJ+OCsmeCjgimsAqkqTMeGevZAYGw3dlmBVEJpBHk3P53dLRj1/hqo3yHRj4ZJxoB3qrQPoDfaeebY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gHPMD0G0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gHPMD0G0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 73C7AC433C7
	for <ddprobe@lists.linux.dev>; Thu, 18 Jan 2024 21:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705612096;
	bh=Z6zjRlUfxYKVB3YygTsQEykOB0jcVgFlQO1CF2OSmiw=;
	h=To:Subject:From:Date:From;
	b=gHPMD0G0R+zllWFzWWcwmtURy5qLiBfCvZ0hfzephRkjzsKkwr/EP1R642vTERrX8
	 atJyKCP/HpoRmlvYJrrI4lh7UvaEnlMijd6kgm6UPa32XeQP9b1bnHKrB3Lr667YYc
	 t3qUvNE2cD/dTX1TVxUuJS6eldXwrBbp+70fzuemG064rJkyvmMKUT8qMxHL7FcNZl
	 X7Roru7Bt7SQlZ3xxciKmGwhOizswFCVlBW7pobIeAdc4Zuk0fLStGgyqq1h/qaInN
	 wv2Pcj7D6XeZJng1KpsqZm9iNOXxFF6kEBlEMuMELUaB/pJoLwtd4yLma7KV8bYJu1
	 LSGwJ3pz4NOtA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5ADF1C47DB7
	for <ddprobe@lists.linux.dev>; Thu, 18 Jan 2024 21:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170561209636.22032.13034151585184558398.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ee97bbb5afb53028af08e9440158f875e7ff75ba2145e2cc134acd311a1ae0b0
Date: Thu, 18 Jan 2024 21:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705612096
