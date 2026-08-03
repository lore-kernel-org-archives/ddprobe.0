Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 64EBC126C17
	for <ddprobe@lists.linux.dev>; Mon,  3 Aug 2026 05:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785733834; cv=none; b=QFsDD6+gFn84MTNurFI7VaqQn0b7tMWA3tAousll/jIQsPfQY9f1VUMh8hLlFOKvOAzHE/mcVoklVWx/shW7HRxtViUA7StDG8zaJMsdHiUczs4vAbBnlIkctkS3G31s5QMOUR6RMvogNr5Z3QoixK9lr/f5xEWmbaiDasd2qPg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785733834; c=relaxed/simple;
	bh=NCX4HlcgynnF1lhyv2tZkMnhqysaSrlxu3YJ/NEwQ6s=;
	h=To:Subject:From:Message-Id:Date; b=rKJNyLR8mWqIqyLDin6q6QXU1q5aMKErbRkqn2bo0axFOBX0GqCwn3Nqke95DDqFtb/Nvm3sIGRrnc8YtsJCROE1DboHyOXRoMwX5mPm8eQzk597wXWKTWr0KrNMcHaLf+Z/yiGyh0khv0tXpVerb9kfJafimWTLmZbifQOpDhY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h7iRneyJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h7iRneyJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E022BC2BCB9
	for <ddprobe@lists.linux.dev>; Mon,  3 Aug 2026 05:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785733833;
	bh=NCX4HlcgynnF1lhyv2tZkMnhqysaSrlxu3YJ/NEwQ6s=;
	h=To:Subject:From:Date:From;
	b=h7iRneyJQcwyoNu37w7u3PUo/Bc5qUMK8oZNhHz07pCq+kZxpHmxQabZJX55WqaoD
	 G67QVBICYEM0AJ4mIllv2uSFFumSBXoEhN9govsUUB9RxTfWZscSgdcqL+zJHmHtqz
	 DPsVKEEt7Eh0uO+7dGM1ScOyoC9ae0HYU+bBV0tpKk345khKwKwcgYC+yO/0kLN43u
	 3wKzj+mnAWW/evJaMEgbUjyaVtwc8oOdzQHm4WpSgd/PsEkh/pvZFy9IGiaX0PsF36
	 GIDf4Gbm5ak9KJgPsqeH7nR/f6+9bBNamQvDRAvRho/ESmlrZII5lw6K3Wqi7X4q16
	 qXJg8DryMgTqA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8C60C55162
	for <ddprobe@lists.linux.dev>; Mon,  3 Aug 2026 05:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178573383372.19149.4916162013465706597.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1ef685f728b6e659ee4637d1a0138b2018bd038c766ded3f3abe26d4b6ce05fb
Date: Mon, 03 Aug 2026 05:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785733833
