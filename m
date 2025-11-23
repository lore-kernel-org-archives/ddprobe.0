Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A7451C695
	for <ddprobe@lists.linux.dev>; Sun, 23 Nov 2025 03:31:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763868714; cv=none; b=aQIgkYiYugewa5zAx8nPdvKWpzchY9jjPgIygpP5CTu04/jWlllWyqJ1Se0yadsgI4pqljulBbHaa74x+Yl4boNZ1ZA4vBpfvcozO4tMmRWYh9jOMO/amJP5SqUL6sW2jbNnsuYJSc/IunU9kb/q3okqCQViB/gS0qabsOZyabY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763868714; c=relaxed/simple;
	bh=El7fNsc9owHi4DqZ87vrxI6ZPpoNiogUNLJpDjdgrHU=;
	h=To:Subject:From:Message-Id:Date; b=BIYdL3/wC3BfYm19uUYd1BklULLevJgLQuzVIkZvnSrNsRVRK6Tuj6j9EL0T/FZSVgtt4l4ACSm7oaWhfvOudNXfSEpF7vo2y5FrshtA1oIfHXgrFC4MtrWPyIi22jOAETg6aEn+kzpVQGqla0qIbAdKuxqZNCEZk+CkqtLyeJI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P6qsBiAn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P6qsBiAn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8DA2C116B1
	for <ddprobe@lists.linux.dev>; Sun, 23 Nov 2025 03:31:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763868713;
	bh=El7fNsc9owHi4DqZ87vrxI6ZPpoNiogUNLJpDjdgrHU=;
	h=To:Subject:From:Date:From;
	b=P6qsBiAnL6zF0RBrb4OxXJtwCGofsbaFzsQDsO7rdbHOU5JiT3Gs04hU45ZIqIO+C
	 FSxZWlrne7YReEam9Viq9koLSCcGkk3ohpRRJyo3wCZbsUi68u6zijOR0Y/B3X74Uo
	 MJJVCHIvjsiNiA6xpYxUORTTDT6nF+FXaAnzrzfWiGjZ2A7SuXUDFf/lyhKQ7LdrRa
	 tHN1aEOVKMBvV0gXK/JYX5sErxxpTLW4cfZYjZQ9TDnqo/eqvsGDlgejrFOL4/Gg3r
	 5j1lKAeBAigFEJ6sv0kO0BJtCT1KETt+gJZmRovY0a14pTiHBevt5qEGhmioHjyaGH
	 ykyS+H/WHvCgQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93848CFC518
	for <ddprobe@lists.linux.dev>; Sun, 23 Nov 2025 03:31:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176386871358.9286.256461320017548900.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b2c2db983800b0b2cdab769127d44ab87c83e7edf941576abfdec3f1093a947f
Date: Sun, 23 Nov 2025 03:31:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763868713
