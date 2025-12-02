Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C49DE2E62D0
	for <ddprobe@lists.linux.dev>; Tue,  2 Dec 2025 21:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764709973; cv=none; b=dOFAGTFADZNvYcYVpCVrAGJreDsNQ4dsCmsEFEyyvu868u7hO9tLKQD5cqi9s/GolJEBa/F02ok6A3IEIMcJ8c918mJRo+Wjz6fbVUajZktPPYJ7W8CofEmTin2jJxZpmmp3OMQHXFCDOJQUfFAnH4ijvHRqNUM1WlT096+WcxQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764709973; c=relaxed/simple;
	bh=0kXBMZ3vPQnsCqvtTyfCHb21qL5R7dSUHlM+TY3EC+M=;
	h=To:Subject:From:Message-Id:Date; b=D+PfOFLqt918kYaPsqxjKyQg1u13Hm3NQjO5nl2LlKwAcmxLzHPTyNQn2Cfval61laTeDJb60NhCpq+S7uTmPKLsZhXglEwv2i7b6YEUGOyfnvKortuX0j31V6h6m7EpvB/gwcT0ZmghQfx9IitSsCFq10/XZ3fLzZwL34nKbSY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GcpMyjO4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GcpMyjO4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2F66C4CEF1
	for <ddprobe@lists.linux.dev>; Tue,  2 Dec 2025 21:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764709973;
	bh=0kXBMZ3vPQnsCqvtTyfCHb21qL5R7dSUHlM+TY3EC+M=;
	h=To:Subject:From:Date:From;
	b=GcpMyjO4U6e5xsILa2CbKF41wKq8Vp6C6AARYjXSGLSY138Ytf8GE+RYI1Cf4I2RA
	 ryUFsPWCrA9ECnQhihBE6XhZv3OAP4pO/MBHiqpKaToM+Lus2xHvxJkXBENxSYMoiY
	 qx326yELaOW6bCWjgrNpH9NDVXEoUX1YFotwsDDPyNHp2u9HteFJWu0Z0EZDtU2eNF
	 67tQehb2Vfd1+3PC+y87+/MEU0FH8i560AQyp87MSIlqNTHWW2eMWSt1VZCgZ0fckl
	 CNzyMyfk5mftS4Fyk3Da6vEiz/J9Hycxrodw5JwRipujjL/h2hJgRNeiVUTnk3zc/y
	 7TrJr792VeaKg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 920FBD12673
	for <ddprobe@lists.linux.dev>; Tue,  2 Dec 2025 21:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176470997358.21966.11906161505175575289.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cb890be79a529e43daaa4c60d1604f2c472039e78c3a46fdd6d882696c9b750b
Date: Tue, 02 Dec 2025 21:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764709973
