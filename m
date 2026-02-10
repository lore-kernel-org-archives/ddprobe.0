Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D202532A3FF
	for <ddprobe@lists.linux.dev>; Tue, 10 Feb 2026 20:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770755033; cv=none; b=cHUxE4aKh4sA565sZ2gTT8M2oMN+GaRIAlsYsfbeTh1XC83tl5uu4OG+nI5+dDDXC8PTbAJnBffSQZ1WsyN8qF5m+h9EoX5a2GocMnNoP1cDjcS6pdUgbMEcpoCm3ox5p5gMGLDWKa6FDTFYyat6zOg17yMAA02FNMsPNY4Y6lo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770755033; c=relaxed/simple;
	bh=3JxAolGXj8o4fM1jMYzCWHK592ZgszVlrhpBuJyyPk4=;
	h=To:Subject:From:Message-Id:Date; b=JDofKrLcdk31rGiydTz6b0dfBYnkdyz34in+5yIJnbIyxxVxWkmGmeoHY0wvGsRd6fLZTGdGtsqw/apYRSBkwJsCKkPF87Co9ZK7nQ+Fd7v9bWuCngQBHkF9YsOl2Hzyo2+sLuxQEonH5fp6lmRaORvBJfqxBY6KcgIUMSnJHNw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V7g169nR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V7g169nR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3EBAC116C6
	for <ddprobe@lists.linux.dev>; Tue, 10 Feb 2026 20:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770755033;
	bh=3JxAolGXj8o4fM1jMYzCWHK592ZgszVlrhpBuJyyPk4=;
	h=To:Subject:From:Date:From;
	b=V7g169nR+GxCMkO34TGJVOwUTVDGa1J9VRqrrSdZmegz9OHjSgpzUFJEubgng2fjY
	 U7vyPONP1U4gjT27+zCf7hO1mPhQfmEcXxTluq3bXQ9POjADz7fwyq6YK+JiO2NOtn
	 7fnRP1+Oc02jJB+Ri9KbmREvjmScJPIGbMk+pmvnN9TK5Rh0APXvTy3Mv/i32c2e8w
	 O+ALlQ4wuWXrMHhEadEtysmnAX/mhRBZcb8O07n3F/OYjlsYsNhy4Qf4yCCUQVokRT
	 uAutu1ha4WXvoq6zqNfKoNOPWQQgeYkYt7qApz6d0QWRtItxXn4cl5B+0eyGGxwpLJ
	 24ir5nN5Hqccg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1FBEEB2711
	for <ddprobe@lists.linux.dev>; Tue, 10 Feb 2026 20:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177075503361.24519.2983635464053684265.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5ac1013fd582ed9d675ce69adf1292343c6ee9cd8e53a90efdc4dcd8495d8929
Date: Tue, 10 Feb 2026 20:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770755033
