Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D88D83208
	for <ddprobe@lists.linux.dev>; Wed,  9 Jul 2025 02:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752029393; cv=none; b=Dv0GgCu4MOkHPGDPyfSaNVCYSyVxkA1Fyx7R3isXolirAkzd7SZZeQSDumpLooQo00SBhdRlIygBTanAE1znFpi1YhKBOu3ETgaIKsnbCxzqoJ6iikAatBBjfhS0t0OKy6fm+8HYTpfiXZ8DO/9+bPThBKhkRWSuRozlaVVAQqI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752029393; c=relaxed/simple;
	bh=R5xTNn01xw/XFbtOYMHAzVV/3C+4WXvTIRXAY7YnJR0=;
	h=To:Subject:From:Message-Id:Date; b=XGgZyMm5UuO2rW+b5/fRXUCuMzwJlqUiUYi2Krj/eE0LYBimrEpkayME3+xSYzHcPPpyXqeZPK0gWmYSXw/qYlb0LHb7QV5V0pc0yzPm58d8SRjkg3hj1BGmhZaAHS2f2T1FvrNAIoMt4sivBgJL9dP5wDQxBmTn1Z57NaUVXt4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J/K7Zan/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J/K7Zan/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A609DC4CEED
	for <ddprobe@lists.linux.dev>; Wed,  9 Jul 2025 02:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752029393;
	bh=R5xTNn01xw/XFbtOYMHAzVV/3C+4WXvTIRXAY7YnJR0=;
	h=To:Subject:From:Date:From;
	b=J/K7Zan/AuFW4ob0N1RQwWL4OiRQUl0Err9NEtcxq1B6n0Gs/pD7CgauZ6kw27Vjz
	 zOloPHnAHq6a6ZOxSiTnqrKCsWvWM/PPFXl8OMvT0GmsywSNREidb0hkGVuOA08ndM
	 vNdbldrizgt5HagQLGfI8zKCdvr0QQ+OdIlQRQjZRxBX/Vxxik2kd/4XFlyWQSPO5a
	 8lrqtcL7fvJT0d9b8eCx7aR4nKLsP2+1wHctauui2f8Ehuqx0x9ZPL985dwgkBFa6z
	 b6E4BtjYWCOaCo0dG+eawqjGkMdDoFeJyBN7VOfwiK00QxUbw2az5VU18HUrLy/fvO
	 9xHusARTVwAMw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94FC3C8303C
	for <ddprobe@lists.linux.dev>; Wed,  9 Jul 2025 02:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175202939357.29209.6095122351426929305.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 21e8f53b52370e4e643bcd9324ab1470301a653fb25e330200db7992cb3ab95e
Date: Wed, 09 Jul 2025 02:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752029393
