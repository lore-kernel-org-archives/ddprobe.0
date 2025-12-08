Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 915A72D4811
	for <ddprobe@lists.linux.dev>; Mon,  8 Dec 2025 07:52:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765180374; cv=none; b=sHwVbbxJA3FTFt370e1Lel24XzH1lL0QeP+TE5g9xaJXgBniA57aNpnv9ueX/9bQZGPiq9GBcB6VNbTE8yPlX+9GesTbYN/EWXwdHLPEG/hINWcJZERhTtjI6yHNUNCEw4c/teGWr2MTOwa9HNtcl98QAVQJ8w0lbI0O5U8VUq4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765180374; c=relaxed/simple;
	bh=c/83ZAdMIb/l7F9PM0dg/BO+S+glqODmAgPm6qTPA94=;
	h=To:Subject:From:Message-Id:Date; b=ZkMRKm8cLArwa33GE+Y10d9CTm/y0yCC2Jv54+5UVuwdQS1ylodomKytfFObydi9FgPB07tEHh/rYAaH+E537+fiRAY62YTLXsoqmYMVjzyf2JQU3wu51haAhPE8UQXxE+ZNkZhLWHDO40PrTHIgF3qQ268aCiXfrkzbjytGioo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YRYcOo2G; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YRYcOo2G"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A412EC113D0
	for <ddprobe@lists.linux.dev>; Mon,  8 Dec 2025 07:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765180373;
	bh=c/83ZAdMIb/l7F9PM0dg/BO+S+glqODmAgPm6qTPA94=;
	h=To:Subject:From:Date:From;
	b=YRYcOo2GUwkqJA5uWotry+A48Cy/ors3UrJxBTyRd/gOZdmXflI/mcgKn+0KJapDo
	 a8D5qZpIXGY856bYpox7yGh3hzwKC1qaQCfLYYYhEnqa2Z8ECpxSRu5a9GB5aicIyW
	 L35vDRP01GG83h1gUxikYT5ZkOCc2s4aGsZ/I8CGNsyjZKFb7gRbj5S/6+XvQjsYVE
	 wqj7ksZB+NEmaD4aV4uZJPGjL/gdtJmiY271s0tsEjp3fnbrTRReh5Bx6AoipkqMhh
	 g3g6vcJ//aAf21dbJdoEh3i0N0dfxLXC3iHdQ58OmC6HtQzNhDQxbuR1gkeMqGCTuU
	 0RqTZtpfYOEXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 912ADD3B7DD
	for <ddprobe@lists.linux.dev>; Mon,  8 Dec 2025 07:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176518037358.32212.8603449487016145728.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 33b4ee7de5ed40d7bec923ab914b8a1eb3312751186ee78a2426cd9e5e5c6c95
Date: Mon, 08 Dec 2025 07:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765180373
