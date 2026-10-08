Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6DABF3BE172
	for <ddprobe@lists.linux.dev>; Thu,  8 Oct 2026 07:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791443434; cv=none; b=MAGlf3YjomnpZ8KuVi46U2JAqTOeoD7Egg8O2pVQlqNVeyIdPRjns6JAtOiTa4i6Jfc0OgSOtoGUzvQNbFmle04RiF+lE8B3bZ/iUhpLY2iEnVwHzZyBZBqn1jEJHc3CUk+oBksR1WEiJJLmuBolhWkak9hz3gb8QaudKMo1KZk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791443434; c=relaxed/simple;
	bh=WgtlBQNRdPHa+Bm/2OkNMGTOPKQSbUFRztjMhfBzwXM=;
	h=To:Subject:From:Message-Id:Date; b=DQPYAHovtvkpZcxjmiho7ONbHSAmVOrBW37xnVLB5mtOuOfbvYZLGCR/gEsWhBj2kdKiJwGthDTFaJJDtmAZJLuNkffPRTjSfCVJELrJtqeETUZ1jJUS2N/fCE/gxeQQ42EvbIxxbIH2fYUIIT/FbSyqSDjW8H+KENNeUDbSQVM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=n9Xbq0YJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="n9Xbq0YJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA242C2BCC7
	for <ddprobe@lists.linux.dev>; Thu,  8 Oct 2026 07:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791443433;
	bh=WgtlBQNRdPHa+Bm/2OkNMGTOPKQSbUFRztjMhfBzwXM=;
	h=To:Subject:From:Date:From;
	b=n9Xbq0YJp6Gl9BczRpziLYi31+l4uLTMu9zGNcIad5VcM7NliTXfo/a7Tm7J9HtHE
	 MhDASAY+vGlLmnaVgqLLFIpvv413lZigY6o8ePqIQDIy+pL3sNsAK8L9+GdHopelTc
	 fuipXGrBP7G/K+IUvAue/RyPdmKkhAOiRpq79HLh9/q5waUOinRKkIPaPmXhewMvNM
	 1Ey0bhAEK7Tes31ZACAwNHCWSYaQTT/hsWcsRRhZvJ4KC4ARtJ/GY1f6X1LDgA5TJf
	 9xNY4O739LwGpLbUh18IjSzMAqcGWWZk5u+xzBHQLR3ko1fpB5K+wn3K1VwOGq+0Df
	 WIkQ2zN3XSD0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4257CA6007
	for <ddprobe@lists.linux.dev>; Thu,  8 Oct 2026 07:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179144343370.14184.16441442254190429208.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7a277c219e063aee4594ef3d31301b05b999a8fc42c26a929711fd873be95362
Date: Thu, 08 Oct 2026 07:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791443433
