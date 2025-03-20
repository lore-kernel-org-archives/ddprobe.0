Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6225628EA
	for <ddprobe@lists.linux.dev>; Thu, 20 Mar 2025 02:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742438994; cv=none; b=KLuNJCPfCdsrLSYpqlg7Zz9gzmN5SmlCR63rXIV7RTd4jrk2xRaRv1fnFWZcLJzF/tokGUK3E6i/Pvn5tMwYPw0VYlpv57CI7U+LN8QC2J0RhrWVAno9CtIRKAXcdAvUJsCBwqombOtHyIsZYrzRHSuIiziVAqrlznmp4+jJYtA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742438994; c=relaxed/simple;
	bh=dE9/pbuc5zbtPM/0SEyOjGjlmJzAk0lZHPmHcrYP/2c=;
	h=To:Subject:From:Message-Id:Date; b=Rju3czN+E3DAokyA0Ii1N/3zqfHBZ0nLaJlx7lkBmxk1l0jYJutOxoGZ4+bo7HNbkomCojkrQx31xZKPiB6oy/MZINXDM478y8cDiS4+Dnr/Lx7B89G8f9AGcPV/ibblAqMDc33huA44n+X6n5ULrjMH4mXzG1WW/GZ8R10fbdI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Oc9y1DeU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Oc9y1DeU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C502FC4CEE4
	for <ddprobe@lists.linux.dev>; Thu, 20 Mar 2025 02:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742438993;
	bh=dE9/pbuc5zbtPM/0SEyOjGjlmJzAk0lZHPmHcrYP/2c=;
	h=To:Subject:From:Date:From;
	b=Oc9y1DeU2atiYBsIyVlLe3yY1NaSmuPbxxnYTDLaW46Xa68cctKaPIPGEpG2Casbp
	 810++BH3s2YCQ5fSR7y7JkTJ6cauGadgtzayhpCXaMgSeqL2DlxD5XLiTIMiAvGEjR
	 UQ0gEoilixqkH9Sw+Igrm4FDAFUpIk3TBUSdNU6zsgJb9yolFjwMB8N593pxTpUbV4
	 CtcBEDiPvtMazaCYpFu23ptbAngga0pvL9vfMdRMKz+IZU5qKDvWwYEYsCId1oEToy
	 FGLeeUYwA7wP/G/edDwjPzHPgUClsf7RFl4ILOmAuIah2LLDYGykuCGqheBmZrKy5R
	 VEyWS283Bp6ew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A4CAFC35FFC
	for <ddprobe@lists.linux.dev>; Thu, 20 Mar 2025 02:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174243899366.7097.5652107099906476268.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3b4b24b485d63991612bae1515f92a6866b545323568b7b1a5cfa024b984ebf8
Date: Thu, 20 Mar 2025 02:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742438993
