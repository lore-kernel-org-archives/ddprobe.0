Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 105641CC893
	for <ddprobe@lists.linux.dev>; Tue,  5 Nov 2024 11:35:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730806555; cv=none; b=heNtNpGa87XxG+zP3XlaDqOnxEQFpBmJw8IPvH9iJqb7c+klPXSxtF/my2CNPIIHKD7S7YaMQkvuwSVq7sH85vbsNxRVAQ8Dax7aIa69iD+6X1l4Hhiyid2Icjar8hqtXnZmwpKJu+o8zI/8CFnr9gH5kkfVj0DQZyi8jtijJRs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730806555; c=relaxed/simple;
	bh=yxEZBbDPdsZzY6G1Fzq9lPsAR2n6wP1YdT7amDjXHGA=;
	h=To:Subject:From:Message-Id:Date; b=Y06ASpMsAx2ISa+T/OIsIPrOD2KC5RcqqVwC5Dxn6yglG7YkrujLcQTZ2mhMabUiCHxKm0m/3sdxq3t5Z5hk01F1N3iFYMMKIgBtzWuXhDVJTyytuOcrjTz67ikqDuUjXztuuklubEdLVvq7sp2bGvadbjCBpkKDnpYX/8t5V2M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uSkRKWTb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uSkRKWTb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A979DC4CECF
	for <ddprobe@lists.linux.dev>; Tue,  5 Nov 2024 11:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730806554;
	bh=yxEZBbDPdsZzY6G1Fzq9lPsAR2n6wP1YdT7amDjXHGA=;
	h=To:Subject:From:Date:From;
	b=uSkRKWTbQbd0vYHGKtOaleEBF4DBPtAyUo9ETRzWXfTmDVbi6FNgyF5Ae+xycXwr2
	 GU7dw0qqi8Q+/HLuYlVXKu7ExrXUhHFyold5dw592ZxxnaVmlBgVmjvQ31IogHzvTx
	 mw/8WtmJcS905+89aECPDsAhRte6W7VabhVQIlLDn6ckWInOvO4MbzLoWRlPeiSB+U
	 sg/r10JRkFsiEKj3ECOIYKgky6L+ZRiSjaV9Mx67oWmAAjRYfM5Rc8W5ulYtJipNg7
	 5zZBaa6eD+/TA6QhtjkoFpZnu5hw2KxL4cFgaSppTwynOuhmzxzlUHzbHjoscj3Efs
	 WUPFR3jf7cLeA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95ABDD1268F
	for <ddprobe@lists.linux.dev>; Tue,  5 Nov 2024 11:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173080655359.24957.8996227918507106577.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f47bc3e45acff5c3e4dd6d98fd97038650fd8596c79c686fc70cac8b0935eefd
Date: Tue, 05 Nov 2024 11:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730806553
