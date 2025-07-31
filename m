Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0933E21CFF6
	for <ddprobe@lists.linux.dev>; Thu, 31 Jul 2025 21:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753999194; cv=none; b=qjlZjb8tPhynHIr5QgoeZG7r717MAT3THCNcCntVEdl2qPoq47vxnaJ7Prp1KAS4idPVPo7r9QDq6wOsgCTSToG4DHc8Mi0AK0oDO0yEU52AmxTLZxektfw0Dq6kcr7dpC1Y2+4ZV6x6QlN5qf6hRMwXaUqlVyJbmxNljycv3RU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753999194; c=relaxed/simple;
	bh=Ucn1rqWRdVG2IxMMVN4rCTC9fCNCaWGxN1OSipJ/JNs=;
	h=To:Subject:From:Message-Id:Date; b=LMjzpRhs1iXrG+DzCtKoOGBparD6h0SGFNb0A2Z3OLM38EnjPXWNzaWUG4PUOTrbqHQfSGYuG2bg0JsQxlIHJ/1if8Dnv8pbPEYl3AToJ3FlXi7L+adOoMoaWgw6yT4cRTu2IwmsL3rPyMtQTHoLRhCG5eXjw5j+fMn93Bok424=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z/Xm/5jI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z/Xm/5jI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9A6E2C4CEEF
	for <ddprobe@lists.linux.dev>; Thu, 31 Jul 2025 21:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753999193;
	bh=Ucn1rqWRdVG2IxMMVN4rCTC9fCNCaWGxN1OSipJ/JNs=;
	h=To:Subject:From:Date:From;
	b=Z/Xm/5jIDdQVloKOs0vtxJgYBZ2k5RZjUO3Xny1tUTJW0/e/TjHlYqFNM6Pushy5L
	 izaZyrBeFyDTCzNg5groiSesq3tZz52zBljQ4KhqXltucwa4XvPLQFYxZKjca0XtOh
	 FVVVc0lhiSt2jLN9n2+HLjIdaxxyn0wotVc1kweBciZ/R6Li+D2oY9P3n6EPyHfWcW
	 MKFbyHqwHxkJSg7c1bTvKK7ru+RRT9ji5bRcWgWeh8RVNDtLfzKA/nVO1JTp9bjjHm
	 hLwStLWmYMqDCdDSqjfigjChcvGJOwv0aZ2VJBwd3uBcJpJR35ItCesvGbSNY9qQsz
	 IYpwUF7vCAaWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90A71C87FD2
	for <ddprobe@lists.linux.dev>; Thu, 31 Jul 2025 21:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175399919358.5267.16388330744617353395.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2973a3d1574e0c260f1053ce6143c7cb632cbd68e851f9d083ecdd002d80f328
Date: Thu, 31 Jul 2025 21:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753999193
