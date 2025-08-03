Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A373A55
	for <ddprobe@lists.linux.dev>; Sun,  3 Aug 2025 00:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754180394; cv=none; b=A27ElkpKZKh55Sbk68IUh8i4HLLQlpU+P29wKZXTd6HIHIyCFJ+U0FkkH+nsqV7WueGJHs+9vXTy2Z3RgvrK8be/z4tuVeoubD8KG1q6ZW1AECw266BKJQKDTBFn1y5RMGJNPHZVh9YqwyjFDo/BRkhtY4c4N5xSeqZdb6al3so=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754180394; c=relaxed/simple;
	bh=oInmMIE1KcrOfdL7kOWJToW6lpSoar6rUP5WhjO5qAI=;
	h=To:Subject:From:Message-Id:Date; b=BISgsbiMA/bGg8WtNKXBh6SHYWm5IqBK3EsMO1r7OQoqpygBwKbo7xi0RXr762D47jUyKSKmwASHJu288Y98IUErs6erzgGTTaXAgrd0zVZYO7MxX0t6MYdSMbolDHecmU4P7ipJyP2gd5r3wlIZdsjQf5cL+IBo4bLISmvelvY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=a66dAMyP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a66dAMyP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1A25C4CEEF
	for <ddprobe@lists.linux.dev>; Sun,  3 Aug 2025 00:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754180393;
	bh=oInmMIE1KcrOfdL7kOWJToW6lpSoar6rUP5WhjO5qAI=;
	h=To:Subject:From:Date:From;
	b=a66dAMyPnfJ3JB2C0uUTpV7l4mh7rTzRSB/9b3dNM3OTRhTR77aDcmj36senp+8dV
	 YPSkVg+KyOI7Yjq+RmhaXUcCS9+GIjnnwJHcgQpSp6QwrL7BHpXHEO2y1XNk/FjNeT
	 t1K2TpxGIg4gB3x6FuNKQjdFFJD8mQ1LNbXNDIsxqUw3pTJhjZbAr2CtqV6z5VAwmW
	 1JYdRI6Asj4eT98OafYoIhZqJMp3nKjkyyJ8Jq7nEolWH2hfQZ0CFQlJocJ45GMie8
	 Kv9gg5iZ8mibgq4CQOyTzuuzyYUfpwcSBjBoSrAXdWEOD/l9YZ0UuJ7npfzdcMLkiR
	 EIJr3dCAcOrag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EA5BC87FD2
	for <ddprobe@lists.linux.dev>; Sun,  3 Aug 2025 00:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175418039357.30573.5599701627804480371.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 745aa9cf0c28b3489abf09631f663276f16b2c3759abbe789d132ad9be0ba807
Date: Sun, 03 Aug 2025 00:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754180393
