Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38718288AD
	for <ddprobe@lists.linux.dev>; Thu,  9 Apr 2026 04:45:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775709934; cv=none; b=tDeBc68js/fzjz+mHw3KZZQ5FzjJsDhluRamuB0a9ZFv37YuMUNn5PvHyjdVzYHgatX3dBbiJ0QY9YQdSvZ8Hiv0K3bNjtXyg5SwIZxvkaXLXswR/nTw3FC2H53CXlZUZWHFo8B36qzPo94JFJYiU1P1jXyjunWhINhZXX+mbBg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775709934; c=relaxed/simple;
	bh=0plT5qdBnwkned+DhWWb2rfQ7vb3qNsXhi1rc3bNr0w=;
	h=To:Subject:From:Message-Id:Date; b=NPi2AFLTratSCl5Hj7jsmWRkVjlk33U7RkwbpBJbLDvIDnUR6MWsFJkczpcyYcaCgLyClQiHiiOckOk0ZbqGTyP6302S1l0nygKOEvMu3gbLVriib8rSx3tGqH0LP1dYy+FDtRI1SoW5q+FKM8mcTPfPJP8ycL+aC/L4iVDMeXs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RD6Q3lsX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RD6Q3lsX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4373C2BC9E
	for <ddprobe@lists.linux.dev>; Thu,  9 Apr 2026 04:45:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775709933;
	bh=0plT5qdBnwkned+DhWWb2rfQ7vb3qNsXhi1rc3bNr0w=;
	h=To:Subject:From:Date:From;
	b=RD6Q3lsXIxe2ybqnj+RIddnJPYPOUNMo4lcdy1jWe5MEzezdjdeQdj6UYF3Vis7xs
	 ks3+a8FC09OOmIQEbRKoNLSHWcXbk33kFMs83xC3SpqWuYBtqWnzUSRhFOoW5aQ04k
	 /WWj/+ZcyNSi2VGN+4dJbgmRLmHcXaN0wsxCzeGIVHn1Kl/V/Zv62OofVVqi4AnuDE
	 8Eenza15a6oOLgD7IyKjp+mbI3zcYbJA48iwXzRV+fnVPWa2SAfATsrYjH901evFwz
	 6/oxctpwSFHABVWYws2Azc1DiuugQdFk6W5CUVshqG+oaMmYo/lqE7uZLXcAj/OopH
	 LmnARplFhwFWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1606E98FAF
	for <ddprobe@lists.linux.dev>; Thu,  9 Apr 2026 04:45:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177570993369.23955.12273527837714769827.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0ac042dec5d9410124b044afe65de5bfee667708bfbf9e64034e76af8cdaeee2
Date: Thu, 09 Apr 2026 04:45:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775709933
