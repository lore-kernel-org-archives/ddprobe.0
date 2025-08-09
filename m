Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14FA523BCF3
	for <ddprobe@lists.linux.dev>; Sat,  9 Aug 2025 10:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754734794; cv=none; b=GYnSf4vkrCpfmU4ROiaCNZXHOO/v7sUmitqbI0Xy529N6vEV5tL+J1ZhgIvSUloVNHszOYOjdPuHlATZhboUnbcBI53OTF3cJj4UEex6n6yQ+Q99AMRZrxiSmgWU8qLRPYeYtYI2NkbNy25hqlcXp/xYka+CxouK0YpBNxWTWRE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754734794; c=relaxed/simple;
	bh=c1UFtbxTM9oefy9Zn9C/kFJvA6AyOSXsFAEsYPftzZI=;
	h=To:Subject:From:Message-Id:Date; b=ksH/ny021A9Dsj2DrDF1P4rlaZAF38bzOwH+XGfgoquUIUrRXulzeJrgM2IG6TazQFu33AR5k9EayCDZ1pBoD19tUthALxpHw0u5SqpqRhXOK0MojCdzQZm6VfgtOlWT6K53xdBbeAMUE7QWV49jWPzTD2i3ZeVyyjz5+ppsYks=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qCweWr/F; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qCweWr/F"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9BB36C4CEE7
	for <ddprobe@lists.linux.dev>; Sat,  9 Aug 2025 10:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754734793;
	bh=c1UFtbxTM9oefy9Zn9C/kFJvA6AyOSXsFAEsYPftzZI=;
	h=To:Subject:From:Date:From;
	b=qCweWr/FxIj7ZqtFSCs0x/tsz/3QPF4Y2ZAnJvwsTATwXna8dE1oQahbsB3gSqVr0
	 0FZpIrsJFsdnxs1EuqRhK3+bV77xFrNKQKZA1pZPQRVlF2u/uPSSKkui+z5TC/NraR
	 NO8TAlyy2sS6XJZ+CfruXb9JBlYkkJCVXm+6LliRYuV3x60GyOWxtFW55yUZxKVbNR
	 sxCD0uXWujoqfQPCz+K5iZDeFIakcm6ys5+MQp0I4+FA95v/OOB2yQ8AZ54EsjPanN
	 8qGXflfztmyJwRF4M3fNu8TIjhSq1VPeiH/xiSJQ6hGY5IZxqIqyKIRrrnHbRz/lFg
	 Kcj6pGO2HVZZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EA41C87FCB
	for <ddprobe@lists.linux.dev>; Sat,  9 Aug 2025 10:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175473479357.26849.5635815164331808020.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3b02dec50136b40f638a7b5fd94a9c03a57cab88272a8890c3b07400eb99867a
Date: Sat, 09 Aug 2025 10:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754734793
