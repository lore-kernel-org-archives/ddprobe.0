Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25A9C27875C
	for <ddprobe@lists.linux.dev>; Sat, 30 Aug 2025 16:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756572594; cv=none; b=VEvkqnXIi0jZlMLfG7PQTC6eneGTPlzctNkdI9n1RHnLcJrvvnepxgraogFDNoWEL8RNWbMa3Qh51wnnJxFdQdbd5OvLsyd3Jq4+H+/iGlR0dHUFPiyxUfl5G7rtSGokKQnAwNUDSf8QWmfCAbuJgkkINkY8i1A330eNHdl3db4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756572594; c=relaxed/simple;
	bh=4s5661BEUp+rzIBlNdthOV+ALbJqabotk7hmiDvGb9s=;
	h=To:Subject:From:Message-Id:Date; b=Giq24mhgKWYFwry+eXPkHiJX+70nxuxkWl2VkY2u4EznssoB1VaBlNEgL769h63xJY05rRcuJKSfZshCm3EK7tsxqCtq7u86Qv5Q51uaJLo5+hBUONLk95o8Nb+poKgP8Oe9JMZOI5+CNO97FxJ2cTGvqueYVc8y3Sh+lGGnEpk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZTaU7J5T; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZTaU7J5T"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F88CC4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 30 Aug 2025 16:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756572593;
	bh=4s5661BEUp+rzIBlNdthOV+ALbJqabotk7hmiDvGb9s=;
	h=To:Subject:From:Date:From;
	b=ZTaU7J5TycJZqW4DZiAEIIClwWqRQHd3Zc6sOT/SIuLMYHyVe1reZwqUA51Yy2naF
	 8ve1bfmBqYg8ts3kDSrhP243syR+ekhwr7T4xuNfGHUFhv9P95crPZQqhmGIevDFRt
	 TbvA9vbLHEUzPkOA9V8CvJqSz6wDl7xG9LtEV1cPeiIInpmcPMk2XztuBfK7e8A3XZ
	 xxyiDVjB57iQg5eDffVBe+qiUeamzVP3teLpwh1sW8AnShj4Ecx4SYqeG/hhZ1vooT
	 mv1rO/lW9VuXvjdINkOGlXD/IhMLPlZZORURd5uY4r5cD3wbNJeInTtBP5IVfdNMCs
	 XiKrcNAWqqQhg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EB13CA0EFF
	for <ddprobe@lists.linux.dev>; Sat, 30 Aug 2025 16:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175657259357.23910.8835387342537688588.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: edde3e9a53fa96332c2daa8e1935f1f93cca20960ba1d77b9625faa8ca6f8dd4
Date: Sat, 30 Aug 2025 16:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756572593
