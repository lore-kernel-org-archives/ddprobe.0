Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1966D263C9F
	for <ddprobe@lists.linux.dev>; Sun,  7 Sep 2025 11:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757245194; cv=none; b=U51RwbypB1dnqui8VFf3I2H8ligBiCnVXBECgfgB3uMJ1ocdg2BwmUn4H/heX+6sGnU0vEcnBD93hsboiiU0/i6gsS3CRXAnNK9sjh/TlUgsmIkNrYHwOd08CU9o3IYlX/ackCYNdqOMyG4DWDuiOLzTRX5Gw6nBsvlIpbYMxLU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757245194; c=relaxed/simple;
	bh=8hgPZjRpAYAA5K0PML/lveRJx/GDa96p6ShLYGi+B/g=;
	h=To:Subject:From:Message-Id:Date; b=V6xVk7Q37j10ZzX9SpBI65Wx4/8MsmPBiovXNvwPunmIAj94+XsaO0tp980eLdLSTQ82ur21zk4mvVQzY1wPJHrR5FeNcdi/m+9eZZ1sZMIrjfNfOIcRP+fDrpVORg1XaSLRyoS6pO2RF2WKCEUPq9k+wZ3a5EXk2uh8YEFxXsM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OP6M3Z0a; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OP6M3Z0a"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A18D0C4CEF0
	for <ddprobe@lists.linux.dev>; Sun,  7 Sep 2025 11:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757245193;
	bh=8hgPZjRpAYAA5K0PML/lveRJx/GDa96p6ShLYGi+B/g=;
	h=To:Subject:From:Date:From;
	b=OP6M3Z0avyzvVDWa65vx+jThBzZNuX1lkYmTA4Vi2P/rV+kRKwEEJ4uIW+GO/NEIA
	 V+sK3f1YRrN2LyOq9btZoAmauZlJZUsLd4+ifYOP99UesR+Bl+wF/7xrVPP3pZRjkn
	 OEfSSkFWj1jmBZIDBFGg8ayRwMqo97QdGkqxsSznHJH/UGUkrfkpxFwB4cvWZibnP6
	 NR+gVIeOfjy6kJcUzc1yZQO/itALmwNNijeFyrdqVH9xGA1G93dWcluH4+Y2zeKyC4
	 gNHZk3GB/B0342u8mfos2wwmJbK7EO9wGz8Yn0CED88YTTEITcQ1zd15TKhBxJHK4d
	 dpvm4lr7036mg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F69DCA1017
	for <ddprobe@lists.linux.dev>; Sun,  7 Sep 2025 11:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175724519357.18698.8873445143423662779.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 465a4e1fbebbcb192835b0c0a303b937cfccf6e6650af2a0c4ee9778c480c5ae
Date: Sun, 07 Sep 2025 11:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757245193
