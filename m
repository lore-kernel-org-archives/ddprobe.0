Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E12B23F412
	for <ddprobe@lists.linux.dev>; Thu, 23 Oct 2025 15:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761234594; cv=none; b=l/dmsSdnIipU1H+9XDLdzS58cnal/BIMBawv2K4xCYt7X24KYwbfSqrwQ9GyLijsvFihAjUfZ6t7muKY5sEV7J9KefZXTsxv5nxlmLWKxgCyeiNJXw4zlyQwfO+LWcf10/sgQmferT9z8TusQ1Iq2FdMb6/D47RSAEsJoaDvUSw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761234594; c=relaxed/simple;
	bh=GJ3ZW2D9MXI17ke5pxtL0iFY+LGmx5LBNOUC+Hn68K4=;
	h=To:Subject:From:Message-Id:Date; b=RdjteA2tJf3k5zO0uDQMdaFNuYMHbyM+1NIE2YCxtr+ZZ93Iw/tk0z2ScvdpQyJgqc/nqMsZglrBusII/z8q05auNxkYSwFLkTMDVwqcsJwclVvKV8x6YMxR01lmdS/32wd0DdcBp0ndCDqFwo4/gApFjF1OKHzwnmNoDk8MZjk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MvGCQe5k; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MvGCQe5k"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A813CC4CEFD
	for <ddprobe@lists.linux.dev>; Thu, 23 Oct 2025 15:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761234593;
	bh=GJ3ZW2D9MXI17ke5pxtL0iFY+LGmx5LBNOUC+Hn68K4=;
	h=To:Subject:From:Date:From;
	b=MvGCQe5kZrV84n/c9BDe3VG/3P0syXI5RKv+EP3v8GML+wRkwfnE2Fa3XQPsvooTu
	 SU1Q4rWzIRsgaHrWQdVLA6SSKe8PJkVCrW9gJiHyk5aH+C7QSuZKf9EPw+9kBGid0J
	 pY3TfTJ2rslLjjjksphxAkopRYw+dAX+s2Rpf0HkKtIs+1jCy8bfRHDVTdZkPAvIYA
	 qwbyYN2owBzkRC3+P67J6EzR7eopoZ+c5+hCjrbqgoCd68Q5tNkT8u40umnKKi9Nyr
	 eUiWyi7JhZZu9JUP6QekNX8TjNBvZwiMZuM+N1POsUkCJp+O6LGTF1Yd+eEYzC2sVz
	 U0jtjh8gDa25w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97584CCD1BC
	for <ddprobe@lists.linux.dev>; Thu, 23 Oct 2025 15:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176123459360.28546.5590850235148185979.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ed5ac0f0a4efd324fe879f4aae3b5306f595df768f5fed97aadedc855916a8bb
Date: Thu, 23 Oct 2025 15:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761234593
