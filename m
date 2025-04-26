Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D6A022F01
	for <ddprobe@lists.linux.dev>; Sat, 26 Apr 2025 05:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745646594; cv=none; b=AJ2EhpMyiEY5i/uif/86uH8iRJbA5f3HpTmqe8OcluM1/rS4kYQsjOufbHvfJl/woMU+8GBkaE/ydaN0ebPSSzNObyNNMC6WurxzweWUPnlKogDFbIJgj181nOKUxs+krqYUQrk3vL/6Q/4wqFiV4HnftiGT6IeU6Ijl3jTzBuI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745646594; c=relaxed/simple;
	bh=B5CGppB2knVYuCLFKbEnKxQ1Jt6RGjoVgHyHf/bewhQ=;
	h=To:Subject:From:Message-Id:Date; b=T2Tg8A0MPLxFWro3ZOF5UGZAuyErPGPBDpRpXLpyxU+WwsOm3Poa813s7c99Bi5ftKSOMNU3U+tjdOwU4QvENETvWCBE6QZTDqMNVEtr5uRH57TdNxshLBSsPvw0ArMpbmA0wxJu2VdbNef05evzgCiSUOWTFzSnvQW86wjvwRY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WyF0cwSK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WyF0cwSK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F945C4CEE2
	for <ddprobe@lists.linux.dev>; Sat, 26 Apr 2025 05:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745646593;
	bh=B5CGppB2knVYuCLFKbEnKxQ1Jt6RGjoVgHyHf/bewhQ=;
	h=To:Subject:From:Date:From;
	b=WyF0cwSKd4YJifxdpwFUum8PCjHAawby8kBncHCNI61DPE3nwsxV/gWEGpuOu5cTa
	 KuhpozCmusbDdY4XsgHMJfIvARz739DwKBr4TT2Njuy3/iuHHt3VK65329O/njgEj/
	 J1PQGzVs6r/DNsVeEV9EgEp8dyBy8UiSHDDEFsoOrXLj39yRHgAbdVmuZsTBfZXqxH
	 NYKFGIjguyZTmF/3UxhGJgk3FZX8r78cAMZcpHrf48CsWwuVWFwo7jquZtWlI+DklS
	 1NFQYASUqcdhJ1Ywb3Va3VH0dRDh+XCSt/ILnBd9mgPPoGvX/VajYHe4AcjgJ6ei9n
	 Ze/eyeLUATq2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90A5CC369CB
	for <ddprobe@lists.linux.dev>; Sat, 26 Apr 2025 05:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174564659357.25373.9423138261789766322.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3fc46e5197f6368d515924b78bd85f542cbbcff58391341d22c782cc24547956
Date: Sat, 26 Apr 2025 05:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745646593
