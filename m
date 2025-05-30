Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 320AD12D758
	for <ddprobe@lists.linux.dev>; Fri, 30 May 2025 18:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748629795; cv=none; b=RFgt1Hb0E5X5BNkoTFOfPVVM5pRRnmlDq980H8TzH4d26V22turqnXQ2GABnmax5iBHz7L9ixnZ9UF6DVcVj9MrF3pwi/g0EVrKCiDFIcLCj9DonPN0/rcmbxopnnlf42SuAtwZL28cXxA1pIuCV5JuP/InxN/1B3JR4xZ+5PMk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748629795; c=relaxed/simple;
	bh=yEnW0FiEyh79h4WPKhYX7hJN1YlRqUsoRIup2Ndxnfs=;
	h=To:Subject:From:Message-Id:Date; b=mXxvapyy+zXJd++WkkzIjoIU7ICPwsmTSqDNW+OMk4To3AU5FcwPkRn+W1lb9qONbAf3i6gb/tCvEydgiuFNjPUsVFiz15M+br3ovaPLjsFpgckrbjqIaAm1P1JYkbweL1AahOeVTS6ojgMfBZK/q8NDHfPLrG7JP/0IymyTE2M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dlC1zRE9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dlC1zRE9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A61F5C4CEE9
	for <ddprobe@lists.linux.dev>; Fri, 30 May 2025 18:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748629793;
	bh=yEnW0FiEyh79h4WPKhYX7hJN1YlRqUsoRIup2Ndxnfs=;
	h=To:Subject:From:Date:From;
	b=dlC1zRE9q4nET+OKtZPYjPZ/ISmJdaJzH+Pg9eYmG3P3fP0FUmGHu0r2YWEs8mWRY
	 pL88DVP1cFbOwzeHK6NG2ZhLsm75gI30JTGjLnX2ZafPhXdwqZiQGVxr81mvv2JNEp
	 VVjGA+Q//HttWQ5r8KK0/Ra8DocWsIdclJx/wXUYiaxA/apLqPQWoTrNcf/fQvggmw
	 ugnWhGOP5rN5EZGb/snAw4ic6Q58/JV09sw3xa0tO7m6loqmg9AbguH+1K9TkE9rhF
	 Z31AH7jBkUN12xSKflvrBn5/BEJ0XnCDT2dn749A9YrxdWBliRwbQb87kyYmRHKOId
	 VeBoASjdwxuaw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 920A1C5AD49
	for <ddprobe@lists.linux.dev>; Fri, 30 May 2025 18:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174862979357.514.4800139697004948828.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 457e4b2c6d997c748f3a3df0bb52366da1ce370945b0cf0250725b7b4baae1cd
Date: Fri, 30 May 2025 18:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748629793
