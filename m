Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2336413BAD5
	for <ddprobe@lists.linux.dev>; Sun,  5 Jan 2025 09:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736068554; cv=none; b=mZTr88poTbjDqnKR/aj3ftHn7MuqVCYEzMPl8ga2P6usUihZCe3CnE4VYBW8y/VZVs7+6OrwaOENpKCl1pV0vBY9zFXJHDZ1d0EGq9zIe9urUnwO7H7flQsJ7jezDxcNWwg5cFsvJpgJRUUQaTi+y76hDLIpc89y83F/6nNy6H0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736068554; c=relaxed/simple;
	bh=cW88J+LC/HCHh7ZdWEEsoLW+jaPW5hCha5S0pIgGK9Y=;
	h=To:Subject:From:Message-Id:Date; b=JM+kTFwh3rA+xD0B9ZWY4BhFuoDnRhrF7zKKfPHMh6HDYcvhxEayyO/a3PoHDq0mROm3EkFI+etkdoyswBXC/eo+OKsVdL2RC7u+1tlD61B3ocoa5V7FhFT7KviMXzcax9+6Lt10pyfbKMZ0M0/mJs2jPgBeJytgZiS2e9rM7Vs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eckrDlDD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eckrDlDD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB6C5C4CED0
	for <ddprobe@lists.linux.dev>; Sun,  5 Jan 2025 09:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736068553;
	bh=cW88J+LC/HCHh7ZdWEEsoLW+jaPW5hCha5S0pIgGK9Y=;
	h=To:Subject:From:Date:From;
	b=eckrDlDD7W8fA31ETKoZ1eRfQiW9f+TjIuBc2aB4TxSaqsOKI4NrTa9a+ykeBS/L9
	 AJjNlnBJRWY9aHoz0I411Wcu13U4lbHz1zPO2Gilh9gIqnQ8l2x+duWXoM9YOrHu6o
	 nhVQp7w8qF8SIFKwk2mDt2A1uRg8jl0Qe+f7/+smE8AJQNnBUAvzbLQFkL5rTH9fV4
	 b02WtCK1gKPh0AZOm5LZCITe9/ydKUExbQIqgaUAulbQMluCLljzzB0jDevYKO7f8Q
	 FMk43PseIWTBi127tRFCy7IlaaCj7YcraOQ7lsnbRy442EDmjbL08X1/PTfom/M6KG
	 QmYqx6dTnI+1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95BDAE77197
	for <ddprobe@lists.linux.dev>; Sun,  5 Jan 2025 09:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173606855357.4143.3407980051942149567.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fffc529fda53c5c57816fa8e19b7e6bab0a712e389e0d3d9c964baccf6b9c45c
Date: Sun, 05 Jan 2025 09:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736068553
