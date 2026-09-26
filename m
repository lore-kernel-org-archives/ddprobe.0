Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41544370D7C
	for <ddprobe@lists.linux.dev>; Sat, 26 Sep 2026 20:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790454034; cv=none; b=NWkThawZ2YDp0urF0Ah0adeNzAPPD0D2CxrjT45amPki0WmJTKBJr05I6avcxYr2V5cJKsoSEbNzJAY7G6x82SHd7NVnKuiyPgxbWJw68NV/b24jNf6exA5Af8vslu5MowIJ7qnswgqDUNIqAYSrURg7F+/5Hu7qL0Gq6X+6rL4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790454034; c=relaxed/simple;
	bh=3Dlpu1xiIvQBoMNR5ii63TD254FCB8YTl33SR1ZM6JQ=;
	h=To:Subject:From:Message-Id:Date; b=C9zUWEjyyLN02xZ5ftb+UUqdaCmag7sPEcErOP6a0yMlhkp/qf6wGhhpQLNnXLvd4ANWudbg95nScMx7sszWAy3+XF50FtDNlGG7eLMRR3uXKXd3um/39u3duGrcisiAcXAicOIABwLHML0WaE1AjUiABSIHaN/l8ssboaB/k3o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kx8bWLBY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kx8bWLBY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0C6BC2BCB8
	for <ddprobe@lists.linux.dev>; Sat, 26 Sep 2026 20:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790454033;
	bh=3Dlpu1xiIvQBoMNR5ii63TD254FCB8YTl33SR1ZM6JQ=;
	h=To:Subject:From:Date:From;
	b=kx8bWLBYaWWg43fUmj8yXU0QCWDUzKhW+6gqkTwtxUrfJJ/XvJxt4snFO1BMUU15V
	 Lr4NzfYQuVCH99nXXhJ5Xttv4zWUIL7IU/1e7JvIBs9Duu41vNzvhAXku8lsc9e8GB
	 1AEzzXYlg75vDJ5SJCXrw5Tkgaxms7W29GolbQ6dr08KlosoGP9q0FQmdGJehAfF+6
	 I0KT0msYulgzNMWmf5jfWbOUuHftf0O15QS/2XKzOCpXiVVQ2NRXO9Bm/Wwa5Z0kdM
	 c+YrGxuUjnAXMNOESTdL8P3VaAcNxWYBI2BG/BFGTEZF4zl80+4KTpJuEWdK+k8pBJ
	 gRwsyqH/vaL6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADF25C98328
	for <ddprobe@lists.linux.dev>; Sat, 26 Sep 2026 20:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179045403370.22688.3389251484642361684.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 56afb0b287e372260c1afb3ce141486f8b6c1ea719c8db098dfd31e5f3e58809
Date: Sat, 26 Sep 2026 20:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790454033
