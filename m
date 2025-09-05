Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23BCF2D7DE2
	for <ddprobe@lists.linux.dev>; Fri,  5 Sep 2025 07:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757057394; cv=none; b=DdswXJjDVeW/1fSLqKl7edIJic2el8o0gHEF9Xitth2QGL6o6vi4V2FPBPWyLJHN7GLdYQRFqoC75Z6sseO60vf6B4zlfOHM53fFnSKV5XjjEy1jKfdkzfmkkozV7MizTZW4IUVzyU8gOf9cJXQq2YpLYTUKgHfO245C6RRtMVg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757057394; c=relaxed/simple;
	bh=gj6Boc8pK4g2FBvuBKwPoSsrOkYyYDmw53KQqGqvYUw=;
	h=To:Subject:From:Message-Id:Date; b=Zlm6dWCuIpDDP8HZLGiwBWA8e3YwM8OirKcBlFwa5DNP2LS5nlx/UxaYM5jinv2LRAXolW3UNpsG8D94Yo4/SIddSKb1x72gkshXhJD+hdK6L4qkeTUnjxDLUaM6NcqOdqbwsMoQN1vRZdSBzOfrAsyibCTla24lTObCm8gEfo4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l7ITVCCy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l7ITVCCy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A21B6C4CEF1
	for <ddprobe@lists.linux.dev>; Fri,  5 Sep 2025 07:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757057393;
	bh=gj6Boc8pK4g2FBvuBKwPoSsrOkYyYDmw53KQqGqvYUw=;
	h=To:Subject:From:Date:From;
	b=l7ITVCCyQ7MG1nDCpAotU7kRI0G/hO975qs7y7f4DINcdAQDzyYb17IBzesRtoWjP
	 Mo3V1cS/fUmLDCFGu3W0d6IA/aygR6sC/AJgvLgj/AbqA5mTURGFVkLcTD4BIro4nM
	 njBXz/J53rg+H/wTeTHVBt0oiQ9FX5v+KGoaQ7ycYubfVRJmErb1MJt5ZbXiQyjNPW
	 ehFt0qlbPVu+iEClgg4KWunmEvSnrOuHVGDhbCaYYPn+Aio+4+eUf5M1bJbFjNWpKD
	 jKgKFtgyCBt9xK8FY7x7Kz7k3ei9EU1h77AT/jxDBlTeohGsmZ9eDNEMwfIfVznk2/
	 XkNR3FQdwhVrw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F927CA0FED
	for <ddprobe@lists.linux.dev>; Fri,  5 Sep 2025 07:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175705739357.2976.3831112242036262516.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e74078af6bc33fdaa8ae410cca7bb0738d7d72a1af982d1d1ba27b75bb8f9031
Date: Fri, 05 Sep 2025 07:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757057393
