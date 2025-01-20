Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30BFE23A9
	for <ddprobe@lists.linux.dev>; Mon, 20 Jan 2025 22:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737412554; cv=none; b=I1u4jBggqc2/YO4Oernua1HwMDZ6nUlq/6FRAyfjVqINMUzzETAlwENdKcWvT/LJOVwS78We1BUiTni9TCIOiM3JvPIJvs6UhyYYPYdsEUoMZq1GLSWo8QjI6K64EkKHd1738f6R3JdHIHnvA12+AZ009k+NE/2PqbF4arNZP8s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737412554; c=relaxed/simple;
	bh=zIysDrmYB/J6hb3jWmoCcpA5JSwQR3+FETOnpajNA3M=;
	h=To:Subject:From:Message-Id:Date; b=ivB4Yvc7GEB2oPm4NKNq6awdmECyFm+AW2xJesImHYlox2RDgGw9dzjTnvKAn9YeTbZS7zYfLw5qFyNCZ/DHo3EwUSyF2FAig1wLD04n6Kx1FhVbZuXQBvpVGLFP1qRGU+vqNAJe2IQAxUns7vYUfsWusRlRjWLEOicbCTK6vM0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rucwDWR9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rucwDWR9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8425C4CEDD
	for <ddprobe@lists.linux.dev>; Mon, 20 Jan 2025 22:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737412553;
	bh=zIysDrmYB/J6hb3jWmoCcpA5JSwQR3+FETOnpajNA3M=;
	h=To:Subject:From:Date:From;
	b=rucwDWR9ME05xJUFn4g1BiaydujAy8EVhnTKHlEPT0N9QInx1bhRhS5yUCY8znh6O
	 R1/VwlRLTWcpaG9ZcbcH1GrnbWV0qxJQMO02pjwfQr+G0mTKlZWVX/xuipyWyyPlkl
	 TXpXjVx84vfwqWwbzkNOV+VOtgxNe20+uPcd8GpWJ6A0BoXGygg6K0HkBGjvDfrmnz
	 /yu051zlr7lbkGk5OnI0UueVq7PqCUqaLK5cpB+w0Pi5PjLbYRlNBf54V9Z8P1o79T
	 JJ0VejovXh1loXJlSBFqE825zas26Nv4ELPOqN+1YoCuEIgNwnoXEHc7V//PsRWXH9
	 +U10fmPhRN+LA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99D62C02181
	for <ddprobe@lists.linux.dev>; Mon, 20 Jan 2025 22:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173741255359.32359.9811079585383075304.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 43e4a967e60aa6e99aa150f97fba2c60fb0a4b302704cd44f21a4a55acbcc6ea
Date: Mon, 20 Jan 2025 22:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737412553
