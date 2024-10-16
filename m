Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25BC920514C
	for <ddprobe@lists.linux.dev>; Wed, 16 Oct 2024 11:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729079154; cv=none; b=A8tDq9py1K1jLY60gwpX5gFfMZfCWI1jAKzWF1NkQ3CnaZAgzfG3Is9V5n79iYoAQPS4vDknY7QUq+25y/E0KIAxy/Np5Yb0ZGoOpCVLcmZNzPJM3njOtEQed8CH3SpI/Fl34LmaUNHywRwBsYWTop1eC2ktzLL2OPXdL/nW2w4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729079154; c=relaxed/simple;
	bh=Bhsz5v3jvhM2yaw7kCE+DAbLxTB9c+9QeCfu6UxxIEY=;
	h=To:Subject:From:Message-Id:Date; b=ssjFKoMf9l02NeFZpUJ7LaaCHrPk/x6nd0Iy0ySXLvedNxvvX6+OE/GkjEvZgPSo9AKgzYewy1GWjF7HKPAZe5PtaqPMuUtZYkL4g4uhXhON88vSaTyN9/fvFoRKel0CZ2xxkwvjlfZRuM/5dTntp3l5htFJ2jDTgQwAc+XzkYU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NsxNX9RY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NsxNX9RY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7C65C4CED1
	for <ddprobe@lists.linux.dev>; Wed, 16 Oct 2024 11:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729079153;
	bh=Bhsz5v3jvhM2yaw7kCE+DAbLxTB9c+9QeCfu6UxxIEY=;
	h=To:Subject:From:Date:From;
	b=NsxNX9RY+0ujy8OfzswzHZNPgBquRd7YmaELhOTDEfKIXHW13YHeXq9fWrGZ0G66v
	 O9RPM7ToNZ4dc09VRi7D3uB/OkMICUo/0fopJrUKWUs45IbKQji5gxuvaKl/8/y/b+
	 6pn+k/pfTKRCqsgUSDzDt01Fuwm+8UF6YAnP5bMJHanjBDtzwYhf3KbFlWhpVEuvcc
	 6fUx1lrkGNFOvCwv2H+ZG4eh5KvVr4m/MDAzUBSANg6S4SGTG2m7k+sKCrHoajEBbM
	 NTxe1FpwaFlk6qu9tmQMeuUcnfYgmnfrNbMQAv9OnWMQWfjtyu1NstSucwThlT6yIH
	 +KX8Kg5ScpI6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9394DD1AD48
	for <ddprobe@lists.linux.dev>; Wed, 16 Oct 2024 11:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172907915359.27478.13064634582637432720.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 65740ed19ee46bd5a7ba240dac484df45ea765f24378d534e908199e630037e7
Date: Wed, 16 Oct 2024 11:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729079153
