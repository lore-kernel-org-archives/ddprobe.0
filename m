Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 206C957881
	for <ddprobe@lists.linux.dev>; Fri, 17 May 2024 14:02:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715954543; cv=none; b=KQ5bPD9TSJIYJvLoRlyJpr5HY0HsB4EYY67m/VHPkmg1iIQzOSb/27FenAM2seXebcfJhUm0oL8hnEMmXg1+BBYktMnJVS84+qlmeBFIGWF/iHoytDrj1EKJtObFjDEZ/6PpGXO6ewAPANFOxXA+ZYodRfqFcps5ta3w46fjQlM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715954543; c=relaxed/simple;
	bh=BDVjR0XW2eW6kJou7MoLK1LK+9BsYMzu0aobeDzIMOc=;
	h=To:Subject:From:Message-Id:Date; b=STwJEVbySkA0O2JhP8e4ZkSiUyXyjWj+9SI2oldLd5IGXPZo9M+XRKShtKr2IdnnNxZ2u8zd+bCw1yOzEOAYAHmuLIF4uisT1MK5r/an42am47nVkId32Zhu29IdDcNWJOpyI3f3oZ81hDsDhu0lDHmppF5zkArnDS1YGeBsn7w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fuXaUj0e; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fuXaUj0e"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DDD83C2BD10
	for <ddprobe@lists.linux.dev>; Fri, 17 May 2024 14:02:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715954542;
	bh=BDVjR0XW2eW6kJou7MoLK1LK+9BsYMzu0aobeDzIMOc=;
	h=To:Subject:From:Date:From;
	b=fuXaUj0exL5oTEN1ESfvqSN03KmPdMefe6J9Y3qIjSSeMGbjKGFAt7KYAL3t2H5ON
	 IbWVWLOlZqww0ANHbOIaf7DJmLuH7QpFWGKfmbmdKW4kq5LMA9P83g3fx1xUY9fqik
	 OPzLbghrvwdNs57i3FkIMksZ8ovPo5ralCqxMyA1Vy7UGEv364tPcI+AZwv2SAhtj6
	 cvQ5VrTWv4paQe0VYpOuWZx112DJxy71qHfykDaljo049Up6mJIgaLOiFisugwHaC+
	 wdzbe+al0O4NyQGwYaTNAjLmxnuMyp/iY+bWOq7cBiaQUfAN0hibms1rV/MJzPXGdl
	 /I6AEAC+iLYcg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CB0E4C04FFE
	for <ddprobe@lists.linux.dev>; Fri, 17 May 2024 14:02:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171595454279.7280.9822334363009485220.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 146e5e9074881a009264f541a301cac66c9d93deabba1a6001e177c77658c20f
Date: Fri, 17 May 2024 14:02:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715954542
