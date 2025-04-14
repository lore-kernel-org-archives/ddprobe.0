Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5345D297A7E
	for <ddprobe@lists.linux.dev>; Mon, 14 Apr 2025 14:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744640994; cv=none; b=Lh2i7Gk/1EUqlpcNhyHkwGX+Wips+9lXBJOTWbNr30HVRV0Je2zFsmCpAw6KBMmrlwL0NOI/kb+nBtT6JkgAOZX3kN+970V3EHAsRBb4Uda7cBEwxgbIvrL/7tYapvH6l5mpNdtJUXY41ayOehmbhll8dlA10cQzs2jMn9EOgHw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744640994; c=relaxed/simple;
	bh=UJNJKkLPnjEqTJIpexLdjasSAQwbIx+TKDPkHuWQuaY=;
	h=To:Subject:From:Message-Id:Date; b=GhCu8U+Um5T4PHKMkdfYg80pEGcNZKeSUTvk0Cm3ZLWOo1rJmxKSMgf3oCGTYl8lR/5bMkvGgLpxsDxqvHd/BYN6K2qUkQ/S0eaDdwDeX0IO26YSQ3FL0sr6Ip5FGWO6lEx/t69S1kXUWhbmvkGDxF6piMmZMOr/8GN3BinuQt4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RrHr/FtH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RrHr/FtH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3312C4CEED
	for <ddprobe@lists.linux.dev>; Mon, 14 Apr 2025 14:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744640993;
	bh=UJNJKkLPnjEqTJIpexLdjasSAQwbIx+TKDPkHuWQuaY=;
	h=To:Subject:From:Date:From;
	b=RrHr/FtH8lZlfqXBfySJs/ABKmJgxk+KkANUE8Rw0q9zZgbkk+VaBuz1M7/G6vv3U
	 WVUAtZDr1RyAqJqF4GPJ8j8uzVPApkgyYYEoZ5VBf20tSnyPfYoBjoV7rvfMDl9M55
	 iGxnuMtjEDr6k6X/Zdmxo66ICuVn4HNHG2Zn6mDoHv5kXaEuPO5jtKngjTRehjuQI7
	 I6hpiUUBNGXFzQXQ/qjp92dIDLb5QEoJKsl6LVqoTpJVxPbCKE3h3aanzuJG7N8Csc
	 m5hOpzPNbOuDV9If1cDRdXnViUuI63uSWWCUsIIPBLe+JsPL4EfRllg81axqr4buMN
	 EFs8ZSgLfQmjQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D1C6C369B2
	for <ddprobe@lists.linux.dev>; Mon, 14 Apr 2025 14:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174464099360.10109.9937127386873331041.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fdc5e3be238c5a065e92cb732757c9492c57106579f7c5e09aa16b09572d3bde
Date: Mon, 14 Apr 2025 14:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744640993
