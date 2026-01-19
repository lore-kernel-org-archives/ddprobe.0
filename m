Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 048313FC9
	for <ddprobe@lists.linux.dev>; Mon, 19 Jan 2026 12:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768825434; cv=none; b=Xvt2E6PPmwFddagDzGUS0zHXz3YUeD4ubFBA05izUAch5fMqAFjc2jkFfU5ZXfbMH6W2ZWW8U5rCh8adZkjq4W/TV8jWCzMZ0oZdktsieGrOa4iluHv0s/lP9tA+xM3i0uaO6SwadCK2TdyyYuf+0qObmfresXnWciRXfKZaDNc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768825434; c=relaxed/simple;
	bh=ymzFMdWKq8DYz3xYDBFz11vMAwe3ADDwXOyrA3zM6kU=;
	h=To:Subject:From:Message-Id:Date; b=Eztr+PIfORIZfoZ0JqP2WSxGn+dhT6xey1yeKrVXE7A5uH9mA9D7Q6YW4KkvZNmAfQww/GVsk9V0vPJZMiKMTeA7T6rYmGUvbbQ67ePM2FUGN3X2sFuafV/XfOE2pcg83jvSAUVoQ26Pio8JvUFV8HVBzImprceD0zCFcXq1cbk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o+I7ydi1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o+I7ydi1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1F9BC116C6
	for <ddprobe@lists.linux.dev>; Mon, 19 Jan 2026 12:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768825433;
	bh=ymzFMdWKq8DYz3xYDBFz11vMAwe3ADDwXOyrA3zM6kU=;
	h=To:Subject:From:Date:From;
	b=o+I7ydi1f9XazSHcwX/gV7R7unb2Q6Wn8w/lTkwhRi0sWvmsQ9JfNT7pmHcJgtcD2
	 sJKUm3DsRtJ66qwEaccuZSgJ2S1XQzw/YUKSNT3l9BuUC9sRbaISgxtCBfmtEShxeK
	 NbPqVEKLncjSwBrXWj6/11HgjyXkPgOztYggXPUMONYJWvpKstHt1SiAJW6qDBqZwR
	 gjS7gK98z/7BA3+4KWc0EpNW5WuAiQ5tYlHc7MXnw5L2A6mVZjpqvTWJWsiHTpcExF
	 TfOnNvxpXU2M9/sh94E+N989N606ItEzftOt+6eA89ZiVbHLg9hY4KrU8kM0ilif0P
	 rbSk/JZ60FnkA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 906C6CCF2F2
	for <ddprobe@lists.linux.dev>; Mon, 19 Jan 2026 12:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176882543358.31948.855658796416293396.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 67f745f78b8839f3d256e7b5d9bda17ffd6b878cd680fb383f4a7c0d9b252a82
Date: Mon, 19 Jan 2026 12:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768825433
