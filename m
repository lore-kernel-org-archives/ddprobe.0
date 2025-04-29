Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30C6825D8E8
	for <ddprobe@lists.linux.dev>; Tue, 29 Apr 2025 10:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745922594; cv=none; b=VvOobE9ilG9f6Sw6Vx232NWSdhSzCIbwuqIx+Jk9t4biCBXaJj0uiRnPKMhjg0eXKN0qQW2k2VD8xj7BDMpCY+YnRJS9oodcqXQgMDhyNfEFKUIgXuOUFTVnB8HZKZcVE1lOlfo2asZPYJX3UldEPymGFb4MfMyfwlK0YWAlEkw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745922594; c=relaxed/simple;
	bh=fFN9izsFQ47JzsN0rmlQgS/E8WcyO8t6Agi52X4BgI8=;
	h=To:Subject:From:Message-Id:Date; b=SFKOQ7Ufo81VCZGFOz55HGxF45Vdc/e1v1Q6XWaed8jkV2XO5URRPNhb5mYnJkTrm7vSnvHcWo1+52eEMsFlp+g9UH+WsoTijz1FAEHWaE293P6tzd6RjTh8eInWuK6wMSVSmp2UiicRoz6BEvwZtYvJSJvA1aD2rsXpbSQ4gjI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tRtpTAog; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tRtpTAog"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E145C4CEE3
	for <ddprobe@lists.linux.dev>; Tue, 29 Apr 2025 10:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745922593;
	bh=fFN9izsFQ47JzsN0rmlQgS/E8WcyO8t6Agi52X4BgI8=;
	h=To:Subject:From:Date:From;
	b=tRtpTAog2jDaUzmtW21f2Rtb6zcERDM97TGrpWFwHcJCXJZAU00eSa24IHjty0E4G
	 T8PUGU/gIMwVcJknmrS9wSlSOYrYgLr1etCjzCAhHjzHqdL1RxkiPY+vpatOjrGaaC
	 5aupQ6USLuxTiI9TIUkx4/3zZ1jEyAxG3kLDt+EASeRA6k8e3ibSSWtwDnTjSKlBjH
	 +IiN7+DewuvNqY8HXsysY4qKCed9RIiptzygavIotTmM9dibImXn0cbTS5qT8ZZikz
	 3FhCpkJPC7v4SS9rXpUnEKS3b8O9NdSP70Q9iPdJUtm2iMIvZsnFnm4KKdOFKeuOO2
	 L5GwJSOjXnJTw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EDB1C369DC
	for <ddprobe@lists.linux.dev>; Tue, 29 Apr 2025 10:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174592259357.11882.4300675839680575000.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6efbb1a094b630ff2a498d3f251a7f344b14b44670020dd894d2e686128752df
Date: Tue, 29 Apr 2025 10:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745922593
