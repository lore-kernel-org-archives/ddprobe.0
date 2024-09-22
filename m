Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DC1FEEC5
	for <ddprobe@lists.linux.dev>; Sun, 22 Sep 2024 21:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727042154; cv=none; b=HQbsGQ3A7k3hjk2MrPpaEI/exYL4NsvLBh0r92mF9/O8bJW5/pt5rV+GCKLi+wFaXfjHH5tLUzHFtPrPcrg+lf4TLtCktlUc6oLVaMsEZcBAwR9S+cY+x2R8RTEnt5mWqx7+QtnB+ySvv/J7mZEMGmZDGRxbY5/blFogN4K1wv0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727042154; c=relaxed/simple;
	bh=ghrlzBxkgbQTqbSMlNrFZJ3FzGSJ/MJbcTg+UwvpmRc=;
	h=To:Subject:From:Message-Id:Date; b=hx4nQhYNYuDw0mSyRhpYbjLAApCcEZ6rBCgeAaVF4tD7zYg5Q/ZZe1jGp13LMzy8sHjWf4pzrSu35sPTxP+QXOZHVhJqK1Is182/7Qa7kEuToz/PMsC703HqLcEx3xyUe8syEvCDEeeyHlg6pU+oD3qiOLLPQokrZ/nGQitCgSs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y+wS+CTb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y+wS+CTb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1713C4CEC3
	for <ddprobe@lists.linux.dev>; Sun, 22 Sep 2024 21:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727042153;
	bh=ghrlzBxkgbQTqbSMlNrFZJ3FzGSJ/MJbcTg+UwvpmRc=;
	h=To:Subject:From:Date:From;
	b=Y+wS+CTbbwTEvl1jd2uqvEwkYOe4sZgrVbmJO8ErV5isRzxNdcWNhpithcahT6lYO
	 mP1vAtfmWmQgnyIs2rWAyhbw6FcTorEXYaKCs08rbKfODhRFCiK3pCvaGu05utPp7F
	 LwwtkoDX1AhK7GncTmbBLiYDzimm+mmxT9KOuYuX7Qg4U5d3EuSiWWwJh4LcTnekoo
	 whTELltD7e4gOyestjftOcnaFR+8qhQyX86xaPAxHZGfvVGySlw3t0Sj1kUrWRwIFA
	 8D4/cb1/PKsD77njkaPweDbDzRpehiZ7rzFUjP8JguIGCIU1RpN4ME2cI4zjmvMGxi
	 EC4zwMIvDCU1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A029ECF9C6D
	for <ddprobe@lists.linux.dev>; Sun, 22 Sep 2024 21:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172704215361.20958.3639321416275552755.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 14fded082dad886e78ff860ce91ca75adf0d4a62b575cddff9795ea07b5b3946
Date: Sun, 22 Sep 2024 21:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727042153
