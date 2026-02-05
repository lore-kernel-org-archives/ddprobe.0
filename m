Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AB043382E9
	for <ddprobe@lists.linux.dev>; Thu,  5 Feb 2026 08:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770280434; cv=none; b=VLt3Nkjqf/+A9SQ31TDtfzUVlXVvAV3Nulwq1UfnznAPIEFKy8i5LPh88Ez0kdnjobAW847hzSavYcm1WiKla4Rfrm8y9m/mYkp3YK0ZfS90HF2c9fo+bdtT5R9mx4d8eoAFqJ9+hQbeo9peoz9oXwhT7X1+/qvJ0AGc7O/nNX8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770280434; c=relaxed/simple;
	bh=2sqf6oIPT6IQ9T804xLH5ebnHSGYqgP4tsqox0fZF8E=;
	h=To:Subject:From:Message-Id:Date; b=lwvPjyOzDe0bfY/XtHWarMxnk4sDtf4eNpqTqnqh/5YA8pH0ewY608lXa5RA7XWNcbekIM67Jz5Yjbj6F4+bqDFAjNDP4IQd/689auyHPtyMn+0D84a/FQSVXnQnMZkRTfnWTllqheKnkUSKf6OICXXrf+2q9020DspIMKFDzgE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JMg4aWSY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JMg4aWSY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6BA6C16AAE
	for <ddprobe@lists.linux.dev>; Thu,  5 Feb 2026 08:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770280433;
	bh=2sqf6oIPT6IQ9T804xLH5ebnHSGYqgP4tsqox0fZF8E=;
	h=To:Subject:From:Date:From;
	b=JMg4aWSY0NvKe4EXb8HE2sdDZIDg1XepLP2QtVP6+wZcXuG3Z316lSUaV5MZJc0FP
	 ZxjCg3rMk+YxtTeiNEpCEQCYY9G6wXXE4OW0FZyTqkiVD1TSsZs/ifpgZUAM83R+Sj
	 8LrtGORe9WSxHoPCND2vdAtdNligLNIMQPZjIFRK+c+Ui0y20SHg9C9OFbGHIXOUXt
	 FT4LcDFf6BND+jW9vVkY8HnuiMxlbOLSWZtPc5vvZCSEdE3sdsDiLUmbVdjhmiCcBz
	 xkQHrUjr3qyScS2ZhBg3Njw/aWaC+b/5ZghyyScoIQ6hr/Jt+v8yEUh6b3BfEe2+Ki
	 /1Mzjl8h3mPgg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A60D4E91290
	for <ddprobe@lists.linux.dev>; Thu,  5 Feb 2026 08:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177028043367.22220.7209021190186249441.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cadc2bf3dd1afc1545a1e1555761aa27454197805a62ec33b5cedf8840aa0514
Date: Thu, 05 Feb 2026 08:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770280433
