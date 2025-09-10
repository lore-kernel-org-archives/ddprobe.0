Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 09BE4287503
	for <ddprobe@lists.linux.dev>; Wed, 10 Sep 2025 12:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757506794; cv=none; b=gqLGsFOldDkgdFxpLdDCxLCPQb/P+Lll3GdzxA+u5hANA/+8gi9XMijZhL6xgiUsMyFPPUL45HKsfnru37dPmKTkrnd1FAVBsdwpQIjmLhF+9E1ffIY2IrQc1JwiGeeYapS3JEUvhHHaB9Pzn8MLAPGx6b1Rd2aLDpiIXxH+Vg4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757506794; c=relaxed/simple;
	bh=wRrrfE4xIq2x0G+0jCz19GMnCtahP+zepz2jMHEwi3w=;
	h=To:Subject:From:Message-Id:Date; b=Gv2Gy1jUznmsnuPJgF9OVUSH818aiFfLSmnD/L1ZmceMwjSypG/yE4E9v9rE7wbD6G0nwyNoqxnD7EpZglBmUduHSKTVOEEBjCm1+7mxhkbjF1EB9N6xUsGx1fsiFmHMziZSzuO1MwtF0pgs2vZieDBOTpUzvCLFJmVvW9PxeWI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=j2WUQuLf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="j2WUQuLf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A29ADC4CEF8
	for <ddprobe@lists.linux.dev>; Wed, 10 Sep 2025 12:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757506793;
	bh=wRrrfE4xIq2x0G+0jCz19GMnCtahP+zepz2jMHEwi3w=;
	h=To:Subject:From:Date:From;
	b=j2WUQuLfeHWJWWzF9msLLxR07ooAqD9zliwtUE3S3AZXmsO997E5iOwGfvhyfG1N/
	 A8hVtkTn+XBzmM4cwLxelcmgVaNv9CNH4RsHghthfb9Wk3EHvE746NnxoZKfQIwi9X
	 nEi21azFDbSERvTJ93Vuu4IJfbvKN9ec2WiMFqAS34s2U54MASUTXzOobOTIhzK3L8
	 V/kVdkUV8ruFkK77b6rakpBJjH/fLwnvohkQqZ0hIHu9vQc+UpwcaczgPDQQbLj6wb
	 nKhpSCJlm6ExBuAzG24JLgkgA0Y/br6flEpJsAqDMIABrDq3nheHTiosWOf64gaAwX
	 oyev3T1HdxCGA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E970CA101F
	for <ddprobe@lists.linux.dev>; Wed, 10 Sep 2025 12:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175750679357.13107.12896922897529024460.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0742542a08971292a03a0e46416fe16cd1cdd30e282688485ad63b53f690cf84
Date: Wed, 10 Sep 2025 12:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757506793
