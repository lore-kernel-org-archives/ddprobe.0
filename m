Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A5E53FE664
	for <ddprobe@lists.linux.dev>; Tue, 24 Mar 2026 13:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774360494; cv=none; b=P3rlGx+IANKAEfMP91CENJ0w+uyV9Mnxv3koL7bYDnsUpIe8i/S6kNdTIpgnfNRM31g3gORkneWhwtkdcPsKLwhUZg7seFfDnAZGbTzH9P55ZJgvSuBFU8Tcb9LNwUGmf0BIg6mz14Exqvs5LB3GEHIn3u04nz1ynt3SuabX6C8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774360494; c=relaxed/simple;
	bh=uFzo9ZywwzP6Z7/6LQNSfyyYe1xw3k0VqSThRzlISTA=;
	h=To:Subject:From:Message-Id:Date; b=oW6yOyeVvby458uAbdwZcCtxzgd6QJ6li6wfm9t1ogxq/6JXIESiTW9crxaH+ZBpQeubI62BCdtv6I2xlev+yzQj69aJUQ/0zapvcq8w3ftY+i89r6gIlFbWElrQaWE6iNsZT7SLjcXokudD2Kj61/OXG/hPq8VFRbzCVTdPafk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=InAwT3Yt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="InAwT3Yt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9357C2BC87
	for <ddprobe@lists.linux.dev>; Tue, 24 Mar 2026 13:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774360493;
	bh=uFzo9ZywwzP6Z7/6LQNSfyyYe1xw3k0VqSThRzlISTA=;
	h=To:Subject:From:Date:From;
	b=InAwT3Yt64jFys7BZFyczmyLAknYzxNSHTk/UL/vSDxk+zMr0JJdPXtXCfsPI4wxE
	 JEfgYLB/sMMgRAvZdM6XrL0hWLRDXd5N5LSu0WRHaoWbh+K5sJ+omDA/BBI+a9i81I
	 Krf0+ccGziCB8m3lZ+jMyKegvsE9xnz4oayVt2EnTdXGYTkwtWhFGJqp1cos0PKBoQ
	 Vzj1/Uksg2A4f6GIqq4EmyoUNAobe+6PldVablckvyywcNnnTB1YmvCyK+12Y4FkZQ
	 BLpYaMRXhVIl67OwliMGa3VYS4DIFZCmVImYDcph2h5QaCYpCXurE64OJKHn6Yrbqu
	 Xy+PUXTT4OyZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97EDAF54ABB
	for <ddprobe@lists.linux.dev>; Tue, 24 Mar 2026 13:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177436049361.27227.18394473792095450204.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d2f42317b1fc3d6981e92ebf94ef7177c17420c42c9bd90910e5014451db73f3
Date: Tue, 24 Mar 2026 13:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774360493
