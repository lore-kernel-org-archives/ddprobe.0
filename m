Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45B8E1096F
	for <ddprobe@lists.linux.dev>; Sun, 19 Oct 2025 08:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760861994; cv=none; b=stZCCkhI10FkUdZFEIchat/XFqCAWtJy5gCBMIDeug3J5jpQk8pIVpvZ9ABfLdiDzHPT5/tX3MjLdoGUJzrnHm6gUfkdSBQs9zzj2B0nIX6ZrWb9iqUsRYjMCmxk0gurWvCU8zE3TnS5udAMpy54INLEEGZpTpNwAxaOOUDO3C0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760861994; c=relaxed/simple;
	bh=dpsxrZ6dn3xcq5UXQvjCDHxzLR+1hPy9yCkB94J2S/U=;
	h=To:Subject:From:Message-Id:Date; b=I0+Z5Hqc+JGJYrcYOfdtkZ4RQSUbUGUbkfBUmYq74j/cwYhoNlguym7pmnfZ9Vhxhl7F6bq/i7e2gv0RruIX0nL9I6ySqeQS4T1qWN+eYKvm97kIubhvdzetu/eyAnX9zuif/PjmD2wC2BimCaPfHAzMQg/KrGJp0r4aLDe8+jA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Vrc4EhR5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Vrc4EhR5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7385C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 19 Oct 2025 08:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760861993;
	bh=dpsxrZ6dn3xcq5UXQvjCDHxzLR+1hPy9yCkB94J2S/U=;
	h=To:Subject:From:Date:From;
	b=Vrc4EhR5AhAkN54FPHPKFmPzjkKw4DAT5ASyxouEZkv6ni2qnRP1KJG3FnDlabfsN
	 /IWC0IRQTPvWugC4intAwK9ZXkqp0/PvHjOdVEwRmRTB3VO/6JRz4Myqae0GHNz+o6
	 wvIGHl/AQ9+FUBh+42UCbLFW8kOsRnYOqQmXfI7440s0YAcjJk4VmJyb0PRXhkd3HO
	 NmBY3HKX/hhnKIpbq9dM8psPbgwvO0zaLJyLZ+q3uZHIEKc0TQFL/MY4P/auuFfcQh
	 K9pSenlKu5gpNVniimunl/lN0N0f43EkPtpVfUtjpG8OgqzbjohjegRXG/sPALnSK9
	 EPIvICn2vwSiA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A5CECCCD195
	for <ddprobe@lists.linux.dev>; Sun, 19 Oct 2025 08:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176086199363.20298.11224925642514742000.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bb345b8a11d80f00a65e240650d16f3c01f4b414df3a8016dc9b8f62c300d5c3
Date: Sun, 19 Oct 2025 08:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760861993
