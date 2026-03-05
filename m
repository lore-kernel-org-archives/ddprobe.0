Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 003943612E8
	for <ddprobe@lists.linux.dev>; Thu,  5 Mar 2026 22:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772749494; cv=none; b=txNauGgH1AbibY9bRr9afo2FVlnXy2Iw/Pu8fxKDJi1bhPPGwrvgNJq6dapFToTAIyZ5clsmsMhIBBTb5Uqhb1WrBamV3S7ECIIkDtEII8h5BrTi/m8kqtlvalJO5UyBwFUfakiJDN0hbtfQnSWqZKXdB6K2NhQsbCD5hURC9yU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772749494; c=relaxed/simple;
	bh=jdYiWJrjoOPJMWCaF2Ox1FTEqRnc/CLl/CQWun5Qw/g=;
	h=To:Subject:From:Message-Id:Date; b=XbRceWkDn4xxMP3rERSfVe3DipNVarmbbqJFs8zo8PAlI+wj4lfcmceb3lFJY4kqpsv0tcFXU43emQmajRursXE4VCmVZEhne4pn55Gm225l/10PULzxDQ93bTJ9ZLaqqmFWsXknZtGUvCu+aYLylqUqVfa3Z/yb1TRGd21jXgU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lcRbcY4g; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lcRbcY4g"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A82ACC116C6
	for <ddprobe@lists.linux.dev>; Thu,  5 Mar 2026 22:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772749493;
	bh=jdYiWJrjoOPJMWCaF2Ox1FTEqRnc/CLl/CQWun5Qw/g=;
	h=To:Subject:From:Date:From;
	b=lcRbcY4gu3VZUgEw/etw/Nsb4XT//O57GzxJgxmfCSMl5cVQkcFUjhamDveIbnB1l
	 pebybQyIn/1PndT5LD8NNIixg+5V67zKnRBa3ZWYybi5i0pQU6dFZfC/MuoV/goY31
	 YqnbwYTdsyfUm5k9AhI40/FcI/yxkBM1YDiu639/d7P15jQIVHy7sEYLWpDNKUKWWN
	 BjJSqTertVQpuomd2HYzH1arUqSMFsaRoM94f0z+pCknz4cyUSIp1LLF/clUsMoFHJ
	 +Gtz5doXvNnAV8KJ8LCzB9HQiqmpImdmcxbEVbl2LKrR/Razu05f29lO7h2Q4P579B
	 J53wJnXG0G27w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94388F513E5
	for <ddprobe@lists.linux.dev>; Thu,  5 Mar 2026 22:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177274949359.6734.7334045310282132704.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: afd7d34536fbdadd2de9e4b976ce6f41a2e4cc54733e5f459b7b9fc1d7bb3b70
Date: Thu, 05 Mar 2026 22:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772749493
