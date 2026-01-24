Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10B5722A7E4
	for <ddprobe@lists.linux.dev>; Sat, 24 Jan 2026 15:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769270034; cv=none; b=e14cj5H2nLE+AqL18t2qqoCNtMr6B+zI+UtUC7XnRvCcSre5b36qZn669ZxaOnbsHnJaNlKLAvspAoIwovJzKBiq1kC8SIU5tJS5yUwMWD5Mi311fIaXSH0Wu5WxHViM5n3maoLaROdVtepukluuuOJ5giCEovapU86ltEBaDM0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769270034; c=relaxed/simple;
	bh=Djaabv6T8PQl7Mlk0xf2F86TFNCEQb23/rIJZEZCoVg=;
	h=To:Subject:From:Message-Id:Date; b=nZfO7v9WNE64eqqlXlffbAeN8XTQw19631P/8HREZafUEOC/rj4qR0pUTHkpvaAYbsXGoMBd3Gn7WIrHttWr/BRVvcjs8DRPYWbYSK4ATtI0Fv/9u1oYYVlSgfTlKh13vsYm7mrRqzoOC6NCQnbPuA+mvBIueMADCJ5gr/2U/00=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jn0xhoxk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jn0xhoxk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7A2EC116D0
	for <ddprobe@lists.linux.dev>; Sat, 24 Jan 2026 15:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769270033;
	bh=Djaabv6T8PQl7Mlk0xf2F86TFNCEQb23/rIJZEZCoVg=;
	h=To:Subject:From:Date:From;
	b=jn0xhoxkHpC4BL/RWIxWbqB89xPSoOmo0o/0gYzPsOiWCv92NauAZyxxeXDK9IvXy
	 6IgYp3Dvbi6d4zkyMWxrUUh0m6UzxUsnyZCImEGAnFhrgSXe6pNE70SG0uUbVH+xYf
	 Fc0X3pA86H1MrBXLdgf0Aq7j+EDBilngTi9DVLwBABJB8Dvx9G+dQxhtH10b0/xGe1
	 Yir9LuEWF49JrLzXD9iG/8jnTkq+bCEmrq7jiOeg3FY9MlbGImpDb15x/e6/7GnyjN
	 5Bz2YbTQ2hZ1FkRBLsewVj8VGuEgXcnAI5rB+SSuGa2d9wiD4qPhKsvpCYmSX6hu5f
	 3lbAyWd4XflpQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 931E6D715EC
	for <ddprobe@lists.linux.dev>; Sat, 24 Jan 2026 15:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176927003358.28599.11003689479754078046.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eeae5b1a7957e286979e5fdcdea25e762256b5d52e970511dc309920e7f2d4cf
Date: Sat, 24 Jan 2026 15:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769270033
