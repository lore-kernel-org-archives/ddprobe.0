Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CD4828ECE5
	for <ddprobe@lists.linux.dev>; Sat, 19 Jul 2025 23:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752967794; cv=none; b=LFGVUZ+LlRFulr25yz+QbhPq8ZHVUBdKcM76KLKA6cRKvNcMwMPQFZuBqBgft81Rkg+r1oMJbXhQ9G9+u2BQcWshgA8lZBB/bGS12Fiybf85stNt20MKrIQM8xuAd/2uxT7LiHJzmfK/XQwndoqO+8VY34aq9gdZ0zPDTdS0lT0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752967794; c=relaxed/simple;
	bh=xzoyVzsavhLWqbVype+mpDBJMFhE4yDhVP6ES813JHo=;
	h=To:Subject:From:Message-Id:Date; b=Z3Qt3kHavnwShewkAW/AIwpLVzyqIYUPVS+sUACsFVrHin9DDt7tLCg8KqeZrh0umCJBmX1TRQfJ4Qc+R3yjUax79kZk5h7EuqwnolBXnfe4FWwgnOOlTvfXJ+tveOnbvYdZD9bsGFzrc7jv8vA0QmkkVYBm0msG+kKONiCGUC4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=S92VPpLL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="S92VPpLL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0EE2C4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 19 Jul 2025 23:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752967793;
	bh=xzoyVzsavhLWqbVype+mpDBJMFhE4yDhVP6ES813JHo=;
	h=To:Subject:From:Date:From;
	b=S92VPpLLlg0fXZ0zWuNS6P2fOkI45dsutc+E7AwhyRPZMlul6mmjbiP/5AHAI/bwa
	 pFeTSZYd44zKx+RbNcfn/l0DZgpbYFQb5imhA5LuL4wuZ+201VZS1t8x/SbVqN3+eo
	 fVliSwm3+EvFbt1UUDRlWs9TXRTZAFci+nw2Kh/XuSiYJbgz84drn7xeJDkAmxj9nV
	 wtpf7ayiEtRnLnJcrMvZGwgbILdzn5103Bz7lla/nfrnmQRCoVXWRn4NIfUPcjThy8
	 wiNqLzZQnfanh0i/Bq5Yaj7/IMzspyt0SQbXy/sI0Jt5kSyKPHITmAIz73SozE5N1C
	 kcwWD8DYUcT/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9104FC83F34
	for <ddprobe@lists.linux.dev>; Sat, 19 Jul 2025 23:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175296779358.20972.7873646205936442785.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f56d4cc13e37a7e8d0642b0c0a15570fa0f08a89ec8cc21e9b451b304ffa204e
Date: Sat, 19 Jul 2025 23:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752967793
