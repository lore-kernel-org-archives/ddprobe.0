Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 750D643CED2
	for <ddprobe@lists.linux.dev>; Fri, 10 Jul 2026 16:08:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783699715; cv=none; b=rjmD9l/EYP6EMnmHGCxiqGEcQXEv/qO5bRmweIU3Lcba7cPO2YI/MFgC+XjSHQWa7+aGvM5UobtTkpVLQTFiAVU0cJiO0smuCwp48nsN0bm0ySfH3CnymGijSVs6BxvECBEB5a76oO2iIbgDqnYzZkUqJP7+aJo+zSepJxU5IRg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783699715; c=relaxed/simple;
	bh=UVKNQD7yTObgRg1SChqdW+rMcUT689TMbuiMie8XjZw=;
	h=To:Subject:From:Message-Id:Date; b=Tl/GBmc28PaJMi4aHVTseCRY3OX6YYQKNJMGEl/AMOGjL01tDxMi2km+jHPibYtWefuGtLsRefuhzQfoYRXyOF0MJhJ7A9MdycJXWs51FkaZKI2EiS20qDeCtTxF9NnDb6FYkFOsczkzfvFTdkcVY8wZwb92GOb8JOYcmhKwqEw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LG/GMl5I; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LG/GMl5I"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D06A6C2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 10 Jul 2026 16:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783699713;
	bh=UVKNQD7yTObgRg1SChqdW+rMcUT689TMbuiMie8XjZw=;
	h=To:Subject:From:Date:From;
	b=LG/GMl5IdQB3ywjrLnTTG/5hceECtlGleClRfdPFVgniFkQzNm5ioXlDLXZBBdAke
	 wzT79ZrIoQwEyJOusQl5RAcJF9PWXtwE97+EWaYWK2MI2I2EEr5W8I4sesAot+kfpf
	 n5fRjfII3Ev7rC2I+Umy3viWbOOO18Krpq7hCBs3OlQWel+p4UFH8tXKQXyLn6B8G4
	 tGsktFGuaAlwY9lSvGL6jrYsjQ/jP4FdwtMT+QGqPuXce69+Ocgr0CcmzSoAOO5inD
	 X90H+3HQQ3Sv5rcScOD3ZF+g5KVNlsnZpvRlHH6ULWSqyvqiXdkyzbMMGQqss48lkC
	 qbWQi8XWE3VXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABFACC43458
	for <ddprobe@lists.linux.dev>; Fri, 10 Jul 2026 16:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178369971368.4959.9899411979183893681.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 26ee7a72f140a2a625bc22a4c561cb1d4122670e35be0f8c8cb06b0ad4b036c5
Date: Fri, 10 Jul 2026 16:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783699713
