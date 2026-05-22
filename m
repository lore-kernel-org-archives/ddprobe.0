Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37A203D525A
	for <ddprobe@lists.linux.dev>; Fri, 22 May 2026 11:22:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779448954; cv=none; b=X9ZPprGXKudU+mz61qXzXNWtLwAq/Fy4STiiY8ciQZd+L82nZomda+EDQ4A4WOH8WzjkFtDxw/hfuyPllqOuTNSfb5GrUHwyvCh1AdDX7YgHyNDFW0+/rQoLYorOVsX664tu8XCCyIaerRFCLjumHuEzPZDuXU9Iglv70y5DsC4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779448954; c=relaxed/simple;
	bh=ZfGCNxuLJlCJamfSyt2nmjR7q8uwxJ2YVFl3EQfWfV8=;
	h=To:Subject:From:Message-Id:Date; b=BcRtgF8plMX5jltp2jvmb3InTu33cn0sKM2QenbVia+y5SLM+eZYtQ2fPF03tk/5lpIbe2nKfvqh1nM/+jw1CEjGrt5ORVJsVbhmS4WfeOHBRXnVZYKJZ98UA8XBUig1sbu7zDO/vUXYP8EufUBdMG2EF+3Y+Cmv+fKg0Qna6Ks=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PDtT2K5W; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PDtT2K5W"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C576CC2BCB9
	for <ddprobe@lists.linux.dev>; Fri, 22 May 2026 11:22:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779448953;
	bh=ZfGCNxuLJlCJamfSyt2nmjR7q8uwxJ2YVFl3EQfWfV8=;
	h=To:Subject:From:Date:From;
	b=PDtT2K5WWjp2iFVuOjEan6M68CE6rDGGinMkFOCygkeXgwgvCGOlbuuaCwfPkdll7
	 JAmz8mDiK0dqkz4OabQh30AsfBsD+UWUCAmTj0TG4yF5q8N1XEzK1S8fg5q8X3uaGS
	 sB3pqPssZxwIAdW7xhlx+6Q3Rslgn+7BDh8RBF1nIePEd7kr1i0RUgZYdCxEdJ0J4S
	 5WiQFn5DY8tIGX+cX1S9LxrbOMgRaslHo9rmcjh6xpbXwIAcvfFTk4LHfuoZkiJZkW
	 6JOPG+L7/MLySHI1AfVzl1h2u9cq7uuH712lV8UJoYno0Xni5UAMfXnUgpI/F711Br
	 UDqkV4Q2uhCkw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A886BCD5BB0
	for <ddprobe@lists.linux.dev>; Fri, 22 May 2026 11:22:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177944895368.22268.5686417936217978352.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 70c7db63eb06ccb08e9b99a960b3dcc67c69ab11d0afdfdea9622437332b7710
Date: Fri, 22 May 2026 11:22:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779448953
