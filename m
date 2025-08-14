Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C7E53146D45
	for <ddprobe@lists.linux.dev>; Thu, 14 Aug 2025 03:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755140993; cv=none; b=QSrnFmFIkAcZ5LTt136qMu6VeLrFFveswslxUaNWKGrgt/5utybuvU2rV3eo4kJ7dTApZMcI92TfFBR4Wm1WzY2vwDjUVH0KZ1QHqvUCer/jPfh9E56T/R5Ml4yPMsDzBlE0GBfCmobSihzR/hiV2xcgMfqG9cvmSZ7d8EhDSQ0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755140993; c=relaxed/simple;
	bh=ZkjFZBecC8aIoHA41O54NQXNL/o25eDZFd1iihCx+EE=;
	h=To:Subject:From:Message-Id:Date; b=bAzt/Iru278YM/D8KDhEvlJv/Dr1eIqI51lVeC7Hbc56lGRytp2hjMnw7jBC4GatVxXjihDyCyDYUPoJSFP6FvJxIIVaPsM435bVYOUuNT2GVUJXY0hc512mdGgxAgHjkJxYTmE7pz5at0YbFW47ZmlQeoBlvdmwABmkMoAQuag=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B0is2tjN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B0is2tjN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C26FC4CEF5
	for <ddprobe@lists.linux.dev>; Thu, 14 Aug 2025 03:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755140993;
	bh=ZkjFZBecC8aIoHA41O54NQXNL/o25eDZFd1iihCx+EE=;
	h=To:Subject:From:Date:From;
	b=B0is2tjNgaDheHdAZvozyXvz1M0n3UL8xOPpmAON7jTn9UEP5pqDbJ82yZAydGjkh
	 lCKS9nri8tWFMWknJ7tUOW+Tn3cEsU305ue77A+ENFWUTHqoeKMMs1l7+NHmgTROK5
	 mKMKMlPVRJQEE6kLXnKY05Ai0Ma8K7m/2jvXTz1wY5UGUVGsvqCQBEXs3NKMfoyKJw
	 /XXVfHcRUtBbtF8CsbiuROxWfSY1fQo+kihNOd9F7v8dRrUs4aWkJfxWwcx5hwu6A9
	 PHfEIXa7NGZLPjLlFLtKEm+JmthK25VIqkoXUtafCLaPcPDG244B5To7bwgwGvQp60
	 kCqWfzrFDN59Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E639CA0EE0
	for <ddprobe@lists.linux.dev>; Thu, 14 Aug 2025 03:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175514099357.15630.1369367508362228663.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 47f5f44ecb72fc5c46c4609172678cb4e07ab6dadf27188fc785c964369cd63e
Date: Thu, 14 Aug 2025 03:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755140993
