Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4745231354F
	for <ddprobe@lists.linux.dev>; Sat, 30 May 2026 02:13:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780107214; cv=none; b=gCLOnivhUyuLlMWGUAdDnAuNRjs/2gXsnBxd3iACzAJl8GyKgfwxx1eer+D4n+wKvTueB3k9qjYM4vpS42PI7rhCiBv3gdnbHsJo+zVuHM2e0pU87mKYJFROtQgpepcwa4+w0OtFvAnbm5uxun/Oj/pwFdbgILu0R0YqaDG7xLg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780107214; c=relaxed/simple;
	bh=oMNCN3DI3wj2GgOTg5u+4nIbn/kEKDXCq1FfXa1GnhE=;
	h=To:Subject:From:Message-Id:Date; b=S1adKfFvXMrcTTey0/iZyvQaCaHUekyrZwaGZLRK6JVtgdnwI3oWDoRr2VhSg2x1Q7Ww4gUyE5ReGUIwla2BkN0sIdk2IrJWsFgXOxB4alRYCzzNpny/v2dE7Ffu22iV2q1i0/S+WtJ0UTKB7PkTvAKV2//XQwzc8Ldapo4Nmf0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AhQvFPMn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AhQvFPMn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEEB6C2BCB8
	for <ddprobe@lists.linux.dev>; Sat, 30 May 2026 02:13:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780107213;
	bh=oMNCN3DI3wj2GgOTg5u+4nIbn/kEKDXCq1FfXa1GnhE=;
	h=To:Subject:From:Date:From;
	b=AhQvFPMnsJj/MB4E3kDOeBTQeShhjfAFJ34j2kfAgakdk/r7KwiirFNbocSozt76R
	 ea89D+/AvHGo/+c5QExRd0eONVHrokgNKnm55xWusa9NlRIQuhC31O//QqRCUQsslS
	 C4Behy3uzWlVPUTNDfoYGo6Vx8N94qGedLiMrw2R6IIQhAhA4CO7kVZUfn3SuCx+DJ
	 kcdTKWZJ3mkVt3mMj+G2jCYNiwm+Jko8YntfyfyhKeEO5KtvTGZOS2JG8QmFVJLf9f
	 t7D3tkLxhpQoFnaTDwoKrxJYEO7hz3l7JqmX8VzMqU5LA+63Ajcxq4Xl8yZn1Ieg3B
	 twl09E2xkkdQg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF05ECD6E51
	for <ddprobe@lists.linux.dev>; Sat, 30 May 2026 02:13:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178010721368.19368.16067100680187999847.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 449b6fc1ae65a61410f20f10d4a4a89672496c6b8d807458d14bad46d87664b4
Date: Sat, 30 May 2026 02:13:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780107213
