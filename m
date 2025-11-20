Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D2862FCC01
	for <ddprobe@lists.linux.dev>; Thu, 20 Nov 2025 19:21:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763666514; cv=none; b=ENG5rUwnd2YKsqfszMG0N4M2DbNzcrEfsGQ+0pp7rUuXOsGgsxWn2WHqbJlGvF3JCE5kRyFkKR+aMPTtNfN013cDPWbDC90ukYQmKYBkE/7woH8FLcFwwPNij5flAfblLGCyxKQR//spx+fKXg5yXNXU2LbIefnIY/r9TXx7FPs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763666514; c=relaxed/simple;
	bh=TuTWMYRw7xbv1SUEyLoGD5G+ohEmGpaX+OV/9BiflMs=;
	h=To:Subject:From:Message-Id:Date; b=TqSPhiFkQs3ItaSNHh+TxVlcEIAo5qFZ2jlkHhf2RdJybitbcTmxNI1pivj0/5eSOM1hZC5ocNsnTjVJEUegN6IiYs2QWPv8R82HLnZwOa2YKx8EiJNdUV/oiHGWok4kw8DHLfsYe+moCoxeJeS1W5Ckoo1632ET0KkyVYSPh2U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DY2vz5xJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DY2vz5xJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A57C7C4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 20 Nov 2025 19:21:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763666513;
	bh=TuTWMYRw7xbv1SUEyLoGD5G+ohEmGpaX+OV/9BiflMs=;
	h=To:Subject:From:Date:From;
	b=DY2vz5xJrjPIWzUpUI1EKJtIO2KZifQC/UtiBHEBdrekxcKBxseBolfHhLd9M5QxQ
	 YTylxqTUf4mTP09uBNOovK6JHH9a6tVf3naEvx6Z0T1BLTVDy5oXypAOFWyIxHGbls
	 8UNVxQ0qQdXqMp/zEJ9q7bOYZMTXitg3Bd6zrqIeJwgZPGNkYTnP/r+NIFqbNf+AAX
	 kO7TB/N0o5nOV6kqQtzOdFLmnc8C1JUcuFk/Jmn2Wz2QRygbx+jHBLH/QpRtLbdLfB
	 Q9BUpZqJCQ2F7c3VMQUTZoNKNXqbRspYW85hYPB3A2q+B6zVWJnti07fLPzIRbFXE7
	 gOzARUJgWHMtg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92D11CFA442
	for <ddprobe@lists.linux.dev>; Thu, 20 Nov 2025 19:21:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176366651358.13304.1331440389725985572.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 48dc4a904b7172cf2f4a499027abf10d8bb79d0526e450e4480c8519cbac5105
Date: Thu, 20 Nov 2025 19:21:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763666513
