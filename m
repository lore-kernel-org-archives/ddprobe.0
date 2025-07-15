Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10F551B042E
	for <ddprobe@lists.linux.dev>; Tue, 15 Jul 2025 21:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752613794; cv=none; b=h26FSUOsbxfjnvsHuOkRn8uy4dDl5ITmbg3v8oLib3O+t9EVYBxV80rBpMkO7ZaMZ8o3w5z82gO5+QekJzVqHHjCcgZ/wO93xk8k+q4UV3PmxGEJFF3abFrzAuZsmmSkgzf3s1570izNM4yTDyY717ZlRGBIhkG93rZt9h5dmGM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752613794; c=relaxed/simple;
	bh=Nc0ymgwafVamPKoTV926aQysPPLtiTNnqJgzD/398Do=;
	h=To:Subject:From:Message-Id:Date; b=MBznc07rBgjQVGoUZqIM19q+4Bb9jL1XSO1gnGIfHz4FEdJuaJ/O/zX2yVArQjbtgG/aQ9xTjXlCE5TMzpV/w5eTf2E7O5r/a0F4+I0JRnoekNVK3NiWTS+3rfYJCqL2gxIAyAQ4vfQedREVTiWlhfpW3/YGSplEt0XLDB+oTMc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vIQOTAUD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vIQOTAUD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A528BC4CEE3
	for <ddprobe@lists.linux.dev>; Tue, 15 Jul 2025 21:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752613793;
	bh=Nc0ymgwafVamPKoTV926aQysPPLtiTNnqJgzD/398Do=;
	h=To:Subject:From:Date:From;
	b=vIQOTAUDGy/waQymFmPnHAskHB6PrMLm6mYgcnFl67+BoLCo3k7qG53pqweafTAV3
	 e9GLOgxjLn9VrsTEukx/UAvkyYsEXd2S4/ikXp1a6YiQKB03kTbJj02MlEuIof5hwE
	 U0FSahrNTmBcIN0+9fzPM3WglbyBikndZl4KUeAayFMGsUVNIv204wN4XzH5Xqc3Lk
	 bTA8eOgz4qX6CV0AygV/S6wkKxJN8MMrP05m62SfbPdkbpKRZ5bTGfsEsiz9KbNQix
	 sZG19oK1SOZ0GYuJzjH3UO8NQwIbV3lDRVP4hp8y1I3MTfO13WnBqkwyr3BFfXJmDr
	 omJ0kxXxQoASg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90830C83F2D
	for <ddprobe@lists.linux.dev>; Tue, 15 Jul 2025 21:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175261379358.30610.2017879507655422065.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f9b87586687214761d02c812192253f18269be893a9f330d6e8473eb680febba
Date: Tue, 15 Jul 2025 21:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752613793
