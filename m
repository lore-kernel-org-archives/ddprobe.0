Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D3AF13AA2D
	for <ddprobe@lists.linux.dev>; Fri,  5 Sep 2025 08:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757061594; cv=none; b=GgpUY8IxRhjHzuj2iSy0judtp0tei1kxP8NHn46GmG4O4gy3Kjwh6iAeBg3i7tFfcNnXPAXtVsmhJVLfeJPp8bYOV3hKjtl8gcFeUh2d3rjt0M1jxz6D+XKSUpdmF4bFaRr91Djq6nZECjPvfU8evgX7oCpbJhBqOGAkrpNuy5I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757061594; c=relaxed/simple;
	bh=738FpgUSNAWJEpyFgAE2SLNRzhJbu43i4mzzADaPBpM=;
	h=To:Subject:From:Message-Id:Date; b=CtESavzIyA2x/T/t44YVPKwSTtB98D15y8Vp03uYiP6PlOeN0ktCb8XUJu7HsyJn05QhYauVMRRTWJ5aA+9QXKacTdNthZhGpVjK8bTYfNp4HwFIPnaKaFTVKh25VyvE9pFlY9tYBIrBDA8efXwr54dDuxmtoWdIT/SnkEEF69Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KHekHLkj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KHekHLkj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4338C4CEF7
	for <ddprobe@lists.linux.dev>; Fri,  5 Sep 2025 08:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757061593;
	bh=738FpgUSNAWJEpyFgAE2SLNRzhJbu43i4mzzADaPBpM=;
	h=To:Subject:From:Date:From;
	b=KHekHLkja+LOHkY68+b8lCp4E0wKZvS9HX+dlsP7oJTxxznj7Yc/2XnNgnHv9cykp
	 ACmcPCHs+Z4GDjVXdPAjt3CunB1VWVLLTr698JJdjeZ+Yt4Rg8bGgvxxvr2xREqBQw
	 cUWfUV7pC1PChLayj/0Z2rFYoZ3uuCVsJPYyx0ntC8TsURYELIDE2ls36v7iK7ZbdK
	 lexdoGXGXFNuMlvNwOUuP3fQQVApPS52X5IRKP5RvD96Q9K4XrQVaJmnkgPYQq5JUe
	 7BBFDp7j27HmtLuxWSPWGx2g1fLPJNnuj9exAoAFVaEg9NKWu+CHL+c0zuYJuU6Aq8
	 YIx0g6RLuD50Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 926B3CA1015
	for <ddprobe@lists.linux.dev>; Fri,  5 Sep 2025 08:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175706159359.20465.6923879651716893000.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1e7b1a30c52e15e0b15dbbd29e7ab878227f3d0fa92160f62baa2765fcd569a4
Date: Fri, 05 Sep 2025 08:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757061593
