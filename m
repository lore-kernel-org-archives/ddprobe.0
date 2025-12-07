Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0BC5D1BBBE5
	for <ddprobe@lists.linux.dev>; Sun,  7 Dec 2025 20:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765138374; cv=none; b=BiuJVq9enm46ZwJ9I9zUY5XamtAlqTGEmUNhNeiA9k8edZnDhu57OYnqsBlD5w7N/MNHuEcOe9SibSksYqns694B2VGuCkJVlxuJD2XUqvcBu4b4mouSHWXxQUjWoS38zXYl1K7Nb34XzLZaPFAIQmMse+A+wfi+Rd5AzXUk5qk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765138374; c=relaxed/simple;
	bh=k4Jt0+JJhVT4klLcU4ZVvR8zX+UhE10Ui1/7gPkDWFk=;
	h=To:Subject:From:Message-Id:Date; b=ejlKkFgYP5R1+DAY/xPUqQkzfvwLPWl5AJ/lcNdnMDmw66EHDe6qu6UlvtcXnWVTmzgbwsoDHv4saJLvKqc1Kj0P+ue07+cx4UDW5azxcIsgMT2TIYy1O9BoG0FCKovVYE+XDfA+Cu0LtWVkaaKZY7+ZD7HwJSLNcsvccvmyLR8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=j4/EvxYG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="j4/EvxYG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6909C4CEFB
	for <ddprobe@lists.linux.dev>; Sun,  7 Dec 2025 20:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765138373;
	bh=k4Jt0+JJhVT4klLcU4ZVvR8zX+UhE10Ui1/7gPkDWFk=;
	h=To:Subject:From:Date:From;
	b=j4/EvxYGnrlq4UXIkiQKgr/vesQySxXjkosHOapRe8XUov1jh5BWCvA8lztPWvQEe
	 MANM0Pjq90ENOZsku2Nju9yTyJzw5Ii7jbEDhTam0v8SG/IagBq0jpOev/sDqsoSUu
	 YQV119WJ67Ue5JaKhiFm0o4IaaI71YPR910gxSrMOmE+oePuP3sBQ2haf3AD3+m3gr
	 CpA56Z+vnn5O8FsHy2Lwbcjn2wDeQJpqimQpmYBpUxUx9dIgxcWz++777ZwuZSoICZ
	 Hk4ZVMFOTqbHDi0XW9/UuJHLbJpH3hUG9VuIZ7/LMzz3dRASsw2xf+KSbWVdBHJLwM
	 gLG9JgU3FFD6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91C98D2CE17
	for <ddprobe@lists.linux.dev>; Sun,  7 Dec 2025 20:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176513837358.28969.17747875589509094733.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 81a1b834b339776144d7534195db0d1fc86c86cddd5bf7bde659fee9e03a4106
Date: Sun, 07 Dec 2025 20:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765138373
