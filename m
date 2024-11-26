Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FD511DA632
	for <ddprobe@lists.linux.dev>; Tue, 26 Nov 2024 23:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732662954; cv=none; b=HH4mPpE3OyRcINdAvGqlxkoaMIlhhAarP+HVwVPuWgATx8ZVks+uws1p/+OtrIsxm+xdpf9WGqyCcS2z6kKSYSqceT6JzJbinEowjHorn7ZaBQfXD1yrilqXZ0qIJQ3ZHWBFCEIfYFzXpqUsTDNc2K1bVfga5BMw1CTr5OQaqRg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732662954; c=relaxed/simple;
	bh=Jt6Q/jhSABfrNNoTnj1qpwpdA6tyUAGYWeHrWbU46Uw=;
	h=To:Subject:From:Message-Id:Date; b=K9onrbQpuRP4jiDvnR8aXJPnXhXNBojeBakQ8IkxqTSTMJTdfcR+8uUsX/JBNbXQ2TNZUXQsVcaLiRYj+4NZ+GMspcp+PON16DpM+fpF7Af2T4tfUQNgvOieOBarTTefHXrXetpUA2vYw4n6213nalkf36CTPrJO1xnoXxE2FcA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nRTJHWAF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nRTJHWAF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D14DC4CECF
	for <ddprobe@lists.linux.dev>; Tue, 26 Nov 2024 23:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732662953;
	bh=Jt6Q/jhSABfrNNoTnj1qpwpdA6tyUAGYWeHrWbU46Uw=;
	h=To:Subject:From:Date:From;
	b=nRTJHWAFJ0XhJ4+JYdbUulnbYdGxWwqAHRvfcHWHYNpVDtIuCHsgkvLRygRQ7H2sd
	 kP8W7W0hLm/c11QJjqGpCxslLADo+GzZEkKseWkbOs2hetzCncIP5CWLjaTfcX23kx
	 XFA6EE18Zv/QBlNFivdnWNspuy3mTq6RgUSFzxeTQGrzj62S1JLWwUUskJGbG+8SDP
	 71RVLElK64+cLbN3XAGdAL6lAldKQiA66HMxUPFRPxduUQnMW6sWQBeZNrm0B6HwAf
	 Oh8ckNmVUi6xdyb3Lz5W8tL5cCw03AaCkPeQQ85Uia5WZmgD0QnMjaHvrsgCEgP3CV
	 V6AUzUsxkyJCw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95176D66B84
	for <ddprobe@lists.linux.dev>; Tue, 26 Nov 2024 23:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173266295359.24548.7081733769885924485.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 53d9a6e5bad69e8bade60b4338fd90ec0e2f10b2634ef0ef0c5cd459afed405a
Date: Tue, 26 Nov 2024 23:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732662953
