Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F7A9279DAB
	for <ddprobe@lists.linux.dev>; Tue,  9 Sep 2025 03:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757390394; cv=none; b=L8miNu6oKC0YsjB89RTym8ibrwzLrXoZEhTvw970ro45GZ5cibq54s6evtPzJSm5uqBPIRRM7PyBvUPy/N57nAIYJggg0uUzE2nUyaQ1HfBGgT0Vt/cRehtfeH8dM6V52IZtx2c34zVi4feZpGvzomRl+tRVqyXJM8crRtY+U9k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757390394; c=relaxed/simple;
	bh=7RIj496OkdT/Mj9mdqYMMdDMHc/87Zgw8jPpLMhvpnY=;
	h=To:Subject:From:Message-Id:Date; b=ilXWFD1S4Y4BpLM2hI1gX5Hqc+JpABd6l+wL6JMs/IJT/bW5Hwf+t+Bfw3765icErkYV1vavgO/M8U3XpzjLnEdm1y0ah6PKKqB5nz6+taf6KbDNsUieUDP41pyFGY/IPHLDxUoA4pm4pdxvq1nCZb+MftyS1ZgzSGdq+dvqIW4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Rd7BOn7G; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Rd7BOn7G"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A52ECC4CEF4
	for <ddprobe@lists.linux.dev>; Tue,  9 Sep 2025 03:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757390393;
	bh=7RIj496OkdT/Mj9mdqYMMdDMHc/87Zgw8jPpLMhvpnY=;
	h=To:Subject:From:Date:From;
	b=Rd7BOn7GA8+h3nUaQ5R3kZdoDP6zA2vKztkwWnGlrmDP3hTd3I0ma6FGXJimuC8Ld
	 kf6g4YC0IEWr27HJ44sYuOb3eD2qlV/5nl0JgGw7+7sBIKgfeLDmSqlDvBPVHWSHvH
	 PaqhbBisz9qA4/eqt2yvvx9KhdgPyYo6MhTMue60jeYQN0pvr0GVKb6tDZWQF5jJvn
	 JLgNnKCTLOjdypABn8Cd+i0Odfg50gtxjvG306qBtXDRyCHQSIUDyi8Z8uj5Y8EOpK
	 hZmXTjJapImDs4ZPnHGt/mKL87QCr2nkb0iMTfYpfUONapg5HnuLmQJwVlG76De76c
	 0dIAnuBMlANqg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9360FCA0FED
	for <ddprobe@lists.linux.dev>; Tue,  9 Sep 2025 03:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175739039357.19214.6744119088805139008.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7bd2ce415a3cb6ff8092fcdd15b174528bc398e01faa166ea37cecd6f19c4e9e
Date: Tue, 09 Sep 2025 03:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757390393
