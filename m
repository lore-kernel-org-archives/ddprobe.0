Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D37AB2DECC6
	for <ddprobe@lists.linux.dev>; Tue,  7 Oct 2025 12:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759841393; cv=none; b=qUTR1n01KCM1/uEuylM44XyapelrAxWuTBBGUCnLGgRdXDjjQz9qm78i8dz0fuLt1G3/OENs1Y8/dZPBTwtMWPGI0D/A3w4hkVjccE89xrdz6XNP4SqnLTVKtd6VCP9O1XOckb4B33tZHNYupPV5MIKAIgxAgx6Qw2e5aVqEfHE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759841393; c=relaxed/simple;
	bh=0o3toRApThtXA1woztoEDnls3fOlu33rr8Z6ORfkbZ8=;
	h=To:Subject:From:Message-Id:Date; b=ChjIORBP75jmhcnsgv34Gnvyoj0vc1diCcVCM50Wlli8to0Vu+yR83lOcuGkssiD2oewxTuGw3e6s+Hmh1ubGNLkNRg4qkKR4VCqoXxUZmcyoZpfewaSPkeWji4Fh47FpP9dJpTPEpaTt/8kadMd7xIBqTD/8DMjcQ+ssYR6TP8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dHHGq87y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dHHGq87y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D44CC4CEF1
	for <ddprobe@lists.linux.dev>; Tue,  7 Oct 2025 12:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759841393;
	bh=0o3toRApThtXA1woztoEDnls3fOlu33rr8Z6ORfkbZ8=;
	h=To:Subject:From:Date:From;
	b=dHHGq87yOVU6XEmUTmMEskeUaT4ib9IBB8VedAppatZAG26KXqOodlljDJQhXepft
	 HlT4jSMinsKokWT4QD1wUzwcj8b4DMj6Y4tHrRkinmMaGqAXY/oI3qcb7VRqshUWGt
	 lpgxXFih1O+hBgpLL+kjX5vfiNi2qgh3hWhd2AcPeSOXlJrackc1YbUqVcC0B0R0Ah
	 lflTTAyJIV789PYZ6cemve4D11Tli19R3v90gfjeQqAerJHMkh0GvALLeXsY+jswQ9
	 YEw8YKjpqWhNjNs8Jg0gBMXvv16t8GLmKAA24DrmN0VoxTnAqtV8Lp6sGAsWlhWASk
	 NQs3XODPZrkPQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93907CCA472
	for <ddprobe@lists.linux.dev>; Tue,  7 Oct 2025 12:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175984139359.32583.1239291475639849861.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: da3f3769bd8bf7cfef9bfbe723992afbdb9104eb08702a4c23fb08f6cad2c250
Date: Tue, 07 Oct 2025 12:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759841393
