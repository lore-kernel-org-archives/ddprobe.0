Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A9B910F1
	for <ddprobe@lists.linux.dev>; Mon, 29 Dec 2025 19:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767036834; cv=none; b=W3COuHXvOykvxakim3j+BwvenxQbxHPHMaBLMuBhEXQZA7OpFSh3KnqE0QO0s2ZhyaFZiGvZdCdlRhIPLF0C5n/lpD41RYtpvMlHxVNbDWL6YPa84O3QKxeMIkLNdRGq0ClTD1B67+G4DHA+fN7GGKuPTsZU8nEo1CA/l1C6ON8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767036834; c=relaxed/simple;
	bh=a4rFg42bjeWs6/bgVL1c7L2kVB4IuDTbKlUJnGjE74o=;
	h=To:Subject:From:Message-Id:Date; b=FOVDxqUOswqi4YSOr8J5KnDdthEwtnRXdSx1CjE3npSWmU2shrGwOAT1taR9//4FHoZICOX54kDfAg0MzlxM871KAcpjYNCQwnsMSRgMhniWuNu49SMGn+AAMqptPmRC2Ggn+QIeMLMRGgdJndlPwVWM7eUsg/nOudD6+4wwjxU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HOSXcFw9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HOSXcFw9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2BDEC4CEF7
	for <ddprobe@lists.linux.dev>; Mon, 29 Dec 2025 19:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767036833;
	bh=a4rFg42bjeWs6/bgVL1c7L2kVB4IuDTbKlUJnGjE74o=;
	h=To:Subject:From:Date:From;
	b=HOSXcFw94B8WyJzDaGnAdkdXCqgY2w96yMACkBdT18dy8FwIT93dU1XEsIOYeEsx3
	 7+5ncsf/3w5fScgITWqLyzpVQzGS0ZSBeA5LtVpzIsR5p4JQSMT5lGkfK1kqQjicP7
	 3E9MvERPx3FRhUB2AP0OHxxVkxG+y9+dRGgkG/XDYtZINp429ZYk1gHQGHgakh/Y+8
	 JkOiHqlEIYdDIqdOwDvWLRAa32cg9HSeDmpwYVhZgjk3YeHwMlprpaklU+k+WUiNSE
	 kZOaKGh/Wk3nqZBHDXOMXJWbmOYnhIgQpQnGKi04CIr0DSvD8pUszc5IeZxcpNnzpM
	 y1Yj8vbBioMJw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91E94E92FC4
	for <ddprobe@lists.linux.dev>; Mon, 29 Dec 2025 19:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176703683357.14357.16834890458225356477.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 262e8a8b2113483908621963f311bea0cbe7a1034297a3e7f8544d74cad635a6
Date: Mon, 29 Dec 2025 19:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767036833
