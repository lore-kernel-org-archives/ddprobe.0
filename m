Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24C6245038
	for <ddprobe@lists.linux.dev>; Fri, 31 Oct 2025 07:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761895194; cv=none; b=dgDX3xC64KCeB/49Q3Ie75SEGAc3Rh20K52KYHY5UBjZ5/0I/SnWg6ajW8W83C8qma23Z7r0cCvusRVuFqb2Y8boi/A5ODKT9cYXw5HFIPOJ7k8fSn73vV5iGMkRj1xpfJItbAb2ZEnUemFPJy2iDdrbyvsm3LTEhIYncI+nqh8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761895194; c=relaxed/simple;
	bh=r9mtUSg4/OFa8BchbUgYZ4ZqNYVgmmWBXYGpRXC3lZ4=;
	h=To:Subject:From:Message-Id:Date; b=f1gNqJHxkqhFC4X0SDJ9WVP9lrX2+v6JyoqKe/1ziGo+OO2PCBLKd5UOslJifUQnDRoeHrBctNC43T3MR0Ee6ka/+zkvwx5S4La2IUO6x7xl8BaNzoQR09bEHaTFkcVd1CH6InQOE0EERvZ09KsdinCr2WHv4Qe73I9LvvDpRNc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GcE+hB5m; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GcE+hB5m"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B66A5C4CEF8
	for <ddprobe@lists.linux.dev>; Fri, 31 Oct 2025 07:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761895193;
	bh=r9mtUSg4/OFa8BchbUgYZ4ZqNYVgmmWBXYGpRXC3lZ4=;
	h=To:Subject:From:Date:From;
	b=GcE+hB5mBPTUALHyLyW4SR24jUtcry1keRjryh+u4+lYpvHoOV2SW4AUUh9KCWuci
	 5Zq96++qHLO2TI2LNJB2XWimnvn7CM8R93Y/WXghCN7QniaK6FBDD4WsssEHQMA6k+
	 q6mb0uKdICNeXiA6G8ulQ2pMxNr8cERDAQaW/wUnFSt17c5kfSmHx7PcT3jT62v2qA
	 QhhqsE46wDnM/RASKKQxQeWNzCZlqGSmsMe96KNKExlbYk8claduY7X8UAfkGcrlzJ
	 ZvV8OgR+LeGCPGzxb6lJ3muXG8k8I7Yi/AwkRpg6BGtuquznGxTh9h5uayCcYctKh9
	 BguuEeWBBTZ4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3213CCF9EE
	for <ddprobe@lists.linux.dev>; Fri, 31 Oct 2025 07:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176189519363.28546.8708642250461408538.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 55fde8833a2d57ebf057c92ed12e853e745a18e7c2bc0c60aa240eac2c1395ad
Date: Fri, 31 Oct 2025 07:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761895193
