Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0469A23BF91
	for <ddprobe@lists.linux.dev>; Fri, 17 Oct 2025 10:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760698794; cv=none; b=liO/qOKI8QkpZiRjLb9u+7aSfFZaoWLMZtEfAAnAxTZNIHNhMBR648bi0dzC4ac2fkE+Nq9qC9NQUJg3RSE1YgMsiLMIh3xCQPVfA0soyAvJleSzINp/NurHpw4LLjUEMPK+dzbwKo1/Luv/4bt976JbxBMLRcFx2ykAA5ILZeg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760698794; c=relaxed/simple;
	bh=fxvGIRwNOE+p5vdwcibfi0bIUhlmq7r5K7ehhvkYcMs=;
	h=To:Subject:From:Message-Id:Date; b=YfguR0jSznfu4w6RXaQXDMpJxzGLD48tJ4z+EBbdvjupRyp5aEICykU/Tg6cjVRdXbF0VgsDC0g3C8+KxUDdUemlDuyssbb7d8My5uiml81/uVWP8o6/tb+Y5bAUkxYpkvF4kqI+X6C+8lkJmoRv3oIvZrUZjtXoFFxjFCzxKVM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LiwzapnJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LiwzapnJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A19B6C4CEE7
	for <ddprobe@lists.linux.dev>; Fri, 17 Oct 2025 10:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760698793;
	bh=fxvGIRwNOE+p5vdwcibfi0bIUhlmq7r5K7ehhvkYcMs=;
	h=To:Subject:From:Date:From;
	b=LiwzapnJ0n8OEZqA/ToocKG8jkQNMktQmK7ICESmsc8DCq0CQXPnjVXwQHiWUk8Pf
	 FyRogsxPthavZ/DCrj3RWu3C/YR0j9bhZ7lVCuy5fi1LRKV0xXfvFDpeEaSkkIiwUe
	 pT71URYIVWg5Cebpo+duy2x54zI5lMNp7oLB/hLiztsRgf6SUt+ogo2RN0d3d3o85q
	 5g2nqtCeOTVHdan/ok8MP3B/Y0S6qHUkIOu/FsjLKkAw8kfSjE31u+zVvIfLvvZFFk
	 fhZNLdtziL/CkT7fpQmky5IJnqOxreXScMMUePUdh7vXsZ+7iuiw6O33M7ieQLDPNq
	 T38BrfQveLYVA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EA2CCCD19A
	for <ddprobe@lists.linux.dev>; Fri, 17 Oct 2025 10:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176069879357.25860.15673435235464763166.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 560cae26186941e659912093dac8c5347bc83ceb6393abfee818e25f6c6c76ef
Date: Fri, 17 Oct 2025 10:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760698793
