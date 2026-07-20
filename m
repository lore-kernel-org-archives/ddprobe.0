Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FFF02D94BA
	for <ddprobe@lists.linux.dev>; Mon, 20 Jul 2026 03:08:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784516914; cv=none; b=tKXSxr4s7MD6zowad7cWWNbMhsMyGYD8PjRCOZ6wPymDA3H+JaA3L1lftug5MmZZumbQA50RntFkGEo37SqyoL+Kjyx9YO+NFuPjBPlFTa57w9JNivr9ai3dt/4borZ6HTgHf2kO/S+t4j7xGo9YCSAGwm5cOc/h7uIwN6Uzzfo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784516914; c=relaxed/simple;
	bh=D2epMDrW/5EtU1PABL4liu6JHsOCv1xJhxWIVk8U/O8=;
	h=To:Subject:From:Message-Id:Date; b=oz6xirIQpzyp66aR5enbZYtl9FQLKUakkcqN15GNqGIqw+DyoUKAnvqEWsdyJchAMgfyvXDbtlsFx9Yw8UPVNo/HmIYZzm//uHYKDjHQD64TrmOBt1yJvB7pj3FaIcZevLZKqO2odsjZepO8UOVMFG0yKnqh31ea2ymdHl9qg/4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oQd+YfEV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oQd+YfEV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D450BC19425
	for <ddprobe@lists.linux.dev>; Mon, 20 Jul 2026 03:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784516913;
	bh=D2epMDrW/5EtU1PABL4liu6JHsOCv1xJhxWIVk8U/O8=;
	h=To:Subject:From:Date:From;
	b=oQd+YfEVloW4ypaM3tfulUemtqnKBV4GK9flMy3ynhGU4OJA6xK3wn7VcJOFKHAqL
	 nXfJeEctA77dCs9AOjofdnQ1rIe6GbELlpghNxw/TmqaVpznXprzJjPpxTbb5eKSwd
	 Bkf+MWQ5y9zNQbE4/VLpjHdz24vgZVLPQW0n8QKxf/vCJC+5V9OdBIv8Ilx0pZyq97
	 ohHF8zfV0jT4kQLdddgtVU2LeGBv3/0mtrQKAkRnR3Cy4GcV2suCRf3AnGiNZopsoE
	 CzqzH7pwsKONgAgBjEp4fke5aVFE4AbCfI9MBAZbcos7n0JtktsldQ2cGu+Shg0rfK
	 zNV8OI0GcRCgw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEAB9C44512
	for <ddprobe@lists.linux.dev>; Mon, 20 Jul 2026 03:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178451691370.5680.13071439042134769725.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 485f98b6d9723bc0d3709adf54341f6bdab3276a9d6a3185524177b312393bf2
Date: Mon, 20 Jul 2026 03:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784516913
