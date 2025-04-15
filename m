Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40D7D2DFA36
	for <ddprobe@lists.linux.dev>; Tue, 15 Apr 2025 23:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744760394; cv=none; b=Q5NYnCflHFPu2svmhdvt7beODsATP8UJyOIgIRpgitZsxJwwByDwbYt2ksNWZrb2PC9FaS0uBOfSeI375B9m2+bR7UKEmTSFPhkrMSlJbVkMSTs2vzETWSRPrumzEDgrTNkHWBFsduwGRitX3tbRGMaoSjicpI/4Bk8xLa2fU24=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744760394; c=relaxed/simple;
	bh=u8C31gfPGXBuLGdDI957siklDByJ0qD9t9pefoi1qiQ=;
	h=To:Subject:From:Message-Id:Date; b=NB5PuNkOaXizBSscvVdB2WoT2j4lIJkLXVF+224DDgKnSwVAflCrux1WBPV0j7kGYTC7WjI0Bv8TJprlDKEeSFnRLvdYR8uThO9gmQ3f0/zZrbmqwbQPSUcwhu7dsCykmMxLvfi50jlB8u8he6kxheMQWNofu4giaz67B7Tq3C8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c7w/ZDjG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c7w/ZDjG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5EF5C4CEE7
	for <ddprobe@lists.linux.dev>; Tue, 15 Apr 2025 23:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744760393;
	bh=u8C31gfPGXBuLGdDI957siklDByJ0qD9t9pefoi1qiQ=;
	h=To:Subject:From:Date:From;
	b=c7w/ZDjGCa2w+J0qQmDu5sCNWrOGCtYKzotea/uxexUtQ/ui3SU2JS7My5XROkZUY
	 5OiMRc20Dwy04oScP9F5eifi+dMz1tmp1rqgBXuYDndvvpu2/kwV/Kxdma6vWOGYji
	 MNCPBEdIOTwOKccVgZJ7usIpJyHF4qq0hYVv/Zga5kYjmcHfn50SSoxpTuwCJTymWx
	 5Qa8Gy/cVbQlhLBtu1QPeiQ+SGLUFtiotpexNN7qQQfHjlQLCgWQduyuWEIaxCqPNl
	 +/JBhxPXdg6vEi+xTgbngFSSb4UBzgeVgqyIFy+P6ugSvxFNd7M41mpaxYpnwQS+Dk
	 WYupmMZha7nOw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A68A6C369AB
	for <ddprobe@lists.linux.dev>; Tue, 15 Apr 2025 23:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174476039365.22651.8621389590344389991.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3c421cae047f3a52c08e7b153723555a03af4ca74e17859dff56e028a8755bf1
Date: Tue, 15 Apr 2025 23:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744760393
