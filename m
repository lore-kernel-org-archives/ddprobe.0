Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35590218599
	for <ddprobe@lists.linux.dev>; Wed, 16 Apr 2025 17:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744823995; cv=none; b=lRT8MxVNw+ANcDW89DuStqIlTiBFXpD+ZJjXgtyglB9Taaliney2tBpcyWAAof2AQj055yHQw26AfRMJ2bxSQ2MGnvRoEXmQzpYmn9oliH8DDpkK3Qu86qLuvxoan+ta4/Kdd4A79zgjg7BLEl2QJt/HtZ3yGGKikaqWg1FWLAk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744823995; c=relaxed/simple;
	bh=08iAux+LgCGfTsWyuDYQJxL3VBP5fdw1vGGzPRDbrWw=;
	h=To:Subject:From:Message-Id:Date; b=DA/ctkyT/pbxQCm4dPN9cmRpofgBArHW+4SLSEeegfJnJClyNZow3WIuxinIGObvDwPriEEhVazNnzm2iAq4SQeTBjFs9+/EdHLbuvSuMktcyPWo1JLerxzfXB+/Qk9y0TFvByHAUHqM/h6xzu4s/AegVCTYMf3/XrB6rIiMvFs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A6pFvEVO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A6pFvEVO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A242BC4CEE2
	for <ddprobe@lists.linux.dev>; Wed, 16 Apr 2025 17:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744823993;
	bh=08iAux+LgCGfTsWyuDYQJxL3VBP5fdw1vGGzPRDbrWw=;
	h=To:Subject:From:Date:From;
	b=A6pFvEVO6lYYCy2ovuymCRbtObYRLXe6xFit+gWZlxR0mEMCpvoTwu8WJLpO2+YkZ
	 qfAVauTzz6VJLaTPpdvj7N7nmBjlmX8ZyZRrRUOuP08WjBfhXjgzHYBhrDyr5f7hD5
	 8UtphiP1ipYjtQUcGNfk/X6G2thKVyugBtEvo5cdZqymZ6AL3tfACJgCOBx3M5aF59
	 juRSZ+An6ccvtOpXxW13hfc2XoKiJH/ExnODJKYTzIX60Xwb8guaJFMTsw5CUhAdTH
	 MvmghBXKHYs/A7hEhhYTZjZQfKRkWW5N6VREUdi+lIi4kad3rjCSJNwVEDFSagEnXT
	 n/GIXogZF3gDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 906C8C369BA
	for <ddprobe@lists.linux.dev>; Wed, 16 Apr 2025 17:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174482399358.8997.17057854809812481684.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eb3b060f3a1732fdf98c7d24c682fe8563797dd9642ab8185dedec7fff20344c
Date: Wed, 16 Apr 2025 17:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744823993
