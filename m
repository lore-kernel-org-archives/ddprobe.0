Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 329365226AC
	for <ddprobe@lists.linux.dev>; Thu, 15 Oct 2026 12:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792068034; cv=none; b=uaP09+9uL/zs4z5CbBf8kk7dafCKMwROo4foW8N9cDL8CmASgwB8mRXE39IrauAkxubbV1tXUDh1wr9UKWuwk1D7bqAIGCgX6o/Urkw3wQF4cK4jjGMluugsuSqz6kcxc7PUszaQUih71qnZhFj5z0+khWY0I+ixjbeqD/tIn5I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792068034; c=relaxed/simple;
	bh=etu6XvOVadKHfZHX8jjT6EDzrjt8wOfNRqyn0B8GFRk=;
	h=To:Subject:From:Message-Id:Date; b=iE9EUgryCC2zLSHDJQopMcoWKE21ZqXXrs5au8Ard8YkTZBsDkFg17u82DraNpcnTu+zkT8yUBihtfdppNNenOoRHiUSUoyV5frqD28HJnfZvvQU1dTzLzFY35tuUKUd1rr48jRx4arYjXlMTgnpLgH8h2Fdm+44xevCceTZpgM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=clHgP5A3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="clHgP5A3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF496C2BCF5
	for <ddprobe@lists.linux.dev>; Thu, 15 Oct 2026 12:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792068033;
	bh=etu6XvOVadKHfZHX8jjT6EDzrjt8wOfNRqyn0B8GFRk=;
	h=To:Subject:From:Date:From;
	b=clHgP5A31U4ufzJLCCbZr0wDpL0DuNEmiB7Koa5C2mKTgWa5Wbl3OtvWvpex4O4Gn
	 m8BWK4GLmJLxOD5ILyM9yS5tWbqP5tSLrYtblYVz646C/gbJj5LKw+D4aMYmxEMIpI
	 wj91c99OKOwqRj5FF7iWGdOnbyEU41agp8mfqY3oq9XZ22RyjsLGXtC+Fm1uYpLv/t
	 zS+4dfFnJwu72LL4oS13XqhVzdTS6JJm8sZ4OrbOnsDV4xNqCE47OnXSWmJQfADFZT
	 q3AU9BfwqP64VuiqJWtTq3fEKEZRPlfylRa6T8/L0jUxmXgS7kaESmB+C9Nypxpw8k
	 XFv8L9NiddQ7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE14FCC6B34
	for <ddprobe@lists.linux.dev>; Thu, 15 Oct 2026 12:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179206803370.11870.8172036173523824393.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f553a23b87dfb2675be4ba361cf0ece22aa5a2e2d010e2abc98a609eb6ac638a
Date: Thu, 15 Oct 2026 12:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792068033
