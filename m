Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33008173
	for <ddprobe@lists.linux.dev>; Tue, 30 Jul 2024 13:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722347154; cv=none; b=kYeFhUcZl69hg2G9AnAdD7B1e3cUW6Nr3USx33yE7kVN6k9iJ2o7b0k3i33thy/1oSsCciQ+NOVcCo8NoWoXqUVyrvrF//83gK1lfADAZbYxPM09SU/YcZdAtya+uU40uIqitFd8ih/dYO7myepmzYKqpptFG902KZF+baw0k7o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722347154; c=relaxed/simple;
	bh=xg+ki+e9KjcxblmY4lTK///Oa9QwxYmc8fd+vXoAT+M=;
	h=To:Subject:From:Message-Id:Date; b=MZerAVxYIlXD6bXRJaVXPQn/ruH0lCsM3RZmYgnD24wCKxk2SiIMUSjp78KmTlcCGe7e8XKcTqk7pu2Vf/qH1gHI8Z7PVcs5v9KhcMpocJcmJKy/R1YLBsnDFKu+mseGTKIIquVQCwvADjxjHWZivjTgeDpvRZ8GTv8pqDPninM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=a5JZw8gI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a5JZw8gI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9053C4AF0A
	for <ddprobe@lists.linux.dev>; Tue, 30 Jul 2024 13:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722347153;
	bh=xg+ki+e9KjcxblmY4lTK///Oa9QwxYmc8fd+vXoAT+M=;
	h=To:Subject:From:Date:From;
	b=a5JZw8gIQ7/gW4VJr1VYgIOObOP/nzoJ96G80dVF3d/D7d2lX1pYi0pYmjOBqvLM1
	 F0TlLyJqfRZ8cweLnAnGJFHxiTrtixeP0OzHLjqVPpsF9xH8i0O3e7OU99ICovAPrM
	 TUABFOe365F44RULBKkZCk3XgH7/rjkC5sDTsl9D6+pvGb3GsXCXqYphS//A/gs3AL
	 0QdbWNrGAonm8miuYb5MQ1Y3IODngausZ7bg0BEDMbzlHFKLr6FePqCHPyDT8XbDCg
	 D4ZV5QabxsGBPyRxqx3TtZ6TM1U5mD3GylB85mweICUnElZUrVUjm8V6pahMWulNI3
	 BTjgjn5566+nA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98235C3DA49
	for <ddprobe@lists.linux.dev>; Tue, 30 Jul 2024 13:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172234715361.5516.8336849641571046009.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 809759e69529f885e13067447f67c0b83ee450d5901902dfd2fba9d49debd8b9
Date: Tue, 30 Jul 2024 13:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722347153
