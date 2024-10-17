Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 246E61DED6A
	for <ddprobe@lists.linux.dev>; Thu, 17 Oct 2024 16:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729181754; cv=none; b=HpKQyudpslMxdR7elFCV2cD5vnhW5qoP+tj89EVSe5nTonVJcdPmO4ErLePJ9Cp7nNas99ky3sAn8i3Ksp15PZPtEK1puSsogECFr26MTLTmCLQcKpTKYlKRr2/Pr3UQKaEGBSPPcEeTWkn4QGziaIo0ZKDlJFuvXYiqvSWXdR0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729181754; c=relaxed/simple;
	bh=uSvTXp9AfhmssXKa9OH6tRFeUz3IMzBXzL52Zn7X2qk=;
	h=To:Subject:From:Message-Id:Date; b=Hp6l7PQPsoR/h2qUdbfV4HLR4FzD6TSqrCz7NvuSPxoYYQxmudqXus8S6vV6F4ycdJ7XpCqjoptsstWW9feX6a7hKXlaq+yG7ueu6uElhbAMxM+WmMKBVKomQprCRDeYW9kmez+pfE126oKTdjaMg30eahOb5sltfLQw2YTmHg8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SJ0DYNTX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SJ0DYNTX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6CCBC4CED5
	for <ddprobe@lists.linux.dev>; Thu, 17 Oct 2024 16:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729181753;
	bh=uSvTXp9AfhmssXKa9OH6tRFeUz3IMzBXzL52Zn7X2qk=;
	h=To:Subject:From:Date:From;
	b=SJ0DYNTXD+THD+Xu9UewEg7TQSbJdEFwQ/LBTkonWTMjBbYeBpV0uSH0MRNfFpGbF
	 KGxbpAGp6eeFCp/XIPwGNJd2iaacavH1xUFLVdVrwD6dMsv6/O0NlDjkQ6b0WljVKw
	 cm6xfP4hlDw5/XirHgnlic5/3IIJQ1tLRRaIF4FJH9fKtqc0IESSy+QRg1UzEtFDC2
	 +bopcdzy39ZCF6Nqdjmf+m9vVluOhyTGvekuIvCIdSHcyEdB3JOCzRn06XFbIeIqpq
	 0Wku962eS4cdWJ7r9qgcpwH4IR2McYdexZC1AWY0HXsUxrd/EowJWe+/2ipi6V0yv7
	 YH8sjT1NrbVxw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 952DAD374BA
	for <ddprobe@lists.linux.dev>; Thu, 17 Oct 2024 16:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172918175360.14222.16196280180629176166.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 266b3ad68ded7370a3d3ea60b79b6725b06f0fe93cbd5011131ecef00f3330f0
Date: Thu, 17 Oct 2024 16:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729181753
