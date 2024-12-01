Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DDCD11D417B
	for <ddprobe@lists.linux.dev>; Sun,  1 Dec 2024 14:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733061953; cv=none; b=EAf2uU37kT2iK+rgXOBXqZC643Mjd9zwFv1PeuH5KbGS+JZF4qVdVf2/0mYKwegTW8RzUpINwBw+MkJKslllrgtEiBrtty658OfctaxDvKvk7ZqJL3XX/tChwOL2facny+X8x6sZkZIu4DtJMjnthUDEnQ6UOT8YktSFu5GuVqE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733061953; c=relaxed/simple;
	bh=XNhwWFIOc8e25mhMVEy5w+YxqjEHlCRFYF0xJWylSIw=;
	h=To:Subject:From:Message-Id:Date; b=ugTDORASXXGZXcopSEuFxHQqWklZUZalZugbk613mPCjv8tFbotVAKfwlSiLnDM08zVvafmhSpFVV1tIZe6zAQW2OS5Hqw0RCwqeWACqHzSOv32Rn312Tt77UcbyZa61GvuPLQDf8mZnWy0oGsONjqVpsctzPhnN31Bk/1u5kRk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cIwisEG5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cIwisEG5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5C05C4CECF
	for <ddprobe@lists.linux.dev>; Sun,  1 Dec 2024 14:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733061953;
	bh=XNhwWFIOc8e25mhMVEy5w+YxqjEHlCRFYF0xJWylSIw=;
	h=To:Subject:From:Date:From;
	b=cIwisEG5XAItNiDUGHmzVPF3BHscuGsQosbbigIRHXyf35K0fswUOVEbgT4KuoCmX
	 YB0tYrPwnP1IsZXdyUy2ptadUnn7CnRGCFR+jO5hhTZlwIXSDb9AuPDUW/sCRhJl65
	 Za0q4qD8jjA6UayirUOrxisS5xcYBEnp8no6h/fAyAXX2YCnB6H9HkBG+DPREjfSxS
	 gsEv8FbAxCgILUCghlpAAWbQybxH3jYrn0sf7Nsiu1erRV/htDTxh/S0X8IDPNUsHm
	 hyM+xxU97tDlTqoNDU0bpMlCVvvqPUslI67Ut//FfZqhTuKjHMclhT8JhA73PIqpHL
	 fAB61r2raqnIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A16C2D49773
	for <ddprobe@lists.linux.dev>; Sun,  1 Dec 2024 14:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173306195362.969.11280069175426637092.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bc6b7f87230d88ed12707a5dde4283a9663e080ee5d7c5b7ad0557d042bcf104
Date: Sun, 01 Dec 2024 14:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733061953
