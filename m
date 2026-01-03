Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F19F14A8E
	for <ddprobe@lists.linux.dev>; Sat,  3 Jan 2026 23:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767481434; cv=none; b=c6pmF0s22Yst22mozBs/q59ov7+rlwaNhR7Bm7hS2Nu3fp3nhRVN9GYg+6yNnsYvIkDy7YhSwkxv8bOPYzGPAikJwekWzlsMkn9wS0SMyLN7SjXpLU4O297HOMcXNey/vgM77w+y/4cvXufmuLuNZpJqcNI0odlr8TL+EKdHw54=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767481434; c=relaxed/simple;
	bh=A0R3wvQMkEWclC2NH4aDqkkqcbUKSmeKFdOD9ISywPM=;
	h=To:Subject:From:Message-Id:Date; b=CikcqCb3k6tUYTeEgu1A4X093Rx3BG5hTCSXYgYVFKemGU82en4XAvbHKbbDwxnHUF2sYP3otcq7zlgBkWygbbgja2tKH49ZbBc2dhi0GGzPRiTTLoYG4nJNnScHIavgNLTxyRhQOPTaKB0iJmxDS/onu9Ypn46SamzVe0mUOd0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OIg3dIAQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OIg3dIAQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5C28C113D0
	for <ddprobe@lists.linux.dev>; Sat,  3 Jan 2026 23:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767481433;
	bh=A0R3wvQMkEWclC2NH4aDqkkqcbUKSmeKFdOD9ISywPM=;
	h=To:Subject:From:Date:From;
	b=OIg3dIAQ/ZJTYazw/vKymkA98H/IvLH3wB0L9HAPyBih6JXihD28QFuuwBUdn1VfP
	 mnlxErzWiMkoke8KmhGt6jcB6a9r/rjLXokZnyNvrg8lKXz2fnROK1PymEdsI9u0SF
	 jvVQghgSaJdm/E050tmiYWUe6z84qESxqUaIRcdu9QPkLvz1VUTP3Fol2vQ+MuIYpv
	 vJVj3zkyopXp0/4lpdmL5YS/9WhzkuNxCV6zo/0Em6L30658rPNQ+cP4ppTc1NiDAQ
	 Ni06kWlLNU9W26szem54qfru1a4Edc9IEcmyByH6CzhY3+xA4vT7ygDOcYDw4ocHFa
	 UTWUm/Ui+q13g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 956B9C2A060
	for <ddprobe@lists.linux.dev>; Sat,  3 Jan 2026 23:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176748143358.31938.4352249152735280204.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2c939b63465dd6497d33f29d7e1f3e4d47fc376e1aa3182e3ac3a09fd1fb7ecf
Date: Sat, 03 Jan 2026 23:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767481433
