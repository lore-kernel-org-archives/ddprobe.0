Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BD0752C11F6
	for <ddprobe@lists.linux.dev>; Fri,  2 Jan 2026 20:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767385433; cv=none; b=i8HOD0dcUvJYKYQHZF2+l/pncTDSWAL6keUxsVqwd9iMmai85gOfXUx5mtX4qiTQFOkszYO+WXWQIYhsEafHFIBlXkFaZycjOUZ0S+ZIY/Jf3/5Bvh/jks3aUxyNMie6Cn1VcbJ2dCwhG7H96dJK4E8Rk9zgJZCOXdWCL8Z1Kz0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767385433; c=relaxed/simple;
	bh=PQJ7UO/r/8il/fElsS+9KpEwkPKhYZ4yedS2ocW5B0Q=;
	h=To:Subject:From:Message-Id:Date; b=iUHtr/GgKHMtImgGBJsuMGyf87u/rPtJydpOL74Ro6hAKsQEckssNy679xSMmbfmhe3EKqKTBKB+xisTLcWwCS0FfS7l89hF882+nR6CxTCm/Kxy0puGqMhjul+O9/VtzEU7EZgyXemNzUwcKYeXzMqFT2CbzGt3S7waDmzmBOc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RhCYS1/B; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RhCYS1/B"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F3C2C116C6
	for <ddprobe@lists.linux.dev>; Fri,  2 Jan 2026 20:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767385433;
	bh=PQJ7UO/r/8il/fElsS+9KpEwkPKhYZ4yedS2ocW5B0Q=;
	h=To:Subject:From:Date:From;
	b=RhCYS1/BdJMFBT06BY27BbpOlOlhQfQOrdYWlYVQhdpEf7rX84ga98iQzC2ISpzBj
	 I0o5zgDbsIywAVc0rWGvkEonITkSesHBSqW/WeySf8BNEy7wwSHG3N9vJb6VOW8Mn/
	 KHh0T3l2WR/nNFpAfZRppsIjtZ10dlDZF/LFOznmLyKLVbSny8JzH2nDa56kROTSkl
	 aTVR5jdCRKB3fgxAOUxIM6PGXNCI4Uk9K7jqBBQW1XOYCfNxPEG0otDaYfr2BC5Gxm
	 450I6s3SYUoY6mrk18Bnt4vsvGfhtbiOsYGpdRHlqyP9EwGjAij4MtjBaZl4Ru6iMf
	 mrk2tppSgk3gQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9200AFC6160
	for <ddprobe@lists.linux.dev>; Fri,  2 Jan 2026 20:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176738543358.25628.18322763148587628436.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b2f67f51880f28489cbdc7118e6b87bb6ecda912d50ede069bb1ea701f11a85d
Date: Fri, 02 Jan 2026 20:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767385433
