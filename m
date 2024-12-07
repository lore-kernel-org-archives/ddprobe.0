Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41C062E406
	for <ddprobe@lists.linux.dev>; Sat,  7 Dec 2024 08:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733559354; cv=none; b=sNcaOaPbh0W42TXREC2qAMoUJc59C6wAIiygRqxIb1Qch5ehmGB20YcNsLSx0aoJGxxyUy6w9zjePBqniQ/wyc5ZIKJI6GnPuRBjhckgj54hCJynDBH+vAwNUDniefgtlPYFtOK+vt/pWwY0qNDqH7MlVVXvECnlZvVf21Exeb8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733559354; c=relaxed/simple;
	bh=WoRcUM9QWdouYNuZx8dONFZgR3rwOsf69XZ1eOWWsNM=;
	h=To:Subject:From:Message-Id:Date; b=cQSaIUmxTxh/cUWPa5CgfTyb3QXdfDtFXXz1Mh2JLl8qtw2+cDeWqLWyKe33QwhL1fhBrtjjlhjd/gOydopCukifRXAOsrJ8lm07LTfO1QUBPMumvw48ibEC+09xDlppylnYSIDx+Zy9fA/38CBMOmKk41L02QfTqd1ZduPuubk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kHS3r830; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kHS3r830"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B020DC4CECD
	for <ddprobe@lists.linux.dev>; Sat,  7 Dec 2024 08:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733559353;
	bh=WoRcUM9QWdouYNuZx8dONFZgR3rwOsf69XZ1eOWWsNM=;
	h=To:Subject:From:Date:From;
	b=kHS3r830vrG4hD41GRme29pVbQja5J7Hjfvi5ZH7CF2pzUIS0m1G91tX9un8A3L2i
	 5ZxxHTqoz1RioLNOyNtjBz35+IJrpdSivUU87+QO5Mub1uLA6Gyh0Obw/XtOIpNGGO
	 v5BWSjHEv0FxWu5G0yvvzPn+VQPNOd/DM5LBTc4I2Xb86QhJ7nTLlNrhv389XbxlS4
	 TC6Pgakr4bXUF4W36YGPZ3ah1XcjbfAY5ounvNgdhX/bqxOtnTGwQER1r28odXSL6y
	 20Zb9UO2U/Bmcmt7EpX/gjUX7DxDfeWMjEq4XS8hL85GYFVOasrKPO8fSmNRU/FIxi
	 tDHDrAO5SVkeA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98594E7717B
	for <ddprobe@lists.linux.dev>; Sat,  7 Dec 2024 08:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173355935360.9550.9452216519657966288.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 69123afb34e3cf598115d3790050b6987ed56b9ca4cd30ce309c44b6200a8d6c
Date: Sat, 07 Dec 2024 08:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733559353
