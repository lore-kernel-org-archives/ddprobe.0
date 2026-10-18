Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42C9A361952
	for <ddprobe@lists.linux.dev>; Sun, 18 Oct 2026 19:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792353034; cv=none; b=Elnv72bktaDUywhh0nsqzWjE5g9uD4D4VyTcLErJ7ITqjdECp6qKi+uvEIzew6EjMSqFRoMC4FTp8IZ7V032FXBZBdeN524v30CEy5BeEOUtVaxAkv9AqVFzmdZ6dm0imVqlWL6L/aDljAXl354wm8uXhze/VQHjByEagaUgAlc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792353034; c=relaxed/simple;
	bh=zQzG1rwhpC7K/dsC70TUECglS4E0dZkUwnATO80Yy0k=;
	h=To:Subject:From:Message-Id:Date; b=Cuvpxv1QbiSU3hASEo8KyZsxtF/GFDwiiNuiXirf4AnkjsKdxPMQD4B3MYXBB/yOuLMGMi6m2qCXYaTIB/qt71tULqzNQziiTvQu9UC/IJTuQyzTgXJjm4B42Sg57ziYrbXloz1ZXpnyskqr40E7AQDQF335qhNQyodGCm4M6/w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YwDtB1Lp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YwDtB1Lp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3735C2BCC7
	for <ddprobe@lists.linux.dev>; Sun, 18 Oct 2026 19:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792353033;
	bh=zQzG1rwhpC7K/dsC70TUECglS4E0dZkUwnATO80Yy0k=;
	h=To:Subject:From:Date:From;
	b=YwDtB1Lp5+cwTTrvwPSg3PZ6N9nKKu1tOFkGuctjHWmE1Vs6ydS99FOqTCM7pkVPW
	 L0T/SFnpiyBUjnd/H5rlJOnj0ocoH4BKf5J51nYKTm5KAihl/l6bF0GzEtGbI/UBul
	 Uuq6Sqo+kXF0VlFQOa5dBVg6ConInCrgNidBi5/rh+E7zJiVMR6pGNRvtZX8zpNQxp
	 ixOtBBWB19YzFdwdRdSb7Wm/MbbGj7mIKl3PKaUwMFA7KVBdZHCGHtqNI7FkpKttgX
	 LtkmfhVCLMMi5CaqDTt7NKv4kSjGG61D0rMeNDok9qrykdj8TzzRBX1/cON2nvaIpP
	 ebpbs5TWHYw1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B04AECCA490
	for <ddprobe@lists.linux.dev>; Sun, 18 Oct 2026 19:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179235303368.23753.16119991256433744130.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8a5c19244ad66b165e7da8c1a4b9e32e11416d230257eb423fe744516bc4f679
Date: Sun, 18 Oct 2026 19:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792353033
