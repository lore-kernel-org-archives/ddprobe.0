Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FD181F55F8
	for <ddprobe@lists.linux.dev>; Fri, 17 Jan 2025 07:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737099954; cv=none; b=tShakws8zky2xVT9qQYXIhKez/HluXWGve4U6EXe2rFbtyRC0egxDMkeI/7HbGN8nka3RkcPVDtkHNnTzK7h3VqCA/LoU7NXV4bXTaA+SKcx7JRicixUht8QCCpyb4glNBHN6IoO5z/3MG/1Hznv3v9pXushaVftIBVE6Nd32O8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737099954; c=relaxed/simple;
	bh=1098w3gYncCBESNuovn6zf3c8Rz9aJDHg58nFhOpXs8=;
	h=To:Subject:From:Message-Id:Date; b=P1cgW7B/CaW+YLvktYjEObMn/3Qz7PCnDgj8Lcj2JtfaxG8TJe25KafLy2kwkM21p5cnixHNz4QDR7fEgV/wlQ5fzRRFp6cR4Z0Z6b8luav/Km817vpsA6YAzuWr+qVrT3qXIzYyV9Dyark7Fp2yF3eEdDVJfZwP6EWgI9XnxM4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KCLIiasd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KCLIiasd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A59B4C4CEDD
	for <ddprobe@lists.linux.dev>; Fri, 17 Jan 2025 07:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737099953;
	bh=1098w3gYncCBESNuovn6zf3c8Rz9aJDHg58nFhOpXs8=;
	h=To:Subject:From:Date:From;
	b=KCLIiasdIme+/vV4sBBWGWesgkdsWo1B/3YUeyIctrMNFjqfTt9L3EYrsIEr7/Num
	 fC1fBmA3mZMJ93ESw1uYFZ0/fBoCsyj+W5fHbLspwndJXJYSo+N8nLvJLySCtoI/1C
	 yZa1fl+65cMPZpoX2xI58DJkiDOeo0GDTzlgtqbhe2x5SnkWY9Bp9sDj3m2jbu5Zkp
	 MRXbDnNPGJRJHGoicVbFdlIOsy9r5I+WHq+mXVofpn1gppB6jnPMeVX0okBsxVyjkM
	 CJacCxnv7tr4JEirJ8Bz0FcIL7eHqdyYQkYLX1GiZmatdM1m/ygwJsNeGalhYtOtlC
	 zMb0tHQygtVaQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 929F2C02185
	for <ddprobe@lists.linux.dev>; Fri, 17 Jan 2025 07:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173709995358.6683.4262679810807871092.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 26ddf97e278c544076b11eea5de4247e50e736ec7b47e71b3028a37c8ff05b58
Date: Fri, 17 Jan 2025 07:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737099953
