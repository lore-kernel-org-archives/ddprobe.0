Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E8FF5383
	for <ddprobe@lists.linux.dev>; Thu, 31 Jul 2025 12:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753965594; cv=none; b=tsnakRS1+NkS8gQdOrqvF1uOP4CxwueIuF0NT2PDRgSJNszMWWcyOWzaaqs6Vf77BrOU9KETNQpW5XPHpb2mAwzPJiqXtDEpBv8o4eSz77NXmR1NmTnjEryQVlGX7ikfmjCF6+k4PHzv+fS6KmmpnRfDspQwzbpi9CtvgvUjjVA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753965594; c=relaxed/simple;
	bh=j3U3GzCW16RsiGM48sWfQJbopE9XGGWwwUrdi3l7R9Q=;
	h=To:Subject:From:Message-Id:Date; b=luK3sCwsC0jO4ILd1yEffrc+iAWGC2/jFpnms31CwWtXVJF/ecNXgW6iQIXBHaIxtnB99omicSV8GmKjfZ+fSNh3ye8hJYpR9TBviZOA5weM2mUlwDT6XPF5Hu7/gNxdT3zhW9NfGQzLmDmI3iBvVr+gKsAyalHqIBZPAXbW9Kw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=adLq6Mpr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="adLq6Mpr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A12BFC4CEEF
	for <ddprobe@lists.linux.dev>; Thu, 31 Jul 2025 12:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753965593;
	bh=j3U3GzCW16RsiGM48sWfQJbopE9XGGWwwUrdi3l7R9Q=;
	h=To:Subject:From:Date:From;
	b=adLq6MprdcsILVlaG7yTyBeTFi93b3JJOETB117jX1pksTpakKElt8kZsDmiMUN7v
	 tny+oiCt3t6UqbyVYTTGJZ+AKs8hMgNizNA6jdk0UNTSYCV4sEl7ATmkbqFKt59yPn
	 l22fWYKMgFnzW+kiQs+WMM2n/m6lPGKsnWUxU57ItPwNbNj44oqnxzvQQxRD/rxGEh
	 SK79U16ms4w2OLimRVeCbn7/35skXnyYtro5jCOs9RixuXq1RLnkFc3iPQgLmxOJmk
	 1XCuCQVHgr7VWZ89iMIgmbhiQ/B9OsL7FhY+q5D5qvC9gXbCavjX2FACfRKIyFt0yB
	 9owoqe9ITD/QA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EC31C83F17
	for <ddprobe@lists.linux.dev>; Thu, 31 Jul 2025 12:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175396559357.27644.9408207185384325693.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dde10a923a63d56576ca37e0bf2372a2acf71c93c37be720e22759ac43928b7e
Date: Thu, 31 Jul 2025 12:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753965593
