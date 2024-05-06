Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 72C2D748F
	for <ddprobe@lists.linux.dev>; Mon,  6 May 2024 12:32:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714998743; cv=none; b=RuC4NN+oEeKwn1nGM8qaVgeQsxJNzGSnrhuyooCBU7Q97yiqdckeIRW6vuql+D5mTzQibf6hrs4lQBF6dkA+ieBFt7xHUMmhbApzIK4JmKtYwCUf1BU4cNbcw2UIxjKWd6biyyahFNNbHB1LSOWT0dBN2pkt4dS595DUp2+uZ2w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714998743; c=relaxed/simple;
	bh=o1sqwGF+xOZVu9Nn/NKbLZPqaOpQX26I+48SeYzXHcM=;
	h=To:Subject:From:Message-Id:Date; b=meS184Bv2ovnjlSoC6k0FZdoy/ERtOWBOhe+uDjNARuLK0iaVpxiuUadawwT3Zh3gX2yGlseAkvNZ9kwgniph2xYdXK6j6tnPNwmVj1ghgKqhte82MqclyNl2DGZjMKatbxvzJ2HUtCCk1gYw3CmwPLxBdXbyhrTWymc8BrxqSw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K5kzT0Rm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K5kzT0Rm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EC5C9C116B1
	for <ddprobe@lists.linux.dev>; Mon,  6 May 2024 12:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714998743;
	bh=o1sqwGF+xOZVu9Nn/NKbLZPqaOpQX26I+48SeYzXHcM=;
	h=To:Subject:From:Date:From;
	b=K5kzT0RmFRpSah4m9qUZNgHt5+RT+r7Taqkg6vDcWquglT4VaL6wVRCa6JMqlhS9F
	 mW0sh7mqX3tnZ3jpWeVflt/BPkDZrn51A6SEKD4JMNnE6EMfHeIItdlK22Y6Azb6lv
	 Kt9Cjz8Ukgv0Oqm03BZ0IMYcT3ERAWbWSSgerEwtgrFYsRp+WQ+77eCX6sdLf8vadh
	 9vF4ydO2itQ5DXCaB8LChyyKsns5wnlIMt3miLg7oeal0NVGQnbGrlXuER76S7dgAH
	 h3LytapEcJ7t1G5C68KL49E2sJx3ubUYAxOt1xMsRT8gNp28WvSuYJvPuMlaW0iOhZ
	 0OI+/2MEBtr8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D2D31C10F16
	for <ddprobe@lists.linux.dev>; Mon,  6 May 2024 12:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171499874281.27865.14228241616565718587.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6b9c40cd1bda1393c92112d7c186ba4bca59427772b99552bc6fdf2f2cc436e6
Date: Mon, 06 May 2024 12:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714998742
