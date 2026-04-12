Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31B9A1C861D
	for <ddprobe@lists.linux.dev>; Sun, 12 Apr 2026 19:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776023254; cv=none; b=N49nLsUgt7pzGly5kzS8Eo1SAm3uJ4xhDjvOduIAACEsdp7rGAJzOiAJFYj1W120lpALhdAefboA4HtZrTAMlK7duaGN4bdu7l2mbrpSRpJmBQAu1jpBZOuqkPEvV7bJXtn4qm9BW9T79K2NoZne/VB2vYFDfMquukL9/5F7Qxg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776023254; c=relaxed/simple;
	bh=bRat9B+FExHWi+LU6j9FaU5MtndTo7AAsSnHjL99hIU=;
	h=To:Subject:From:Message-Id:Date; b=muM8MWY+imSBEu00bJCd/edJQA3uiLtrUaXbDZ1rZ4Rp9/roU1ACw7gRvdNDtxWUwLOdf9frBic6I0SBJQVCm9U/6D893OeJ9zlIeo5qtJCI6ssjJG9sYzTuPh1Q5c6lJEiuGEy09xZtCffuafOObBNP4+v/Cp1cYXtNhIjZT3o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OTuzPadx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OTuzPadx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B90E6C19424
	for <ddprobe@lists.linux.dev>; Sun, 12 Apr 2026 19:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776023253;
	bh=bRat9B+FExHWi+LU6j9FaU5MtndTo7AAsSnHjL99hIU=;
	h=To:Subject:From:Date:From;
	b=OTuzPadxC0L6ZF9sVwqONmPNjrnCFparm2dxAK/ZJNciR4h5VvOO4u+nH2hBQBDrX
	 cngH2KVd1VRgcdMsZB9bH4A1NAjQ9CiAKxPE2MXdeUeVAHmBl29J1yr0/MigMtUkEb
	 gPLcth+QwSMQmFCTaD0dGpe0ua24bOLoxiqFV6/Hn+NLQ88GjIEPQSZZdbRzYNzz5s
	 8vpYpKkFA4Sirt/jr+C1+w0pUCYC3gxpmFMFUSuY1+YD4O6K79hA660LahBDMAiBMi
	 0Rhc4c6uir1dZ1WMQAf7uD48OW+foLBQkNE1x6itNGa1Qv3fwGYVUaFlrFhMeXMP9B
	 RU3wJbIZ4S4AQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9C0FE93800
	for <ddprobe@lists.linux.dev>; Sun, 12 Apr 2026 19:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177602325368.24200.11580283582156623359.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fd0868bdc6fe292fda58cdf4b2ca334a3e8a794f95642e4764854f3586d498be
Date: Sun, 12 Apr 2026 19:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776023253
