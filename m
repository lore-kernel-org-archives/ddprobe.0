Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0EADF846A
	for <ddprobe@lists.linux.dev>; Thu, 12 Mar 2026 01:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773280494; cv=none; b=d5uuLA8sTsaiMLeQeVSLvtmNo5GB9iTo15XKPqtuRr+q0F/85CXQ3iHT7eBx3jaj1SRtMTCyCFZpuNd30zrzfTO5wMlOIZoxmBQHutgiJ/9yafXZxaKybzvk7OaYJ00dfezQ0RLNzJf9YI5mzMq7NI0oRa33AziZfQ7riXEtss4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773280494; c=relaxed/simple;
	bh=XwafpKj/i2isRbujNOVTV2y8Nl0M3ZwFNLg7XAzh/7I=;
	h=To:Subject:From:Message-Id:Date; b=JMHOMHjSyPhLuYAZ1vNMUhqncHUnzcfoA1nHv+njutnXx3yGQH04gglyFxYZe/yv0SN/aTJkzE6SgXJzeDKpt2nT8BEZcpaXtucz2+cFY4miLTZ8HhpDQ8wN6Y05Fw8bmF9LB33vvFEXp+aBqsR6zTFOkekX9vyYEN/NIT0QHZE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mpLs6mXM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mpLs6mXM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5716C4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 12 Mar 2026 01:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773280493;
	bh=XwafpKj/i2isRbujNOVTV2y8Nl0M3ZwFNLg7XAzh/7I=;
	h=To:Subject:From:Date:From;
	b=mpLs6mXMSOn2R+17vTzNAaZKHmdyls7bs0vmd96/UoBpBLQHGHgD5mSjD8vSqaP4E
	 YVK9o7TzuA1j3D49xmYgM5mGSJ6dCgveG6nXALj0z1X+D4NMYO+UxV6hzwAy/GPfwf
	 ArMBFafcjEED3Bd6QX/K1ODmIFDyE6MAIy5mbI+yGn7XhyL2zhOe3VehRuKyn2BtXc
	 ZYvWl+sEM/6kKOFq3pHV317UlkkQbdwwtBquwz6VrX5s4gtgIGPshvroofxA2Njs1H
	 ypY51adtJVSPbshRLn4QxAoJQPqlqYop0A/Gkbv0+uwJi9+uhbt5qVmXAX/9FNsrn8
	 Z7CFMfQivFLfw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90E52103E300
	for <ddprobe@lists.linux.dev>; Thu, 12 Mar 2026 01:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177328049358.9059.4707216095399743085.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4b23abc3cdc1e16ab2c1e36ac5b9ce430fe8f03c5abeaac9209cb6e537d969a2
Date: Thu, 12 Mar 2026 01:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773280493
