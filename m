Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A2BE346E7B
	for <ddprobe@lists.linux.dev>; Tue,  6 Jan 2026 13:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767707634; cv=none; b=BOdIKdPve/1xgGy4BHCUenMPjG6tDEYnra3R7Ba3yooruW1Iu2pzoSeOYu5xKP5X1ok1XpA4aNKWIuNZENV6lFEmEY6O0SIZJcllFOR3W4qZShfypaDEQhqq0dSoJCR/QgVkh2q8AISLejwL7x5yTw3A67D3zYLT8TroJoLZ7BU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767707634; c=relaxed/simple;
	bh=znxCy2FcX+8HwpBrDGYRUWFqO+MHJRW340Sagu/pNzU=;
	h=To:Subject:From:Message-Id:Date; b=pKd/XgTtsmHyfRUgWg1+6BWgqktn1mFQaph6YaWoTyAAKn4eZgOeHCewAyDkOqY/I+VXpcUfStc0ll94bEcV41kcryw1/VygrGwyUeibtzaiMRFVoWargxPoyRrWHvuKjpFiOOS5tTcCDEvb/inCvmmdkROkPN8W9aGGbhgfu0Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kog7iWhg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kog7iWhg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A07D2C116C6
	for <ddprobe@lists.linux.dev>; Tue,  6 Jan 2026 13:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767707633;
	bh=znxCy2FcX+8HwpBrDGYRUWFqO+MHJRW340Sagu/pNzU=;
	h=To:Subject:From:Date:From;
	b=kog7iWhgALUiZD6s7/exY1BIv7uJf9lraiqzzeJDvwcgGMdes82LOavfjITnscZVw
	 6pWgOyK9eUWw5dtVIPRINQW3QyBMeaI/NloeliEg0RMbX83ScfWHkcAVV4kBUkvipe
	 nW4yRWNBfoty1VvUzFcTMKLBlEmingiKtnezJF+cKJiphEjwIC9NVv6PeOTOIpjTv2
	 7S2XOa4dusG0jYUjZMLPw3zDXcWioZmZYhU/+w4J/136tP2flmRCbfT7f2j/G0cOLW
	 4MMWHgSevIlA9oI9OLMwnVSXrrPODyth8b/SmuXPPksmVTUMDcsnk8DYWKDh3BbNnu
	 X1wZipxeMersA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E7B7C47BF2
	for <ddprobe@lists.linux.dev>; Tue,  6 Jan 2026 13:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176770763357.16203.16010795863688218662.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 98c644514a2fa33293e4e686c1bb86d33800ee5269476530185fbde057017679
Date: Tue, 06 Jan 2026 13:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767707633
