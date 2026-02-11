Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14D912DA75F
	for <ddprobe@lists.linux.dev>; Wed, 11 Feb 2026 17:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770830094; cv=none; b=qiO8uKU6djQ4638/2Efx07BOrXOXy6jW9rXbpXUG7OXU5K8HSrXVSlfUvl9GPVMSUqjmTO7f67QbamyKGm0F9b9HAFSSQnPpvMe3PziCWztvm5vnLhgQw6Vg4OUUWdLOWdhj5+tjNtaac2YSDx8uy2WzcmWPLkUn79mblku/B8U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770830094; c=relaxed/simple;
	bh=3foSVqG/4iEXSfrOQdCKAgwaI/NmckVr1JVUejK61Ow=;
	h=To:Subject:From:Message-Id:Date; b=miGwW+Ni/G9zJp8H2/ufkXQiuIA+6UDm6imPuqc8+sSD/VsaAihDewe8tecZixm/q/GQKhqobVCLby5/IBB80AgqP5UsiLovWQJxyh8nE+BgZzIu9d4GEonotee2h0jiIe7qbkBG5VUEWHurV+W1akemvkGPk9YwHvmomuHXHfk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VUFb94Df; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VUFb94Df"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1B58C4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 11 Feb 2026 17:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770830093;
	bh=3foSVqG/4iEXSfrOQdCKAgwaI/NmckVr1JVUejK61Ow=;
	h=To:Subject:From:Date:From;
	b=VUFb94Df+9ihdOVY6ddwS91CN4CkfezTtrNNDKiRUKqk1fmoRTMU4UZRrMuuGr+7T
	 WJwer65QZxmJdpEPmiuzHEsY7ISuWemOK1fqeO1lOHLsMBUsnwNua7Bv+K7hp4qxv/
	 SSTL1kTT3CmsBSwTyrOH7scoAJzg6lLu6qi95MGUNXHDIY0YSd0d432WHEUuVkrzsQ
	 Oojjb0VTUk5wXzvR38v/gROzTP8mZiMbKUzEtC51Z9qOY5fkMKubnpl6WF0Mv4w9jY
	 ukk060yy5/drLjuEWRrEtSxqyMF8F7MNfWBraf93YXpqk0ocMzZwK+X47cC+pFLmlf
	 o+y/Nal4OR3hA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9EA32ECD6C1
	for <ddprobe@lists.linux.dev>; Wed, 11 Feb 2026 17:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177083009362.27091.3993877978745043960.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2d9089a6a956fc67cbab9d62729728ac39f6c6e342867073879a0808df384245
Date: Wed, 11 Feb 2026 17:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770830093
