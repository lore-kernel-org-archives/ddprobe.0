Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3988C26CE05
	for <ddprobe@lists.linux.dev>; Tue, 16 Jun 2026 17:36:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781631394; cv=none; b=ln/V7hpJPOeTWxu10iEvT/0GY52nr+mJuqxpeUYK6xVnz6VI5o0pPvSl1u+qUHaV2EUL9DIQZ+5vXqXhwUdKbLaJvgHKg0CHJGNdUdycd7QgoTLg4Pkjt7lJT2CtS1d60h7GR8Cg5qUcbxvqBnn1YwFlc0RnCPz46kyFlZNfen0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781631394; c=relaxed/simple;
	bh=Sjbc8TK0GVO+qsB5I8Bo7ZHMLJUTuFolZT1z6zX7DIE=;
	h=To:Subject:From:Message-Id:Date; b=ciQt7zsVZfIQRBKiLciXS3gdZ0+6CLF/BGpT+EM62R1F7lthy9do7Fc0FhE2AgoAdZbOocPPFyRfOqxcn7JLUCRxa63RDwir9TLFE0g0e7q6leXZyxXtsC1YhAD3XP2Eg/NFZotuqHs/w9nt/UiuSbdYF4tu/8GNVOaoUoa2504=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ebibd1Go; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ebibd1Go"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D83BAC2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 16 Jun 2026 17:36:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781631393;
	bh=Sjbc8TK0GVO+qsB5I8Bo7ZHMLJUTuFolZT1z6zX7DIE=;
	h=To:Subject:From:Date:From;
	b=Ebibd1GopN6jOFBKJGfNTNeZjrE9BlNws41Si3NPYnR2feLaY0PNIYozMPvtNkxJ9
	 RXexZP3l9ivXmeGvyAYLx4f5lpRllNotqiCh3OFWN75gOu23YvRfWkd1xcXIAe/sQO
	 OvTG7DK3uCxwbbuNqG2J9dusH/b8M/ird9D2QwhIKMiahgIW48RaGUoEyuDgXOKRze
	 qN/W7QX5ZFAvIs53nhc+yGCr7U+fc4XMPZewGEp8QCm0bbzRXMTeMW2+u57AzYlafl
	 7boaNT9rPzZKufK5E+7YeNRTDJ6fFBcyps0LHxka52BQ7RdTjILIsNGMn7Khq+UzjJ
	 xTPwtNm5vzViw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1B6ECD98E4
	for <ddprobe@lists.linux.dev>; Tue, 16 Jun 2026 17:36:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178163139371.24082.2519178629862491041.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b8f0aed71e8f4f83056a0a4d21a3e08637a20c56d9ced80404a41712b6afb9c5
Date: Tue, 16 Jun 2026 17:36:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781631393
