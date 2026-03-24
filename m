Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C08523AA4FD
	for <ddprobe@lists.linux.dev>; Tue, 24 Mar 2026 07:24:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774337094; cv=none; b=tQb7tvyrn+uptAMLLMqctTNpBsxiBq9rSzM8UELVMSIbv07xRNt2w7v3kvlLBGUDNFB9i2YknsnVy3V3G1byS+scl6vJp+CP5P8MCVzILb+GA3VJMjgGusQja5DbyapIt2WDNGZbwCxTxWUBFmyeWcwQfqBpJMnXnfHF0e+QWqM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774337094; c=relaxed/simple;
	bh=gsX9B9aLKR31TcU4e2zQ++rWTZrEn0di7VOCJtVTAk4=;
	h=To:Subject:From:Message-Id:Date; b=f6BsFJYtVk74dUosd9z5qNh3+TWveFkb7xl+boQXXJIKha6GGa7KoCP2QiWLi0RcCU84LjQbTV0jCYExF50Ex2Q+GgCqxkQtv6Kv0tWpIvhaQxOlzb/shAmPHAWsMqFnYij3Tt/x1eW993fpsXFPFOfpyXVUjaKuurdwKjGbasM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=f+thFlaJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f+thFlaJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3ADAC19424
	for <ddprobe@lists.linux.dev>; Tue, 24 Mar 2026 07:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774337093;
	bh=gsX9B9aLKR31TcU4e2zQ++rWTZrEn0di7VOCJtVTAk4=;
	h=To:Subject:From:Date:From;
	b=f+thFlaJP7prfz+rfFZwuv5P2fdGT9aNPfkM2gnGUDjvI3rc881ZGpdSkm/MmiM77
	 tVDUtCmcprNzNm3tEmdRo3bkBdv/pRIr7phY7gZK9ewj6bmBDxIL78YV8SPymQbJ1c
	 vn14au+U7H7o7v/kBUbK8BRaKhgY8CJDB7wf3TY5t4iph+JcSVjKzd62wCyxWK4LAP
	 iSJnHoZUivAKHiZHHr9wrhQTfeLyOckzAM6Vt7/xmYWeqAYcClLD5AKS3wJhan8W88
	 4YxOVpQcEL68KZTTLfjX1ZO4O4tXyFie0//hzaSyjYJqSVdDqN+xdqHEGcfpVUx2gL
	 l1vQ16pXDD9sQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93CF6F532E9
	for <ddprobe@lists.linux.dev>; Tue, 24 Mar 2026 07:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177433709358.11359.14187276741419835347.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e70138fadefd8b2fadfeb4005992afad1ddf9250e678d75afe0dc9e00da27095
Date: Tue, 24 Mar 2026 07:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774337093
