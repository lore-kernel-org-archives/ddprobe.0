Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24D6B19A
	for <ddprobe@lists.linux.dev>; Wed, 18 Dec 2024 00:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734480954; cv=none; b=YbL6dD07o4DzQTnBzbqR0VEgAkzV5O1zmA2vUSKMz6cNEYkN+G1u+SsERtCVD0d0LmHO201Ogn2P+9HMwx0v4+/gh9DQpPe4mbywPw0JSSNGU6uk8hKNCs1U1PX6m3aoVNztBYczeBN738agF6lZNOmZkTUQSpf9bhCwKim9yWw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734480954; c=relaxed/simple;
	bh=H2wDNtmR2NfXZ38zKMbfqxMwOpD1Tk7lNVEDdHRhRio=;
	h=To:Subject:From:Message-Id:Date; b=NYITP/YmnMWTcoaafBIFHAd0mOO5JscK3V/kh34ki7zl0lMFgxlgchyEduDt0SxHAQshzPVwsKl3XXctiCbyY58io5irNxbkTlafYof40lME+GjAWaHmnlGYwh2NCdJmyc3S+n4Ig7WzN70zZsc+aG18OlryvflwKEjcSEflAbc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sWJ0HfD6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sWJ0HfD6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC991C4CED3
	for <ddprobe@lists.linux.dev>; Wed, 18 Dec 2024 00:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734480953;
	bh=H2wDNtmR2NfXZ38zKMbfqxMwOpD1Tk7lNVEDdHRhRio=;
	h=To:Subject:From:Date:From;
	b=sWJ0HfD6F24k7uFXy7avuuKlEv+p6LjJjbW1WbrxUHYs6pPwUPuMBB6CD+ejhsEYO
	 GwNcoryYU6NS82YbJg7XjMDu2TSZLsc0LVZFbRFdEWVTIYmF9fx+kA9MlTTtu6F5b8
	 sH94Cb8f+knLkVDq/L0PSfrUK39YLLTJoAeY3yB1Eg48+d+5eiJIlSRhhAW6xUJVS7
	 kN1B786Ko1WbVWxy7za37KbDpcOlX0utJOZiDrmx3JWjRNYtsLInysM0liQeO+FeUS
	 nlIUF0Fz6JXsyTC1OSAluepsU+9iIhi790ZJICUe07q8018wtfznMOZTSZ4iP94hBf
	 tWEaJzMBNNZsw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9589AE77184
	for <ddprobe@lists.linux.dev>; Wed, 18 Dec 2024 00:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173448095360.10784.222376837605767817.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fcb4a888e55beecac56bfa6bde3a5a89d3053354464b42a6e8f7bca9c5409077
Date: Wed, 18 Dec 2024 00:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734480953
