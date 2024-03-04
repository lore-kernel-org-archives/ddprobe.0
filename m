Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E484114013
	for <ddprobe@lists.linux.dev>; Mon,  4 Mar 2024 07:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709537897; cv=none; b=dmHssISxk07zKvm0uoFW3b6e7xjcqaqCBSU8fHIfz1nPbDYmgyy0vUX85zq+nmIFoL+1RUNpun1EQRa4T1nqFxli296ksJamKvcoC2dt8ULaRiVr1rv0ynDJ496EEhQRd7cmgCjPMSbuZ4jzxxwnxVETeCVpQrNTzYqyul8ce7Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709537897; c=relaxed/simple;
	bh=EwDr6AMCFNYgqyxT8n0kZKbZNa5VqWQzP49/UZUBgeM=;
	h=To:Subject:From:Message-Id:Date; b=ZR4RSP57CwHysaFVcVSFrDRo5cATKISutGynHGeXV60onM1VEl7bhQRgskzEoIVNzjg+NkA1p2b93IN7xOuun227luwptO08HkNt96P2Vokp7Evq+t9ks0zt7J0zUFtma1maZLn6lV70Is3NGQMrOJV0my5B0PSG4Pzj5DjjU5s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=btyvBA8U; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="btyvBA8U"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 75B0AC43390
	for <ddprobe@lists.linux.dev>; Mon,  4 Mar 2024 07:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1709537896;
	bh=EwDr6AMCFNYgqyxT8n0kZKbZNa5VqWQzP49/UZUBgeM=;
	h=To:Subject:From:Date:From;
	b=btyvBA8UbFHII5ktJXUVfmlAayOdsWeDdfjW9viXX5jtXP2rzqgqoriEy7ZtDNmQO
	 5+Dgkcd6hY4ROwYuXSmxSL1qJRazXqVoy1+p56ZV4vgjF9NBJe/o1tvuZoZ4hwyYra
	 69fvqtgUam8UDg7tOkOll4CK47phbjcVIVtw86gD2ZwGTZSfiYOsmeJbPnSdd+EDyB
	 /922M+lmikJuqdAv8Pp9E8ENkzTAZGfMMqLfns8RBFdpF7trlWDoa1D0hOX6dORITM
	 1cCIAWt9xI9v5IcMsFaKnGTfamyrBmZ0Jn0d8RB2ASnEmd7mq0OTZ8JYD8HTe+8dfB
	 k/EYsl9+T5Exw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5D52EC48BF6
	for <ddprobe@lists.linux.dev>; Mon,  4 Mar 2024 07:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170953789637.1899.17834987415507320948.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5abc6fefa8e7154767721eae4765444103367cf7f6b517d06404c0dc9a6de02d
Date: Mon, 04 Mar 2024 07:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1709537896
