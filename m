Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 085F33093B5
	for <ddprobe@lists.linux.dev>; Thu,  4 Dec 2025 21:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764883974; cv=none; b=I1WGN2OEj3GIxK5ySj5M6deaDgEzO1NHOHEQ+ANhnjEuL/qnHBqL8rjWn0ep+DCZzovBuJSLnGvnBMYcqtZrhTjEfcpjdJ41xSb69YRkbmnSYVcoXjNEPUNlna2GBJmvA/Jc3dWIIERWjGaqWgZ5Cf6ug0YRUKbXmkQBHf4X8ds=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764883974; c=relaxed/simple;
	bh=o7x9786vLOrHJ4Ja7x3EGipWjbQbjgbnJO6ZBlDioHs=;
	h=To:Subject:From:Message-Id:Date; b=A1wr0AXxY56pelq6KV/XG9iq69cueIzTn/A55YUKNDxKbO3nZTbh+uwDq1oMOBZEe+tzUCHVfdeN+6OtlSW6pggunldetF57/p9/mDZuR2nyNWs3ClPwXBfe3y2dhwyJhQLUkUw1A5yDVek1UxikkUqQxsr+taR8Tx3xS/+51QA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=shbBatmL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="shbBatmL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0AC1C113D0
	for <ddprobe@lists.linux.dev>; Thu,  4 Dec 2025 21:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764883973;
	bh=o7x9786vLOrHJ4Ja7x3EGipWjbQbjgbnJO6ZBlDioHs=;
	h=To:Subject:From:Date:From;
	b=shbBatmLp6uH5MtJOZ6It1+nF5CZ0ahIdX4mypIyfw5S/0XvdNTCpE+P29uTVAur9
	 +hJwO+S8mhiFtpgVl6KreoTcB4pK3SEfrdi7hsTGoEALqVQrQi5whg0IpsEax+ZLj5
	 7LPKtifc44u6TLMCJuOrBzzjpOPoaAhkfCaURgGTOTapda57EM8EUw17ApEfBRU39G
	 pc7UhNKdfFjJmAdDmI59msFE1RI+DF/Kj+JHx4ph+vyZSoCSq8hNe+GLDQvqELq8z0
	 JlyixQ/HIDqXr1FWozy5wfMjfJmTP64KuDPHjb1wGoRUNd4c/3oi54XqXUydD3IlTm
	 dzQm9PbpcqIcw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91621D2A545
	for <ddprobe@lists.linux.dev>; Thu,  4 Dec 2025 21:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176488397358.7478.15315859534928681904.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 65015711eeef42e3a2058515c51fdf1be4943ae95f7b914e5db8d7c89206c07c
Date: Thu, 04 Dec 2025 21:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764883973
