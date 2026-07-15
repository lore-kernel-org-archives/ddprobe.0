Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 500D2480DED
	for <ddprobe@lists.linux.dev>; Wed, 15 Jul 2026 15:48:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784130514; cv=none; b=DRLS8uX9Gc5OL5SCPGj+bRefcG7RrbTpY+7faB6/UYNiO2WUYeADIRbicoSEeg22/Lf9Jpks8w4AUmOWewxJQ60nMnug5Sj2ELk23UpU3/T4uAQUkMeeJwrdUl+sffe/SjwozBRzZCQOd3Iesnwn37RjoQPwH5aNb+EHFIWgJRA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784130514; c=relaxed/simple;
	bh=AJRxwUoIJTmLc3t7LElIFFRxWKWo9EzUWGAItkg2l1Q=;
	h=To:Subject:From:Message-Id:Date; b=Ijo+yxlzE+s1rnLf8MnwT1tVmat5X0XwPBUgvBhnYR11SVPDzWGqQxZJ28awbsu2wP+DhWrIs2Lr0nO3Fk13V2haiNNsu04/hRMTG9I4RBiJC6li500fJsyx7oM74fqtEM17imLbEo5kfgvX4NO0G8p44s2LliANOBM3gE8iebo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D/ObfLji; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D/ObfLji"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB4B3C19425
	for <ddprobe@lists.linux.dev>; Wed, 15 Jul 2026 15:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784130513;
	bh=AJRxwUoIJTmLc3t7LElIFFRxWKWo9EzUWGAItkg2l1Q=;
	h=To:Subject:From:Date:From;
	b=D/ObfLjip7cyGYPA/JNNnV9LQRv5sPt6ah/KKJH6vXrekKVwDeVE844lzlUvPOwzQ
	 egAdmr3MO4/Qr5CVBynO1H4fKLePhAZCewqs1zd2Iou9cUlBe7301YjxewZBaN3pxb
	 ORODpUZ5N3vUvpw/9AFdtbuRW8M3tgaiW9atD10+MUld5De/D1e7wMhPAEqkRo4RMQ
	 2NKbTmxyJsCz4iNQn4hDHmKaquCh8IO6hynAp6O1lQYym47BtpEDaeUHUyXg98oKFj
	 RV4kn4tuHGpSaMM3QwsnE92rSXomh9W3f0nMCoZVKUjNjIvJ2BcFoYqNy+PHX0B1iD
	 7v52xhkkXfggw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8F96C44508
	for <ddprobe@lists.linux.dev>; Wed, 15 Jul 2026 15:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178413051368.22443.1956976591251942248.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cb92cd41e58e3f8b87e84ec08db7a9741d9a053a860fc590dacab60733370a21
Date: Wed, 15 Jul 2026 15:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784130513
