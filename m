Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EA7B3EBF3D
	for <ddprobe@lists.linux.dev>; Sun,  1 Feb 2026 20:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769976834; cv=none; b=MXkqIMG3wlEn0IXR1wtxP6ctNUjDmkKVP/qlEiRY48wz4kdDOVdiyBFP6HbsW0mDMASSlLwdweh4cH8qPgtKnOJZ8MycpF7LeLsbNQBex/W2c3aypak1Rs+01LybP81EurXvwUSoabVWM840dWV+Zxe/W4/NWqv0JzjWkSpTmJE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769976834; c=relaxed/simple;
	bh=XFg8/1KH622uZKeEd5o4yXXAUqzsjPv2uWMOB6nGLKI=;
	h=To:Subject:From:Message-Id:Date; b=DBe2IaQndYWnQO9QYSuP/+N7F/u5qEs/O5DgqDRwhyxj/VtKorbcqQvN1mdiU4Rr1fKt+1+IqM32TtqiWsAJzuNqkQVfIGINENBZ7Oly7A/MZ/el0GcilIVE4jnz4CoV7UsujdKPw26IP46vNQDkh4+t/72JIFsBCQmh/t+X6IA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cjEZ79LN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cjEZ79LN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFCF6C4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  1 Feb 2026 20:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769976833;
	bh=XFg8/1KH622uZKeEd5o4yXXAUqzsjPv2uWMOB6nGLKI=;
	h=To:Subject:From:Date:From;
	b=cjEZ79LNWYRIqEKaIkHx6hjP5r45XgcrfTtU7W+m+2o+Y1T5QMkRsvI1fw+6r1H5+
	 xFdDjv91yM0nf0EgnCe1NMER25OCAJ5m5ZdFKKEN7CXu5m/Azhsha7o4OfFGuUsYt8
	 Tio4e0vKkYAAcjKfRFeoYGGKzQTTgIGTxPDkKrjkqg1iGTbcdoPLU7MrmnXDk6vrP9
	 1iobj6pp4VYMYuH76DqU7Opbso1VvHE9VoDzmQM8ED1urZw2NiSWd1nbHvwzXruma4
	 5emlFkvsSGLb6WcTfpSVvGxe9tFVwVhe+t/ZP6Uy0SkAC1KurPcFOlSstDN0IE+1LS
	 xSP1G6TVxf9qA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F110E65298
	for <ddprobe@lists.linux.dev>; Sun,  1 Feb 2026 20:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176997683363.7735.6908728041883752617.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9839302a81ccbe7c2020205e1cc94693f6aa14e48f73f1727d9c8293671a9aee
Date: Sun, 01 Feb 2026 20:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769976833
