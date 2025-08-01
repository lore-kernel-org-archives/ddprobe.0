Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DB7E4207F
	for <ddprobe@lists.linux.dev>; Fri,  1 Aug 2025 03:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754018994; cv=none; b=M2gsLhyozEA3YEt1nqLp49Y6J/6OzbsLIC4/J3449QcBXvOQl78RSxnAdZEFaqfZQqkBXYr9RkX/vBJPfwdfUAeYHkiTgJFPLmmBOEMlbnmhFrRE3brZ8UNiselFNdUsQ/fApcbWvfgboyBQDuu4MkjoQku2Mm5RgsAVRrCdBzw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754018994; c=relaxed/simple;
	bh=Fi7pgxu89zlYF3RrXoQzLnIA69nNP/sWWc4qMDcwbAQ=;
	h=To:Subject:From:Message-Id:Date; b=g7Ha/Fr1eSnx1n0rCTTnQERWcyH+jvJZpHKszg/wpPEez4mOeAt9CxGkSayeV78kDzCVotOVrsxAzRBT8T8xmLcVhkl6cm821qcZXMGGzT3xUrLzBIIZdSj7ucvgVmZ3Ed0XCWHYXRFbEJ+UdwB0XXDDhl1snvL6M577hc7HWYE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BBe8UtWf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BBe8UtWf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1616C4CEE7
	for <ddprobe@lists.linux.dev>; Fri,  1 Aug 2025 03:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754018993;
	bh=Fi7pgxu89zlYF3RrXoQzLnIA69nNP/sWWc4qMDcwbAQ=;
	h=To:Subject:From:Date:From;
	b=BBe8UtWfoL/nVNN/d+vHpcoG4RIMvJ8LJSOLwrtA81UB5H6Cmdkly8GR+FkVK4ctm
	 uNjp9oebeACvpb4ZP/s0Qr8cSgivZUIqo08nLOOlKZVYYDiDfa8fqZGyujtiioI5la
	 oLvH2ivPe2MIqF7OYRQPWpK3Q6GSOsTQsfA6OWZ0TRmz8LxpL8Hwb74W6MFUhGnce9
	 y2KTFyypXU6pBDEH8hWB56DCeqC9M5Ku+JzEYH9iUZ3oy13Y74Yd6po4NSn7oyGuOe
	 g6tTxAMbXUPMHJ5EFRrZlZV8WnG8gjrkbi0dqEEC+UAaETbLdUbDthiDIqYS9YBR2r
	 ec7/CrmElzAHQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91D60C87FCB
	for <ddprobe@lists.linux.dev>; Fri,  1 Aug 2025 03:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175401899358.14079.12825122457302301317.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 77a745f02446659799b5a391e0f257f8a9a61a7dec9d7b84e1890b231f01f064
Date: Fri, 01 Aug 2025 03:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754018993
