Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15230307492
	for <ddprobe@lists.linux.dev>; Tue,  4 Nov 2025 07:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762242594; cv=none; b=PX3HaKS2gGSVi24XmbjbCE3L6B5aUppbg8GeSH2QBwlkGzzPtaHq7bJrNHEPG1G5t03oCXmJAQkABJJiBBqsb1nIGjbwW3zOjdkrJScMCQR/Wt9dvDhzmICGurRWKVYc9fIHtZ2AWNhJwDT0jq+2o6wHFkjL6zixlgR5CJov44Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762242594; c=relaxed/simple;
	bh=ika83AtYcX6sArt21Ws15r6ADNpSW+LcIalWVl/CLOk=;
	h=To:Subject:From:Message-Id:Date; b=Ca6pdBjVxQcrmpSj0BnJUIlMNHNLJTeKWIYtywA+nlMUk914skcuG7VdoCQ76t3qLnSuVI6UYcLGiGZy7b6NjH4zRVjR4sAP8W74hiejxuRLUcvPlPzjB1nZGP4S21B+gBqbQ4EfMe+ZmX6/9HvdIj0LOAmG770nJYTOJaF7woo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bgvH4yWs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bgvH4yWs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A01F6C4CEF7
	for <ddprobe@lists.linux.dev>; Tue,  4 Nov 2025 07:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762242593;
	bh=ika83AtYcX6sArt21Ws15r6ADNpSW+LcIalWVl/CLOk=;
	h=To:Subject:From:Date:From;
	b=bgvH4yWsA7a+SrEg85bHXbcU+SDWKpOfjMek8tpqtgWQqG7IzJ4PW+lWzDnM1Yspk
	 F8hVG426Gg6my9yQW8n/F2WW+EQWb5hMUApqCvyV7KFp4DbCcYxuROKxxhoSB0UjQ6
	 bV+b5v9SNL6ZfVU7gmpE6BEsjxFtz0cURH0HUWogEAeQBddLj56J7seoTgrfhizc1c
	 48+e2U4FaoX4NqAk7O7K2ZGDw+1FCJb0hecpAMiQKSSsGXH6b5qPHhc5c2x/22Undy
	 cnxXV4gWLAAdmk3A8T86mn5BEmV9endZUxU2Chtg8tizt4MmBNKmGr4bsUMRrY4fcA
	 SVavfIbpW7ZbQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 918C7CCFA00
	for <ddprobe@lists.linux.dev>; Tue,  4 Nov 2025 07:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176224259358.20597.15677857126055522193.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 862432f697801563e869df77fef931477175ff552580dab3a718ae02baedffd1
Date: Tue, 04 Nov 2025 07:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762242593
