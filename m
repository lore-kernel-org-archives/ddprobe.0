Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37D2F156236
	for <ddprobe@lists.linux.dev>; Thu, 31 Oct 2024 13:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730379954; cv=none; b=FjaAAOp8Gf8hrXSlHn/juYEekzIwLmqTUo7vsS8EBOQJ7UmWj/hak7S5UobwUE0cZjf759vSbnBi+8bkaDi98A5j3GvRNuB2UEBNv+Wz6854+KcA7WNW08yFWtomPUW+dmjlRPbctlPgqFcF2fRIzfdw7lqvvV70hIOh8O6iGqI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730379954; c=relaxed/simple;
	bh=Dnm6NZUua4tlBdE+dcGFTD5+zeFoe9MNXtOu4Q8v39k=;
	h=To:Subject:From:Message-Id:Date; b=YeRkD8gfhFrKJuiVl8B8+YP/a0J3IIMOo+v7sM0uFuiEONnuYt53e4cjSg9xjdOUws9zbAcPVKTp3QY7q6nKfAqVMVJscNkEK23GhhOblc+s1enfFvSbLuD000yuGrmgVxzaxKo7MthlYWU+ii7QphaDmUnIcRbeY62VxeJuZGE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aPXIB2aR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aPXIB2aR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3825C4FDE1
	for <ddprobe@lists.linux.dev>; Thu, 31 Oct 2024 13:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730379953;
	bh=Dnm6NZUua4tlBdE+dcGFTD5+zeFoe9MNXtOu4Q8v39k=;
	h=To:Subject:From:Date:From;
	b=aPXIB2aRYzvGoaVfQgnSaACFpoGyvgDz8Fhh7snWEMB5IVn27341jGqOcGqjj7bZX
	 HTUQ81RnYcMUauLs6wTzraBo0iCkFlYiX22jZQ/3tDJ1IfcSCyhj4/9tpEhOP7bACw
	 ufYSyvj9zlHIMpAp+gYQularf91SZ418w/rlb3+soTUDQSxd31PC4601gNhK7tYD1w
	 ya/ruzhNBPtC3sHpDQ1FiokqC+gvyFc7Apu2/cdBwjKQDPtix5LdFu0n2B6GV/osTR
	 22t5SHg7yg3xToJe4EsUwHuDJz0h6keYs5POBY8sKKNn6WvjW0tJki1DB2aJqkpia7
	 PBdTQsCXsAZTg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97F74D74959
	for <ddprobe@lists.linux.dev>; Thu, 31 Oct 2024 13:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173037995361.13116.2005924066752537787.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 61aa2c1369b5ddca7923b9ed8edb6fb582f859014308da93244f050d3f30e6ff
Date: Thu, 31 Oct 2024 13:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730379953
