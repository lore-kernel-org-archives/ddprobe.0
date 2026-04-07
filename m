Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23AA870830
	for <ddprobe@lists.linux.dev>; Tue,  7 Apr 2026 14:05:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775570734; cv=none; b=FDn2FPM16MJ0jsWjc+IzZ0MDcCStBlmMluUBLrG12BjH87lk3N7oKR9tkGX1C2/HSwXkgxrSs9F68vHwpbegLOKa+VKtTp/XOT1xFrxUkEqfU1ExYxca7clZbYEtgW6NUKkRE637bjecXQcxilFUJ3lvSAMAy+h5+bkQfAvyDbk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775570734; c=relaxed/simple;
	bh=v1sNaB6fbslZg/WhgH8sXuRIm/UezYiUYxCQlzjAjjw=;
	h=To:Subject:From:Message-Id:Date; b=QRQtSdYa7jVq+zCXdlw5X8RRlQILIcDFZSmnL8UJONgRhC79DsAnaxfFQwd0Xg2IWHTmKorwI2VtCIQbhXMPbKD/R/e3VLsWEJ8ojbOagWTsJhXZkRlPpDbhTt4rYvm2q4unDYiOUx7GCZguMmd2R60Q9s5egrA/QH8BRzWgxds=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GxegCG3a; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GxegCG3a"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0164C116C6
	for <ddprobe@lists.linux.dev>; Tue,  7 Apr 2026 14:05:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775570733;
	bh=v1sNaB6fbslZg/WhgH8sXuRIm/UezYiUYxCQlzjAjjw=;
	h=To:Subject:From:Date:From;
	b=GxegCG3ah1o38uFrxxwDLgIoB8wR0eJbE3UbZxPgZ6lwLq5yBnPcj39HFQSyt6yhR
	 EeT3aIqYmUSbqf2HGdBA5Z2XynxEnpd4pfCfA2e9LDxNIVxsO2wF+n+xk+nAK+5b7B
	 +AKJ2tRQCGa39jFNm8eeep1nWMBPMD9oXOyQZ9RqGhlLoRhIA9ytj18Shz3wHdjS1W
	 oArM6XpnwcerN/i6RvHgrBb45DpBlNrN792QC/5jcdVBsekVvqPmqD5xowZcdZ78JL
	 WqsXwob1LG6dZAX1QfnwcQ+oXx+/Pos6lfoz11e751a7KCkzdr0Ke9vCRW72Vcpm1Z
	 g3V9hUDave6gA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFB0AFEEF49
	for <ddprobe@lists.linux.dev>; Tue,  7 Apr 2026 14:05:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177557073369.27930.3916233655407706717.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0d9428ee2f057a5a19c686db73219228e01239cfdd61a35cb745dcdcfc5ecce9
Date: Tue, 07 Apr 2026 14:05:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775570733
