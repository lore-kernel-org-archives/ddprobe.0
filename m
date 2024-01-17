Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F0A613FEB
	for <ddprobe@lists.linux.dev>; Wed, 17 Jan 2024 10:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705486097; cv=none; b=e0df4fj7f4cmRPlFjzmxwDaRqT3Oc6Qm0vRxtOXXDAhlbHFfPZ6sIGyiNsiAQZvOiqtCenXPhlyOtHkP6EEGdVsmAdvV8VQpgNgaqywc4iocs+LchvSkjIobNPFUGg5ju8kjXbhiH3SnDDiTJvsj8Lzp4OPoYtZqfIN+4csVQEg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705486097; c=relaxed/simple;
	bh=g3CW4f0FiyKBo1OQ2e0iXzMAGbbxLnZvjgnabP6hT0E=;
	h=Received:DKIM-Signature:Received:To:Subject:From:Message-Id:
	 X-Rtt-Probe-Hmac:Date; b=vAfIUzsBaSS/3fxLV7dSUz6Tid0lxoRgqPkOZSp+leyqJrQA8xNRXUzEHBd0oBSXgfrX1zM96WIDcP1KQeulqK0T+wgb+2K+ObEHacibhj5NVPwiIXVYO/T1dV/0nLifc8gq1XMHnn01gXUA97put6WAJ6MZa8OJBH4pGyfMxWQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RH+NdH7c; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RH+NdH7c"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 77CBEC433C7
	for <ddprobe@lists.linux.dev>; Wed, 17 Jan 2024 10:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705486096;
	bh=g3CW4f0FiyKBo1OQ2e0iXzMAGbbxLnZvjgnabP6hT0E=;
	h=To:Subject:From:Date:From;
	b=RH+NdH7cOiHibOFSXb20WqS4wBerM+eynRCrwmxzydxN8MSihyFmLYSZrbtBHjecD
	 Esuz+22UR3lyjzoeQ6f9RqLC9j852gBAc8VJ/Bz7B2bRdqDZOJnwQAScqM3EViCroj
	 kCTn9lKkJ4nklwrFzrk5oe/eK9VWGtuWeP17ifvxfQkFfWGS/tavIZszeGMjQ4olwm
	 mepp87FMxuvzk5hQZ35fWogjhEO6viNSp1tSRDrsQ9c+nr0QYL1us7i5uOq63dKAeK
	 zD9O2AfIOPW+IEnMMNR7Kryu+lUFnzPJisirdRqq1wNw/fuEIz70L0AvSfOSQkBU7L
	 TBTGqKn/iZNQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5C077C47258
	for <ddprobe@lists.linux.dev>; Wed, 17 Jan 2024 10:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170548609636.23299.15155780845385341186.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4b7f13bba480669ac0c09dbaf8c67999a720294306a1d2455731e313deea15e3
Date: Wed, 17 Jan 2024 10:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705486096
