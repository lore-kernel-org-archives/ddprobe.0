Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F7382773DE
	for <ddprobe@lists.linux.dev>; Sat, 27 Jun 2026 23:18:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782602314; cv=none; b=CGNvrvDU+oYCWH5DlfyvzK+imP7tvxMAKXUaw1KS4S2s5/IWtgudIxUigKw7v3x3BkujX6U/U/BkkG70WYSQLGukZk/YznEaJSBcu/F5AtF8ANeJZCOmKTW8GBwNFPWG9S6tv6VJ0uhhfVVVBqrdHSBSYxWNbySdCkV5zo1x538=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782602314; c=relaxed/simple;
	bh=WKPrG51vsLiAdeVeHwF38xPPo73R+vz72EGpX1gN9xU=;
	h=To:Subject:From:Message-Id:Date; b=ZpiVwxvhXJYRMCSO3jw0HHWpdjNNnULFOAeFJdwdT0T9utSwxXbTovbVNy687u9NHsgVC8MJK2lPowUSyljo0ZV0Y5N+upYmqTFauwcjaD67OC/Ple2CFYxi9/1d8QfaE5jTKHkAC20btCjPqgA68EA2QzaYQScrAlRGmRDYI+Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jNQsMMAB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jNQsMMAB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2344C2BCB3
	for <ddprobe@lists.linux.dev>; Sat, 27 Jun 2026 23:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782602313;
	bh=WKPrG51vsLiAdeVeHwF38xPPo73R+vz72EGpX1gN9xU=;
	h=To:Subject:From:Date:From;
	b=jNQsMMABDSaX9k/QAFGjLSf46Rn5qpUaSSaDbijPDg/TNdoy7oulNu7uA1VThASm7
	 hdWbc3+wxr4g0v/66dVfuGBADKyHQpCnL9h7AdJXkuKvDadZdok4TsyFDjPI4E22Rg
	 goN16OGSrrcXRXlEoe/K3V5c+B6kR8KOFpnGuK9r2jNVCdNQx54/b5Q6UilMsTnN/v
	 exfkG/VwSjwOjhuoyYri4LzhRasn40Jm6JEBc07QNxnTLsAuGsfflsk61daZ/wOuIH
	 Pp7Cwf1AHhfhjQgUUQwRB5/9yH9gG9CliTdfstYtVU57vCFgSqtolIUXBDptSkYLX9
	 u3lOyn1+5nm4g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3C80C43458
	for <ddprobe@lists.linux.dev>; Sat, 27 Jun 2026 23:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178260231369.12406.701819552806484795.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 362a7d9fd0c7e23b9c348a1476bb7fbc30df02023fe65207ce39d50b933147f0
Date: Sat, 27 Jun 2026 23:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782602313
