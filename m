Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44B3D1EE03D
	for <ddprobe@lists.linux.dev>; Wed,  5 Mar 2025 08:38:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741163934; cv=none; b=qRs4heetNJZaGfwkK7IZEjELaRJkCEeqg8LVLxCHAmebXTkFUYBaWG91JCG5sUR1yC3IpTOA+kzOKHj2eMmPPHTHQtWtksnQmZovi7DQJpFtYWzVjIOVwal+k+DHR0ycREKD010nSQVK6VXE3GExSTWaXDrcIo8HEW2xfL92Gkg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741163934; c=relaxed/simple;
	bh=Gh/H1W9vz9MKeXcF3Dk4YaIv2aGakLt7ZLBNANgydLw=;
	h=To:Subject:From:Message-Id:Date; b=kGor2hKfR/obestCj8pxHSS0zU4j+j++ar5XgIrXDdzC9r9x9h44ywGldv8wqZMgaY9PhXg0PBV4ADedk8cJaVXjd7iOV4wnzfSDR1OcWk6rysexUKDCq+BHBJhBznNrMRu+vbxZGiBUks+F1edf93vOE4Kp+IWmh2Bl7/+f2k4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RNTSbIvB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RNTSbIvB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3048C4CEE2
	for <ddprobe@lists.linux.dev>; Wed,  5 Mar 2025 08:38:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741163933;
	bh=Gh/H1W9vz9MKeXcF3Dk4YaIv2aGakLt7ZLBNANgydLw=;
	h=To:Subject:From:Date:From;
	b=RNTSbIvB4cneI8KstsSIzFWc/zV5RrNi1pnqSSAHEHy+EPFKR8CYWx+tRPG2DTPnu
	 7rr3Go9ezUf0imJDckbpWV5wUJ4CWO3w1l52Q6pnrOMXL8RCmsp9X6aMOvIQOvRRoV
	 id4AyoK5IF0ffn2CCAjrAsBpSXe5Dlg1ZMdRuf9VaGK3aRqhUYOGYEwlPEQ6cFKGXk
	 JCQeXM3bvkCrfwqMKeAkwEFO+6Urmuvb5A0XFlYb4gBlYuqqqcA4osjYYf3LkgeQ8j
	 mIL5TqkRMWuNDVZSGB0zYgIpnz53/kt79pa47Zw8lxjy8AZYEvc1D5q5UA4os8vDbN
	 UF/4anYiHw/BQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9962FC19F32
	for <ddprobe@lists.linux.dev>; Wed,  5 Mar 2025 08:38:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174116393361.17099.8770308206079440368.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 62fe9ce7ed75ee0176899a32d0f0ca29607d8591a5be562f865d6ded7de4cb17
Date: Wed, 05 Mar 2025 08:38:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741163933
