Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F46F29A309
	for <ddprobe@lists.linux.dev>; Tue, 28 Oct 2025 20:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761682794; cv=none; b=PeDrVvmsO5K8NTSbnVB2bloM74dphq0FBXYGDeW2CrTVfHRq+/10I+XOYpZ9t3jegkOrF1nxHesgaJNlOcGUcVbN/9DKrWidrRUaGpQPL0R7CUFKXBvtB6uXMaWEAhC6J9VLx/MQEF7abytShxw9U7x3jzHjEiyKnc0e6jB2Ugk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761682794; c=relaxed/simple;
	bh=ArPHk8gvWkEesQZa/l3A0/4dFyfmLB+GISzUUP9bAmg=;
	h=To:Subject:From:Message-Id:Date; b=GnHD+KuLyvz3wesCwlZn30MLiqsxTJoGX3wMEtzumJ6FrxxY84b86gUWk6ZABEsolUydozwr223czTctV48iOakDEs3cUpCdL4y2Ws0fNcd9oziwxcFxNMJl/L3CWU5Jux6U2P1gR7SIEROmC/Cya/IwzMj2JQDE3T96aaQhgmQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YDWobmp/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YDWobmp/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A08C4C4CEE7
	for <ddprobe@lists.linux.dev>; Tue, 28 Oct 2025 20:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761682793;
	bh=ArPHk8gvWkEesQZa/l3A0/4dFyfmLB+GISzUUP9bAmg=;
	h=To:Subject:From:Date:From;
	b=YDWobmp/VtlGmpU1DvQjhsNd1L5tbfEgikA5isiBROwXFnrRFe6gd4Mg7s1q3QErG
	 rfPqDrQKJDdbUoNlNgo8npg3/rEEuzW5TeVkUB7zyGjkKrHEXoZh1Ri7WAmQq7mHTR
	 qzGxWvmBZ0JAPgoIMWEzVJ53nYMgLxqfaMKl/mqeQruesjFkZawegBGWSTMC0zOimW
	 VWBBDf3uQEPeEYjksRJlB1JYxT09mQtalYsucUICFr4/G0tzr/A0dc8qTsWDLokAld
	 svo1r+dJJzkrdIa+/EQV5pr+houYHFIaF1ZvDP8wncE1YGkTClWRXqG8C48TwHPGXK
	 eXQKZrlaVxSTg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 908EBCCD1BF
	for <ddprobe@lists.linux.dev>; Tue, 28 Oct 2025 20:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176168279358.16448.18311176392865609674.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 05d992ea70b5f0ac761fb965c6a9129e6b1d59ec5247950c400f998251be7f85
Date: Tue, 28 Oct 2025 20:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761682793
