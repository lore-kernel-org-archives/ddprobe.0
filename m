Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 92BDD386541
	for <ddprobe@lists.linux.dev>; Sat,  3 Oct 2026 08:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791017434; cv=none; b=doWt0DsxCHUz3KzY4ETTUyFqafvEmeuy/FHnC8QO4Jztls1n4gNUDwhCVbgstkLsjDzpZSbyF96Il5c9F95249RhOI5CD4erkDAaeTp60cMkvNzda7uzc/7Aa3ZDVNc9FThqvQs1CoxCI2NA6V6CRNxiu4HlpK1ssQXGH0Vanr0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791017434; c=relaxed/simple;
	bh=+MH6DI8BpIj8hokBUiZVCRloM/JMU+KXMFyoNCVrfN4=;
	h=To:Subject:From:Message-Id:Date; b=RMBkFNCO1rooDNp55V8HtYiDrX7cphdV+VIO6Y2m6rU4Gmad+vehfUk77EgXSYRKp5GVCbKEBwSA7/0AA+0uFgelejNXt+xijmEIKvXmC2oLx3Ce2AATZxf7iD4h6tHcO1M/OW28oDRK+YzQ+P3I3oXBG7EZTPp5Pjxde+4om2M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QkHUvZG3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QkHUvZG3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFD54C2BCB9
	for <ddprobe@lists.linux.dev>; Sat,  3 Oct 2026 08:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791017433;
	bh=+MH6DI8BpIj8hokBUiZVCRloM/JMU+KXMFyoNCVrfN4=;
	h=To:Subject:From:Date:From;
	b=QkHUvZG3zT81eOF4gF24JsXBiMXfV6w+/YqyRk3qSOcejV2p8OMYRZvrqApfrocJA
	 jMZX9Z7JO7rkP95LqsNpODBPP0Md/wfBY4hKpq3SFf90F3kT6MuuD+8COAfjuyREDC
	 JuSDaEhMkZUcY5LSmAqZLw+wPYBxKb+cOm+2vh5HYWw3LhMx+xwW/QfD72l7g+GFw+
	 zWPgFEiYbdI4DHk7lUKQvSTzZt2Y097GTTwZV7iGW3DxI9eHkKSoQPGWBrj+8zeGUH
	 OQpgHFcPbJ3wPSBbVvaz5XBvs9/X9ZGFaIZvu9DN5LT5HJyy77KSiwIrkyugxeujuI
	 2veeN4PWYS1Jw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE79FCA5FDD
	for <ddprobe@lists.linux.dev>; Sat,  3 Oct 2026 08:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179101743369.1376.11606593799770861259.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 08821190afe32d58d11106d34ab4c1f2cf07f54341feed95e936f727acb4898b
Date: Sat, 03 Oct 2026 08:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791017433
