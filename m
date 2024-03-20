Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 139B61642B
	for <ddprobe@lists.linux.dev>; Wed, 20 Mar 2024 08:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710922097; cv=none; b=WwLs8kXrGpXH08EKhoEdHwWmF2uEFgoqlHoHc5FvWi6us/7aVQA5GRBiFDpVB1tWiC33y4EQ8k7G1X7+LiCIs24ytPMiO11qrZhS0glbvCT6RPfEQdbasPaZ664HWjo/fOF5a0eR/b3cTOqcMohicwKhfbOvhUts0hUTxAAuKrk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710922097; c=relaxed/simple;
	bh=/ugg8jbkTg/qL4m6sQpFBI+J9WH5R3CbdkmIFK8aw8U=;
	h=To:Subject:From:Message-Id:Date; b=PhDbnUhZLowxJjeKW8+bpQf4287+rsWG19Oy1XXRw9gl1lewpUtf5HcbW2j0BEkmFK55q5+QAYtFSd1M0CpiXoVg1HA+oQ0Vp72xEG3viXJIa9qGYAtLhpAHfEQ8wP0YkT8c8EX2y+PML5M4DI9DIo0uFOtMCsyaTy20wnkYAaU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QwoThqTB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QwoThqTB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 78438C433F1
	for <ddprobe@lists.linux.dev>; Wed, 20 Mar 2024 08:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1710922096;
	bh=/ugg8jbkTg/qL4m6sQpFBI+J9WH5R3CbdkmIFK8aw8U=;
	h=To:Subject:From:Date:From;
	b=QwoThqTBHxOT1Vj2KHVxYGYOm4Fvbl3tH38Wo0pZLTmXgWmrxXs+qOcoSHxgsoVpe
	 uw6+/zre3GU5iHWCALgtVY26W17quhVJhcKJVSmqTyiROsKxcXc6apQLQbw2F3j9sA
	 mrfmitxRmYWVOUcsyMT+6Hw1U8H2Zgil4ncAMR65WPzRu5h0qUOR7sapXOFgjwTxcr
	 Ao7IC7TaMtCuh/x676NKF4ZzEKtr2VgsX7Lci03sdMf5sV8zlFJNumN9iibjYQAyQr
	 jJ2tUQ1Q7eDAvbqyORzs+apcxtccFuJqLZ/o0AxvYAbnzERC8DwuAAr9O3Pqz+OynB
	 3kx8wVbtOadEA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 652D7C54E67
	for <ddprobe@lists.linux.dev>; Wed, 20 Mar 2024 08:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171092209640.31862.944086423113404724.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8a70988308e5941e5c133614b99775fa3bd5bdc184b7263786442e4e2220157e
Date: Wed, 20 Mar 2024 08:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1710922096
