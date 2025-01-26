Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3966C10E4
	for <ddprobe@lists.linux.dev>; Sun, 26 Jan 2025 13:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737897354; cv=none; b=MPo1HPChaQX2wak6xZFr15bnUDXibWoAT5yETEMGFosFOErCEgyB0kr7uUUC7n5bw/csf7O60JX92YZrmlmID88g4GXdxz21N4sG5IByyjmce52Kvu0bUBQiau/Bj4MtHFXMlYDyoJnOaKrS+DMihVUf+ekCex2WdKrUsvCxBoA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737897354; c=relaxed/simple;
	bh=4kIzaj0i2Zce2pZdyPyL7/vJX5nkvOPQSsRblDmVi6g=;
	h=To:Subject:From:Message-Id:Date; b=G8ppgL/J5CuNynt29WLJzWA3R0ksTZ2+pJTya3gpcDwAjUStwiQ6Hzz4kEAPChJUrZiV9rOpQvasJq53xoHJBC3bEuIhw4hcieURFBl7aitfEUIzsxfE1jqmbGwHXcqqwUTezt6lVyAunPGBfEQ3TTFYKsugy0WBJ3CHM2T1JtY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rrkKkioH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rrkKkioH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F739C4CED3
	for <ddprobe@lists.linux.dev>; Sun, 26 Jan 2025 13:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737897353;
	bh=4kIzaj0i2Zce2pZdyPyL7/vJX5nkvOPQSsRblDmVi6g=;
	h=To:Subject:From:Date:From;
	b=rrkKkioH6bJCUv7GZLmhhymGZja5n2w7j9XLyHXXYLmzK1wtodxRjU2Jz7Kz2VKz5
	 ZQ+QNKR/q3MiuytVAL7MLYnBAvysW7CkXVs+Ar1shVhy6kVxmvhxe3TTVXzpO816m2
	 fWkU6c+0dJvrno6NWaHQ6AEkh/tM9BPRKEN6/+WTdA4UMxB1LnlD2dv7BDk+5+xJ/+
	 MTb3Hg0sJ6Rc00HGkUGaHxiVvVhvx/JZ7evPzpi8yNr1rw9FOqn9Sf36hkdH/7lYeb
	 lKjnSS+BVStj0fwSCmJUwvTRP+0MzNPaAPzIocc9IetiofCXoNKZU2OxqGNNY3ZngK
	 OFp3jMz4G1sLg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90205C02181
	for <ddprobe@lists.linux.dev>; Sun, 26 Jan 2025 13:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173789735358.3316.17455184844714584667.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 38ace1f1197200d4664c724eb7033280da6bf7da59b00a8dddd461d0d9700acd
Date: Sun, 26 Jan 2025 13:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737897353
