Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 587981CAA7D
	for <ddprobe@lists.linux.dev>; Sun, 20 Apr 2025 14:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745158194; cv=none; b=VagfoEEW+mJF2dPm28E6/Vj6OzePxolCQdic2/AEd7lZl39qqvTkIdathH+thFt5AQDtvkVAVtBRNNIvIk9bSuq3YUGINg4ePMP0UJnueDlFqK6lRBB7qkkeqvTpwhdqR6iEj3Sq41r/7QyH6ydX5sl0eASuAKe7f6khnjXUZms=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745158194; c=relaxed/simple;
	bh=1NlVI7FC8+GArJSRjGXJuFHc/9ex+cOmR0pKkLBjjog=;
	h=To:Subject:From:Message-Id:Date; b=GFYId+vXXOCQP3u7C06s9YvVxBTN65mcqV/BTkuQs/fqB4rOBCXYHhqQKAiwTx/hASGjreqU86E0mYrTh8ln+pnComYy/74gY7DatG806B0yjKC5PrDlWWFJLSzdyrDRSJixDI0AFuh36dtH2k+RKsUme45CIsIPOlo9IpBW8Ic=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZZSINB18; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZZSINB18"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B63A1C4CEE2
	for <ddprobe@lists.linux.dev>; Sun, 20 Apr 2025 14:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745158193;
	bh=1NlVI7FC8+GArJSRjGXJuFHc/9ex+cOmR0pKkLBjjog=;
	h=To:Subject:From:Date:From;
	b=ZZSINB18hpp13SBjRebd1XdRdTkSwTjN8kPm+GAvZGCTJ+9JkI17A7+OaNA6nGXDl
	 X/7KRWnEeemNpoW8maB6l3esz433egfWhRhWnv2G0cYCcUF1dqe+IaGl3b8tiiXh1/
	 ICJx+eU7G7NurEPpPT8R/3i3meZghA7pOEZh+fQy+Mmo4RswOn7tHFa95H1fS1uwBw
	 Wzj8e234SA3vPECIKDZVAhbx6nfxZQd2iciMyqlp8ybeuAZ3pm6af8sIdJOEgTrYKu
	 Ce4JNSu+GSZ0WD5rQQh9qasc9pIVWeYtNTk8vfcJVzrB5EtwuBxkAqZfs5AuLptJGZ
	 1hbp0pyR0dHqw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D19AC369C2
	for <ddprobe@lists.linux.dev>; Sun, 20 Apr 2025 14:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174515819361.9362.16490424212625332627.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f81ea5882cb3a52bff878bb7f987097c61d9678e29a3583d29bb44b52622bd48
Date: Sun, 20 Apr 2025 14:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745158193
