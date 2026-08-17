Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7968F3BFAEB
	for <ddprobe@lists.linux.dev>; Mon, 17 Aug 2026 21:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787001034; cv=none; b=BI4NtySaqRRZybDRU1SaVcz6iC8z+VfX1cRAlPDY9oLP/4pNyHCE8Md/c2XE43iSyzpt3oi/m+s8T5uRUoUzpziMZSM0OggER0xGn0pgZuno6kM15odqUoZX3Fyvrya16M+W3py23467fpRZESOop7RqFOOfKzXuUXVPSIxaL2M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787001034; c=relaxed/simple;
	bh=TsZdAP8qNpJM/Lhgexa6zQAIj6mVk90rs8NKn1WVwxY=;
	h=To:Subject:From:Message-Id:Date; b=tZBbNiR2+/wPVbC5PZwEqRvyUCQrWB80e3/b0ob0HIwT6urtyyJXQOHybu8Ja5kaUkU1fflwFy3WjfTr8u1KLIV11uISVTBhq2BcHxYewXYi2CAcZ1aXhbbyUkuw1lBU5FG0JHNGLecY5+d+3XpRD5u65mnjip6mY1tcbj9Tr6I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dJoMSUz8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dJoMSUz8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E6E37C2BCF4
	for <ddprobe@lists.linux.dev>; Mon, 17 Aug 2026 21:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787001033;
	bh=TsZdAP8qNpJM/Lhgexa6zQAIj6mVk90rs8NKn1WVwxY=;
	h=To:Subject:From:Date:From;
	b=dJoMSUz8ae6RECnK+q7fDFHB8l3tfB1nYt5d4ea5uN4/8+4OuYvrZZZa0X5DthJMS
	 RW769L9uWCQrRPZG/HVXueMX8pjgrha8zhHx3ax8Z6ZlBu7sYJjD++wA8n56lvIBHn
	 pXdpfwbU9LLT6T9oHKkP6Da/53iCHpIEGG+4z4bkXYx3MwFblnXZ6jkF0oX3WdngKr
	 OohX2oKB0exoGBJOmtwmf8AZaS6B3//aHbAxtGfNIg3Jaz53Eokfp0BWfyMnwsxAbP
	 7P0axO8V2nh3uhMYCQugcxHY3VeATgUOExfGYmNczqIo9yMqbYb6X3ePFaIPZFbzow
	 1u7Vtcu3/U2vg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BCDADC5DF7D
	for <ddprobe@lists.linux.dev>; Mon, 17 Aug 2026 21:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178700103372.1557.2212082178483736804.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ea1cafffcb5e3fee0a36829545429886b9a037c9795df0b1bd9271a1a96d7695
Date: Mon, 17 Aug 2026 21:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787001033
