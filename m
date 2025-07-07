Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C4611C3C04
	for <ddprobe@lists.linux.dev>; Mon,  7 Jul 2025 19:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751918394; cv=none; b=JAFsJeNKKNinTaMBRuqJMPu57dhYuTbLQlnYCiLf8khI8JjA7y2Y7BEFq0Epcnq39bvLse5tAJyezpyxASxGp9VVELZRFPvVYfFWcW3szh4KF5DQ9lKFwQneqbNgZLC9+SJ+3aLzfzkPuahGb1AwUOkey8izs9MbXmP7LKBi0UI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751918394; c=relaxed/simple;
	bh=Aq7TWd04e6tFwAfBeorIx5Lk80o9VKlR4+s0/LksFrk=;
	h=To:Subject:From:Message-Id:Date; b=NOqlPwk6gkoL+69s53FvKXJ8ndCf7MfP1n8lEOjbS1SqvYFxa2+9O0Ah8OepH9gTjNSTqcsJMRcpDXKw26x3Z0K8okTWG+XAO/5xWdREa+kzojRWxh4vULh5jr8ECDqdE65+iSET0/0hqxWdnarIKTPm39zVSqaRKvXX2jjuPnk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qTp36qWf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qTp36qWf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FC5DC4CEE3
	for <ddprobe@lists.linux.dev>; Mon,  7 Jul 2025 19:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751918393;
	bh=Aq7TWd04e6tFwAfBeorIx5Lk80o9VKlR4+s0/LksFrk=;
	h=To:Subject:From:Date:From;
	b=qTp36qWfzB6ZP4Hobw+RcnB1EDBAGfoU29WfnMs7YiYb42dYcxw+rkkWdewzlSX1Z
	 mORuuaAWL6oV/LZRGzqcAE79z6R+9rrC26UFHwa7fmLizlll1q8LqYy7D+zvCV/0aE
	 P15FFH5Z2JCyyhFyJzRkmB2uQIIIMGXR+NxWeVjGTBX3uV8BLoUhjnNj90G4mQYcBa
	 t08jT/5VZdjEHJ7ctWyeZECOvTXsIjsgw+NjsZwXadvS0IA4KUytzorR6Z6RraSl6R
	 Hh0NHPp8rYUH1byqMrhPJ3mKq9AKyoh27zR7KlaAu7cwWFOqvHWKJDliOvCYXPgT9k
	 m00CYRqVYIBDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E8EFC83030
	for <ddprobe@lists.linux.dev>; Mon,  7 Jul 2025 19:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175191839357.3435.11003888050918796778.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e498f1f98f6fd61e9aa87b74f74e1a16f1f2069139c30cf851f2d1021858619b
Date: Mon, 07 Jul 2025 19:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751918393
