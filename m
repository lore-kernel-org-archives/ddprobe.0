Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A6BC2905
	for <ddprobe@lists.linux.dev>; Mon, 21 Apr 2025 15:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745248195; cv=none; b=OHan2E+DyokGnuY+GIn01hLRJzzrLEk257QudarFHK6jztoty/RzQK1tBVlVagGZoW7khl5ZxtYq/G8uTA5C5JZdZ8XHEpxR4Mut/dio/pwIfe7jH37sM3//oSfKjhAMEeyhGuJCgEE0xXUs0itlzHKPtKzKtQamMzw9s7CmSCI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745248195; c=relaxed/simple;
	bh=JROVNcGeA8dS8uosDOVCZyCRTSKSo4Gr9htEeO451jA=;
	h=To:Subject:From:Message-Id:Date; b=ppt4PT9HZ4J17XJfaJ2DVFLSzvBZGO5SZJV1T/7MBcMi/TzdHxouLah6FaNXnrt+ByfCdfVnk5aBfW0yGpx9rM58UCGlpGzdq9x734DBCJGog+nmM8AnODATqOUgWGbiwjDD08b8gFUz6HGh5Ku3eUwBLlYRH6cXpHgbAakp4Rk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eC32O76x; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eC32O76x"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A91AFC4CEE4
	for <ddprobe@lists.linux.dev>; Mon, 21 Apr 2025 15:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745248193;
	bh=JROVNcGeA8dS8uosDOVCZyCRTSKSo4Gr9htEeO451jA=;
	h=To:Subject:From:Date:From;
	b=eC32O76x5tu+YG9hZJEVVcsmroC2Fu3jHJGY8fJvlChbud2tKkT5JyKWcM6qzMPXa
	 vrKZY1VUSuYkxDaueR8oVGM9Kp4at13wrzPCasCtcxOsvnkTzGXm4VoXrPThWaVYZT
	 63Dhm7ewjp05ptO8OdqNMO6Sd0XmVn4GNeMa1YGc6wAdmRpqQC4Zn1XkJi+prYkxlt
	 BEJ5D6V0UdbaQOZBgj+0gg5NAI5MIQdMDuo77yBi+UBo0r2rDb7VtUp1033PU/qqZd
	 h6sDEBBTIYiUXmyqivS+BISAvKAlbigdJkedJWzRKV4asvlgsPbiRHSbeZYnhiv1Ra
	 jzyvlDXO4KP0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96C50C369AB
	for <ddprobe@lists.linux.dev>; Mon, 21 Apr 2025 15:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174524819361.9427.11660810740400183586.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 54f9713d962ddb970d7c14fce2de261dc98e6e7a685ddd8403bf9df66a29eb23
Date: Mon, 21 Apr 2025 15:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745248193
