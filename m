Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 212383446B7
	for <ddprobe@lists.linux.dev>; Tue, 21 Apr 2026 07:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776758254; cv=none; b=IgKqQVtb/M67IoA70eGNnqC67Uhirhqzi4DhxkodrkadeBQsQ0YcKw4nTNyKm5PdZFLBP3kaAd28hkeN27Qfibefu5HFOfUFqLUNO7HjxsvP9+oh/FuoK4Qkyumgm10KiK7QLE9BmFX2DzYC5u8ppStsXNqJaaWipZBIgfZao0s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776758254; c=relaxed/simple;
	bh=/PDFoW0zoIEVIo+e66csls61S0XTAnex/2M1ceyMAqM=;
	h=To:Subject:From:Message-Id:Date; b=DLU1s1h2PsDJav9JILN3RbaedEbwxINrRD9gbHIu1jfSj8xahBIb/hAq0uyefYANbVhCOrFV0aidULBUyW/jvVZMlKepRFKxS7m0fbiQ/HFRmo1uAKG4aMmRKB5mwZS5ga9V2bjHwDYyxAnwLawTx9tLBbvN+EBdEtOQBl4E7AU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VG1SylXm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VG1SylXm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8778C2BCB5
	for <ddprobe@lists.linux.dev>; Tue, 21 Apr 2026 07:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776758253;
	bh=/PDFoW0zoIEVIo+e66csls61S0XTAnex/2M1ceyMAqM=;
	h=To:Subject:From:Date:From;
	b=VG1SylXmv0LORmT1t5yYvLmRkvpiL/FHYCpY/FT8OayHPPzqWiVoDFSvSYr/qDOjq
	 T/jMhAjMlyyIlZ7T7vyqyb4B80Zn+rC6TDUujfUfajIAHuD48Yqsx2uG7cvwbN4vOi
	 5udWBL8tP6I101H8i5G993WmtF7fbdiFuYQXiVv26WmM8TjH1DhuuBQ6newXiUH4U/
	 iGddqfdi8aWV3ZX8DvhP+CswfpdFjI8j8WLCwZ2uRXlaZXFO/G6bpB85oZYwLvFKYt
	 kDF1RBrq41JmlHU0v8sLgr3VVcb6hLFbUgvIIqUupVwYY8OaHgC10JYrv7sYXa+ugk
	 UBnlkb+qQzs9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9E5EF327BD
	for <ddprobe@lists.linux.dev>; Tue, 21 Apr 2026 07:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177675825368.28690.730112909945885074.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2f31d4fceaf696afa46dc23dac2e72324fe60dcca0113ced295441eb4abb122f
Date: Tue, 21 Apr 2026 07:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776758253
