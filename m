Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C7CB18E025
	for <ddprobe@lists.linux.dev>; Fri, 16 May 2025 21:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747430995; cv=none; b=vDV0oq57XAxYOjgeSphtV/qCfE3AQfZbpRg/RqoG7eaQriUR+o8tX7WoW0deuoqBOQ+g0abccsFdYKihSC6y4AE/sMn5mPZXBVv0yc9V3vqfCoSnd44FQ2BOt3XRf2NaClurt/IXov5HwrNtpkD4391mdmV50ImO0tzz9uIN4c4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747430995; c=relaxed/simple;
	bh=VDUTh9EwJAhQm0mLMIEE0FnGnH+sSGvBNHYd4MmrDLM=;
	h=To:Subject:From:Message-Id:Date; b=lugsFSfmuxHv0l1GZYwVd5IGm4wQmM+0Mr4wx1B5xTJOZUW2ZqVbgSwxxwbSCvARAYHmhh0/mmzDUcTALxAEn31tJZ03qnLoDBMN0QTA0VBf+lqe4vlaVxVaBne1VeMjtGCETT3YT6g3ZLUvnLlYT7+nbuVdEI0xdBXaQkYJx4E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tayvItd/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tayvItd/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9220C4CEE4
	for <ddprobe@lists.linux.dev>; Fri, 16 May 2025 21:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747430993;
	bh=VDUTh9EwJAhQm0mLMIEE0FnGnH+sSGvBNHYd4MmrDLM=;
	h=To:Subject:From:Date:From;
	b=tayvItd/jiVXToP2rtNwLJQcmNFYYv2oyt3Fh+rs9xLAErPpCENhy0a/9q3W2hdSF
	 hZLYNhuZnRJmNgBalwHD4HKQRZikVOCCMBvs5zs/WBB+fim6Ip9KT833XTe8QS8yPH
	 8uJqQYNU0VHtEi4TLbBWhc1GZ4UWJcOCy4bS9FKGoyoNtROwD6zWnMkkhFUHdNWcjH
	 zfDR0xcZ1+citSzyAQoIb3zmg4YCKAuFTlltAY+kLcRjvu/nbQB0g9xZZbjJDrFHbr
	 WOz/iNigpPRxXZ/rgkgnI/if6zPulo9noLL6vu0spzqc5vLuBPnqW7rpI9Ub6rbBbE
	 kIdLFQ4XRuWyw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 969A6C3ABD8
	for <ddprobe@lists.linux.dev>; Fri, 16 May 2025 21:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174743099358.31639.12054647251286957354.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c7ab48b3c4341fce7db53e99371a86d1e3e0abe535094dc835f5950d3c670385
Date: Fri, 16 May 2025 21:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747430993
