Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B77A1CD1F
	for <ddprobe@lists.linux.dev>; Sat,  5 Apr 2025 10:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743850194; cv=none; b=FiNoxcgQxOzlc8WvrP73bBlH7gr5tE2nibaI1sQzl8angHEmZC3exvSJPiUNDYzIpEraQUgP/FpCMN3DSoToWZ64uKVSnvVeeqJpIWyzqBV5bj/RqxeS0q8GVcMFkiM4lDqP+7XZuF8blqyruI3rqS60RtXazWWj5lUoxW4zyyQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743850194; c=relaxed/simple;
	bh=s7xTtw5sJuD5Q+TeQuECLVEXDylrnEQfWSANoU8bND4=;
	h=To:Subject:From:Message-Id:Date; b=EemVesuennPFmn1vVI0a/xu3RIXJ0hWLvP4lIPmFatljyj6bs5hu85n7+3spW1nlugJuGPJ5VpCafspnEsCyyWrD9Y9qhtoDHWn7x2H0S//Yxrpa7iU7fH2eF4TUhJGJM+tTZeoSUPonAK7djLZi3jgDpu/YvnsjfXpExxpLdXQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b3SqGKVP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b3SqGKVP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD6FBC4CEE4
	for <ddprobe@lists.linux.dev>; Sat,  5 Apr 2025 10:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743850193;
	bh=s7xTtw5sJuD5Q+TeQuECLVEXDylrnEQfWSANoU8bND4=;
	h=To:Subject:From:Date:From;
	b=b3SqGKVPm5pKnMfOH9fWj5QYd/Rm0cJkVQLqPILSjaNKFC7OWv3ZIoHoJxjO0kfwO
	 i83MPXZgcMQwdtp5KzJrgLmPS4SCthN4OyRa/bjJPofggntcNjsGj400TC207LMYrh
	 ZU6YRZ/LHgrJeJK3+mRZf3Ex9mhy9hJ4u+JtF1TK9eLmgmENNcUazeNNTooHIK9YYR
	 I5SKH9Z7Bdr9GDoyg5Gf9GKkCOl2o8EKZV5mrWVzlxLCrxV5WfwDbq/4/vhHxZvvzo
	 obHFgCjOg/qEAiSmw+yojLq4hOqoI5qCjge/p5Gxnz3edEF09feP0VjInw2i8tzVA4
	 yWN6hu3RzS3lw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98ECDC36010
	for <ddprobe@lists.linux.dev>; Sat,  5 Apr 2025 10:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174385019359.28986.3863881009266916684.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 29055240399c5676f3acdfbc47f7dc6ee178d58222567a145c9eecfbbc8be27e
Date: Sat, 05 Apr 2025 10:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743850193
