Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 302FA2343C0
	for <ddprobe@lists.linux.dev>; Sun,  2 Nov 2025 06:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762066794; cv=none; b=rqlfwNbIfeaX4ILoRdwLYVCU51Qi75Q+GKZKRjT8rQl6SfTryyCgSN9BdwYnq5YsnQCAwvZmd+VUjUvtH5Kl1t5fFK64nMqNvsMGgXlHfWdvq6kvqAdJbd5fFFoURa5ffEQETby1CatKA6TZbAyGBBRRF83UO2XFNmiwP5RgHoc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762066794; c=relaxed/simple;
	bh=CKifk/sb5hg0o4KFXnN/QhhDxVriZ8XA6pofZgM+dpE=;
	h=To:Subject:From:Message-Id:Date; b=LA6ghNE3Br+bwR3Vvd1iluMcutc3bAin9ntl1SMk4LldeOq+imx8E78gzF3MJuuwoHvv1QYpTlepIVHpg7vUX+lawJJhgnRwzw5PpYoGUxrrsSE1BvZtUbuazXgjzNkz03HxbNPJVJwOLTBTF8tbk4s5zEWxsYOkbTFJvlYvzFs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L4g+6jBB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L4g+6jBB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B467CC4CEFB
	for <ddprobe@lists.linux.dev>; Sun,  2 Nov 2025 06:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762066793;
	bh=CKifk/sb5hg0o4KFXnN/QhhDxVriZ8XA6pofZgM+dpE=;
	h=To:Subject:From:Date:From;
	b=L4g+6jBBEkRkW2YCW1TDmqLcVxRNOqFFs3gUXl1Dsh5i6wK74OPCXJizZuJqYQE79
	 nHlg/NgsvCPNFOnzg3QRzhqhTkCp5R5HFp6T9hLTANTAFq/dNG1I0HPPKDFUElcboO
	 CST3RK6gD4qR7zeuSSkByn2RK99/8trzKApBkC93SXgnFktIVdNOMaYEelJXPc5nma
	 A0QSXYxp9smDeRbY8/ZqELcf42Hqqv9txz1LvMi3/a5BUYoqPnR3cM7b1Yc6kU5lTL
	 nwIncQf4z2WRyf3RVe1Ma4y3IqhCiXRlpoyW2wLTZy5lxBTMLuGsORQUmndEbTcpdO
	 1t2enzztFcN8g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BE57CCFA02
	for <ddprobe@lists.linux.dev>; Sun,  2 Nov 2025 06:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176206679361.2222.8529328319467171186.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d4181c4645b3ca8dcdd53fbabee8b6d0c867dc6ac12545ebbc393fcf6431760f
Date: Sun, 02 Nov 2025 06:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762066793
