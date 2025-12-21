Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EA4F12367CF
	for <ddprobe@lists.linux.dev>; Sun, 21 Dec 2025 13:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766322234; cv=none; b=R9SMKXCyBlOQ6FHSS5YuJzmI+3Q5LlAtjztSkvE1kjPd5lNFsauquAOOpbTRLuR1ueFQNxT+QShT0uLp8+W4ijqNvkWGdewZRFXVVeEMl0aeQjRIuACRhVXp9W50TdxoRz48QmiWjHPRHVYqgnVgHCBFFgHkym6V69fR3sGu2WQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766322234; c=relaxed/simple;
	bh=/bhk+Wd0bLqTpYry3WetlY9y92JdBCxY4k1ITIIipcc=;
	h=To:Subject:From:Message-Id:Date; b=Xy6oZBnbclnyS7z1kE4a1QS9QazwXeFAgyZSETP7OH6FyKuAFJFloTmo+LXW8AfyfQiUgn6eLrILx0JkXT8MYzy7G+pa/PqWt5D5QMAlXOuGeMkgrYVihtpetd8cMHKX0Fm/Un0j+erx7KLww+7Bm7dRNq8D8RpkSstegN2WIsg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rnF9vsV+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rnF9vsV+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D495C4CEFB
	for <ddprobe@lists.linux.dev>; Sun, 21 Dec 2025 13:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766322233;
	bh=/bhk+Wd0bLqTpYry3WetlY9y92JdBCxY4k1ITIIipcc=;
	h=To:Subject:From:Date:From;
	b=rnF9vsV+fj27h/5K8wx3gM29NLzmOOoNPNlxdkazc1VZ+MxPkytI5b6mmFn3AqCrV
	 4paoQHGMBzBfL60s0nAyqu4Qk5nJfan5JfSvSc5gbrbT2GTtZaVXVYTM4v9iiTmd33
	 fKK3zkzBn+vYjvU6JU7FmUDpnGESMv5DAPHxGJAMnIjKJnLtmx+s9xKHpbBEvKQnLA
	 tSdfFj2JT+JFkFOAUua7wUqimoEZVJijON813xFfOPD+XEzPSTCGF6FSNOw07OqplR
	 0PnTgWi5IFjyn7hWbI2+F7lyKuxGCUWBrgoHk+g09kjThL4puH3thYnV9vZoOqZ5mO
	 cDqLHb+KJuD0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FABAE66886
	for <ddprobe@lists.linux.dev>; Sun, 21 Dec 2025 13:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176632223358.24121.3386287323988785797.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bc09189c5f69b16338fbc7d2365a58c473e9c26714e350399d5eef96dac4909d
Date: Sun, 21 Dec 2025 13:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766322233
