Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B1D128EA
	for <ddprobe@lists.linux.dev>; Sun, 22 Jun 2025 15:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750607994; cv=none; b=Kx14uQ/8poaWpGCISC00MZIhqHUt4zkzBDtbBT4lQvIELEjAKUi9vmf5nXaSowgRfiy2Gxwuv2H0ag3ZVdlJha/NVakXaBThCOHY+ZjY+3zbykqzH1z8VSLh3LVw8XiGJEO433ZgzGfvZhau28PT/NblOF8/aLM9nqKEFCF9QWM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750607994; c=relaxed/simple;
	bh=KW20kB0ufgAKTfvOC/SiV6aqzMX/3YfkRUKZBNbujMI=;
	h=To:Subject:From:Message-Id:Date; b=it/q7Dw0DxlJezCl/LDJ2bGvEaL/mHg+4y0GqQw1UlQ5DgQzc5IufVPNvM6i9Gneo2iQwH+yq2EsDZpAS0EtgCXAxDXFMqGUIwqDmnNPiSA17WwWOlOMdW0rA7O7D+ujxq4Uiz+8AptKtIIWUop+ZAl6Ui0HiH8H5SVJACYoKa4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RvwoAV7s; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RvwoAV7s"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A82DAC4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 22 Jun 2025 15:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750607993;
	bh=KW20kB0ufgAKTfvOC/SiV6aqzMX/3YfkRUKZBNbujMI=;
	h=To:Subject:From:Date:From;
	b=RvwoAV7sIgBAoJpTx43Fd0Put4cObWGvSnH8+SEG0jzHHMrHbdDBtus/6OaqnMzwC
	 8B3piQbss+xbIA//IfX9Ksxe0StgRb4z6PEImYsvJWJrv7e2WnEMssz4I4dG9HCpBi
	 xoN5XemkrObNgkW4AERGQU/7stR0DNs83cT+kffYmYk9LEBgB7ghUQCmDUWiIKfr3D
	 O8tVfE7h1KwJuMAB+MvNlhlwKKWAYUytAMrNPRIdqzmg2/AhCnGf8jHqISGf/nEnZ9
	 d2Ncu5rN9bRPEjOdBA12AwjvIUFeafvuGmIs0250gt9A4YFBwIZaIrAfZmHcgOJ37M
	 zb/qzVk/5AmIQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94B19C7115A
	for <ddprobe@lists.linux.dev>; Sun, 22 Jun 2025 15:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175060799357.11989.13868293944451056792.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bc249e8f60ecd2a56f44d94bd0cb67c61afc092e5e04ec019fb6ce81bcbc2735
Date: Sun, 22 Jun 2025 15:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750607993
