Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 228FC2773EA
	for <ddprobe@lists.linux.dev>; Fri, 10 Oct 2025 22:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760135994; cv=none; b=sLj886eBuC+gcHG1fQsnvj3S9u6/tU7NK+H5uo8GGlteNYq30cXkjQibEdY1NqL+ALzOceQDqkWJnJHevnqP7b2qHaWit7BHt2H/EBsiloEA4djbiHzDGfAqZ4D05JcP5qGCFGV4k2OEzpYlgwrEMa7nkk6xw8IypvcvdZP9qEs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760135994; c=relaxed/simple;
	bh=5QIDDhfoiFV+9LrdS7QnEPi0wMNcyEgQRrdTs1vxrx4=;
	h=To:Subject:From:Message-Id:Date; b=gUYG3mGHjU096w3yJgZORXNgQHu/Z3rpceP9XBE+wcE0MvKv5oDvbok8telEwIrQDjjxFHGbDqcLTsBh99ZHw5BxRHvKo6oNj7BNAAelWz9emRH2O5FzAXPgiamDJaCsxlEHcGhTC9210CU5wEzhnE02frj+8hQ9FVCE6Rm6JpE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MnhTldUa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MnhTldUa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A38EBC4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 10 Oct 2025 22:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760135993;
	bh=5QIDDhfoiFV+9LrdS7QnEPi0wMNcyEgQRrdTs1vxrx4=;
	h=To:Subject:From:Date:From;
	b=MnhTldUa+mR1KWgB4NQDVqpitn8heZUriqyA65XQNbtoNDMUba5nsG0ru7yeMv1AW
	 SNwmYbAYRgXkoEvNferlQyc5vSFX7gY/EfrA84R33GIHS8pLjsdT6P97YZUUs1Idxq
	 6aw/U5N7ZKH9iFgJMvCrODbF6VySNYNU/qRuOh08AxCOR2OGUqhTvvD1aWPXUK6NwG
	 oJnucyJJ4CwCyPMmn0j2Ym8lc49h/laD09J21uaJAS3r+Vj05xyfHeJ3TZm68TRU8Z
	 uMX6GO4zs/vCh2d4CtzFRS5A2lJTtxIyXgEfTbjsfvi229LEwNH2Zbd5rzow5HyD39
	 CSJamOMFOwXXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 929D1CCD187
	for <ddprobe@lists.linux.dev>; Fri, 10 Oct 2025 22:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176013599359.13920.5473410769439177770.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ad08e2948f0e9d7056b2e04595b55b90158d20bc44a3c86d0459acf6b40e6630
Date: Fri, 10 Oct 2025 22:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760135993
