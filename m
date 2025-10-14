Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E99C303A31
	for <ddprobe@lists.linux.dev>; Tue, 14 Oct 2025 02:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760408394; cv=none; b=IxU7+wx0W+1OqE76cdndhOwx6TIowQTYUSdH28oM79OruTkqsuIwmcsq0Zfc9i86kvLYuvEf0quNiS0VHxYPEvstlyqMOi6XZL6MwQc4yKSzPBzeuGYF7jRn3Q05Eb1Mz4MHFZjJ363CWpKxtGexcpGNqqwx4+70Theg76XEliY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760408394; c=relaxed/simple;
	bh=QIUDaW5g8ETJai9g1neCD2jRyZ2V1EagB4R1wrUMuls=;
	h=To:Subject:From:Message-Id:Date; b=tSsJwwbbCRLzOlI8IvzX+O2KUgrvvKYWxjjJlPU6G39Cxpy5heC7iD/0l/1yLCyeLEimvlm8amdGrxNqIXkIHJbxN0qHDJYaZFmQfjMqPTYFkxonEJ/5+EB2y3i7EUtPJH6+LxS6PgXO+Hh0aRo+pIKcs03f16G4v7+GZfpvpgI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T05QcXqD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T05QcXqD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7341C4CEE7
	for <ddprobe@lists.linux.dev>; Tue, 14 Oct 2025 02:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760408393;
	bh=QIUDaW5g8ETJai9g1neCD2jRyZ2V1EagB4R1wrUMuls=;
	h=To:Subject:From:Date:From;
	b=T05QcXqDF7M8zivupYnhTy+ZObrClTobVeLMAIOZnMJoZsq2VHqUI7HuKKXd97/oR
	 8W1uxG/1u+KV5mkPFMiqw7Va+UvUBT8kjg2XGYLUeq32aMGejAi7onF9p9keIs3mub
	 +e4UT83cKRRgtrOpMePQuS7e8Y0AEoHiy3Ec3pSpgQiStH1ymmJit6lZeTVYZB5VAi
	 lr7BrZEIW7b/N81LEo/jqgbP7foBtiFeSxqywC52gouDym16Oxwor9VS/d6G+1hJzZ
	 If3iV4c5pjBaLni5CVFyVzy2Mvubtqou9gEYGswcyK4TsR8GoCVHEhFG2ntJ++8G5g
	 Pl9+qrMwr3RSw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97AEECCD185
	for <ddprobe@lists.linux.dev>; Tue, 14 Oct 2025 02:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176040839360.13740.14222893006016437452.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aba6b45241822f7f5489b563f39a54495c031373c5426e521cb013c458a38fe6
Date: Tue, 14 Oct 2025 02:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760408393
