Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47DA4154457
	for <ddprobe@lists.linux.dev>; Tue,  8 Apr 2025 14:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744121394; cv=none; b=PRmdeCo3Sy83zKUENoCpndeHePKX8CtMr9Bf9iaynKBJSXZXIZU6T2ZzsebOH2EUi1eUdJdPKRqT23/rB8RiFQ9/uaYlEFg0+qwUR/fDKjEW8DsL//7jt/LUsqVPGtLkPHBWy79bIlj1i11WzCGJSFTC8wVdboC5t+/yHUWk/wo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744121394; c=relaxed/simple;
	bh=xVRJdB6LeQFY3IO11uzZhoxGFjWCoCI9ae2RXFkzZZA=;
	h=To:Subject:From:Message-Id:Date; b=M+l5VcdpMz+QkbV22cq8mTVILmDAW6EWnf3P0YhamSJNyr0Pq44bWCn5PIfmKi45h9CCeNCwhoJdzvW0vaBP/1+Z8gemB1Q66DFvIC8ELI8QcHQbC1zZ+TejE642V8KDvpmu/2UafjE9mjQ4I35ytQkZzHQFxpmQ1WLJiBW1MBs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bkyw4qJ2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bkyw4qJ2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A266AC4CEE5
	for <ddprobe@lists.linux.dev>; Tue,  8 Apr 2025 14:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744121393;
	bh=xVRJdB6LeQFY3IO11uzZhoxGFjWCoCI9ae2RXFkzZZA=;
	h=To:Subject:From:Date:From;
	b=bkyw4qJ2S8FSNg57aYxo3xwebWrMH1jTYMogTHyu/yItsgGzInxN0l0rFSZuOXYQO
	 FDgx2lXiOocCDPRAMskx6WTMl1Bc/jRdtVtkRcn8xvn4qCZ9X/IVcwC/BKNT9OprmO
	 4+NITW3OibBZ20nLLk6kXdE8kxqSa8JOiZ4LVgG9v87cIpWrYViI7qaLZ/EtM5Ox64
	 Q8RA/thmbdA5cbiiiP4he59ZiKXW1NuMhQ7djpB/4ifduqhOOQe+5m63eisEhnQoEG
	 jVDBhI3+3159hcJsn9C8SAS+TMB3q3YtQ6Bq92XrLN8X2XZFPuPBsDIgSP4Y+d1/pA
	 23AaJMc8xYQvA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92D21C369A4
	for <ddprobe@lists.linux.dev>; Tue,  8 Apr 2025 14:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174412139359.14875.7188066060266187720.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bb7d09a83993a844e0ce04f1b0561d4d9f23ee431cd5f9bfa511b4d147216f02
Date: Tue, 08 Apr 2025 14:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744121393
