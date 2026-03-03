Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CF74A2E8DEB
	for <ddprobe@lists.linux.dev>; Tue,  3 Mar 2026 07:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772522093; cv=none; b=V7M6T0v/iVsmgnr4lzQU5z+eUYoAl8VvH/4d+M04+zNMXzga8MAyLIMdA6ZW4arLloa4XqOgwS81KCV1K+k8T8TxzxzuSg9+5MfEse1P9cLJHSKJeU8JGgvlJlAnicJaFVNhracfvNK4FGzwyjM/lC7+SHyl9F3CYnSOrQ/1WYQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772522093; c=relaxed/simple;
	bh=oxaSIJgL+Ws3zc6eCK/FYugETX4y6qxv5zC5vij0w74=;
	h=To:Subject:From:Message-Id:Date; b=fBZAvMWx6NIAViDq9f95kSqfe0X1jGhVCPYv/+lWVd6SlPX73DdQTluzlAlB1eVhxwgqazBifDcB3ykK0955BfmUXrDFUVbq3LleerabBDBADuf4vohzIlkb3R9zUa/LO5soS2LdTnD2IS1cM4bNtj6gOCTZ8guhGc6mF7O4f9U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ks3dG348; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ks3dG348"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A70DDC2BC87
	for <ddprobe@lists.linux.dev>; Tue,  3 Mar 2026 07:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772522093;
	bh=oxaSIJgL+Ws3zc6eCK/FYugETX4y6qxv5zC5vij0w74=;
	h=To:Subject:From:Date:From;
	b=ks3dG348Kq8UN0hMCAmmq2bNvL6PVr7jLfz6H+tRfD+ILCFOZbiBDaa8/lX7gwA4Y
	 XrR3J3+NgyrYcvoENA320bH/zJL3xOAzP262ykyAd4x963uWXw/kDcH8RnYTduBWiA
	 P4Y5/XA+L5/sDXqPgTFTy2WoHfagFHK9orub9oqrA8GJjcIayLPf8zxvF7w4sWbQZF
	 gWpd+k9w7hkTuN3xW7WgANQp4GEWw6fAHZjXaTp0+eOl0J0bqptpOnxnDI2ZC38Zra
	 4y7qSo/XTY5RHoCQrAVBwWg40gLHJv/AAXYnmP3f7F2d7PjcEDBce6RbOBRN6rCzXT
	 Fet42kIlQq/TA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90D00E67A85
	for <ddprobe@lists.linux.dev>; Tue,  3 Mar 2026 07:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177252209358.24498.2085283226650017482.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c2b008efdf4a89aa0920b1da64aba878be4fcfeb2a7cceda6f6d011d7a9dfc33
Date: Tue, 03 Mar 2026 07:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772522093
