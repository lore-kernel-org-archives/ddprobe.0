Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A8032367DF
	for <ddprobe@lists.linux.dev>; Sat, 10 Oct 2026 03:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791604234; cv=none; b=L7IP/MYyRq6A5zlyu4JPACSgtiKtxFQf5MF/rxAUhgNkwujYsYEkvpRe+Y5c/e6D9nZV5fhbcmGDQ4z5lxKHDjDiUPOS4fSnzDrt7PFREHBDh0kBWMQFRxW9BeUQQ2YnbsMoyxWgdf0m1slnTW9EiidZZmJr01+9pdD5//YdaNg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791604234; c=relaxed/simple;
	bh=3+IIJVdMkeZZ9kn+2IjPMSG4EAEasaS1xPZrD+u64gA=;
	h=To:Subject:From:Message-Id:Date; b=u8QdCS3YFdVinXuBi0shdiJeBe6zWU0Ku+x4nVdrXTg7U40qMndYCSSUPh11TidCNE+d2o4QMLH1zcQAEYY+vHH6OGMuUA3JnVMh+PlDl7uLjyUOl7p9cDxY1cKjMOrLTfNx0qQUerHvyjuf1mqgSus1xY/ro3yTBtaAAhYDdrs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OXGVeaQy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OXGVeaQy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEC49C2BCB9
	for <ddprobe@lists.linux.dev>; Sat, 10 Oct 2026 03:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791604233;
	bh=3+IIJVdMkeZZ9kn+2IjPMSG4EAEasaS1xPZrD+u64gA=;
	h=To:Subject:From:Date:From;
	b=OXGVeaQy5ZQumCcLarL5GkWJJzuqXMCElBLYdXSUe2Sz9jjY4Ozn7Fth13RPexqIu
	 suZkVhAacLcRRTsp5Phx0kFD7inRYiKbzy/XbFcgWDJ95/CrJSRyx5rxg9MYZVrQz0
	 XkZVV2QKuX+Yg8U4kB7J49o9Bm0GDsBvVLpCawJW2aD1Cifus4/yCdkuQ9P6WpSK/4
	 wILW5vV/QMctRTRExPklaXVEkfHoWWSRtrd56lgYKWOVUgD5YuXJgw5B768ajX9ZYK
	 ITplaI5CcXyV3d5Ccvdxf6igHDdKPUI0lCUbN3tNqDaGcOXkqxYs+ZCcynIQOLsd6l
	 9GeJFos03es7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABD70CA6017
	for <ddprobe@lists.linux.dev>; Sat, 10 Oct 2026 03:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179160423369.5700.13992595930626724724.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 76a56ca79e5f5638033d21134560397dc15cbedf8f8fe5edf9ec04851a3fc492
Date: Sat, 10 Oct 2026 03:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791604233
