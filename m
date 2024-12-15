Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2309B1B81DC
	for <ddprobe@lists.linux.dev>; Sun, 15 Dec 2024 18:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734288354; cv=none; b=fQyk6jE4lZvmNoVCigSZkLeBSItkg6ddOTX0eeNnu1AF+rHPAZUh3zx1tJ49NP+8catMeNjsT2rGGXICxSSCBoDqQrZKTWpKW/IlqUYREMHdKcIsk1F2pmshO7OV5FpETmT90bxggqLnQ3UZIVIlRUpF1OjqwZBjf2ffIWwAh6k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734288354; c=relaxed/simple;
	bh=QEe0BQDxceZUHcU3iXgtZovbVMPuwv6cQ9TCfb9uw00=;
	h=To:Subject:From:Message-Id:Date; b=N1fxzwi7O+Oa8Pj7BXCC55cXsqHLm6+nW5lQUqulvm+No2512FTknsjiTDVakyW0kI3QPzTs/7VJrQ0rfesuA/ZyYfVAw4i2qBLlJc7cKSpRQqVaPrciRRB/OMBz0MeAkfUKXWjgvaLfbbRm4nUIvjvV1sok+RWE8niO9QdGVhQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z4i0edMD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z4i0edMD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD646C4CECE
	for <ddprobe@lists.linux.dev>; Sun, 15 Dec 2024 18:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734288353;
	bh=QEe0BQDxceZUHcU3iXgtZovbVMPuwv6cQ9TCfb9uw00=;
	h=To:Subject:From:Date:From;
	b=Z4i0edMDBwPI2sxTlGu8Pfjx++RPj83tZXdsGrcAvZ1KZzT8muHNR80BfDJrh6Rnw
	 p4raHMKiNuKCz8gyjhwipThatFkE9NPh8iQbY/E5c2zUtVEsnqrekv03jQuxXCzjEW
	 ZbeW2qt67qzWVbVRnaWI+Ll56dGQOy9/YVS5L/Wj5DN2Q1Fs6R+cni+SXZPXAiw2M7
	 4Wvu8quEIY8T539zRavJAYjEA6UFs0UDav0nxLtoqgqxei0k7QgeO5opaUaSBSoB1I
	 t9lPM/ZwKrPEb2g5vPl1KS59zGMM9AKIpk1ZwJYDmYTXpUFUsnZpkzD9jTqGOIc62l
	 wRso2Yy2PHhwQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C28EE7716A
	for <ddprobe@lists.linux.dev>; Sun, 15 Dec 2024 18:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173428835359.20686.3174215951599507396.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5a2dbd1c332a0359a2ab300d77b120316a8790d8c30b008cf024ddc2909ef43e
Date: Sun, 15 Dec 2024 18:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734288353
