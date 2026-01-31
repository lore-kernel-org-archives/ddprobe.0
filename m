Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DE2681E98EF
	for <ddprobe@lists.linux.dev>; Sat, 31 Jan 2026 06:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769839433; cv=none; b=EVM9jyHsJDLZVSaAX9AP7Tm7m8qZtqYv/wJpqmZJ2nFNCx8cnNRKv4nX1NKNx1w2CasHOEaZ+84yZaEdx2voaw2q+lEzg8PHMG6ssm/j3IpJgjjO8LKf44kGS1f1+2vzcj24znKNdRpUWGGHbvz1qfw2mAmR3jkBGUf2MQA74o0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769839433; c=relaxed/simple;
	bh=fabp2R+8yN9YfO6PtHc/tTuHv/AC9JKJg6FvwvrigvA=;
	h=To:Subject:From:Message-Id:Date; b=CgoC6fnn+QWbTKkHLmKvmaGnuzkThVkxUbCIvGEysKwJr41wEf6sE7Z1EO/87HqAfp4MfvCwO7vM/g+4akOk+Js+hbosW//FcCjiN4mwGUqQ/cHdibnDTSKZXXK2Vy9QJm6JcU4M3XXF8TDr8LfsqhWL/DgAogdSnympO/tMWtw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CduXO/DD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CduXO/DD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF1E7C116D0
	for <ddprobe@lists.linux.dev>; Sat, 31 Jan 2026 06:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769839433;
	bh=fabp2R+8yN9YfO6PtHc/tTuHv/AC9JKJg6FvwvrigvA=;
	h=To:Subject:From:Date:From;
	b=CduXO/DD1QX1qj6U0RpS3Tpi7jwEiXvFwtSx4iUbVINeu60mcot7x6pvR9NuYtSt7
	 +T7CloZBNLF5bvWe3xcH6m8MUIJNtNQw4U1jebaqYs/sayRmC5UCckqK9PQd+Ryhn6
	 WX+21oUJgccQxnJQe/WAhp9N4lUMp9Fmp7YpcGUz/KUXt2mJIr6lnMs+7bT7p8Qeyj
	 Jids4QDc3oQqB+hCzs/TMNySWzliXoCSA6tMaOWL2HHFvJgKcAsr0cqgYOTA7p3mOt
	 xyo3KfrhgqSn02yGLXHGAH7mQS+6oxVpsU29B02isLFcaLLYWvA7HSabmkw9HYcHMr
	 Tlv/w/DvkIwWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9FB65D79740
	for <ddprobe@lists.linux.dev>; Sat, 31 Jan 2026 06:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176983943360.13389.10205625859250880067.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a68ebac6d54eba777d1384a0025382f57b537e97da22074bb57b4f6541594928
Date: Sat, 31 Jan 2026 06:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769839433
