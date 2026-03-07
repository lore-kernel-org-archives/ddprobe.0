Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DD7A18787A
	for <ddprobe@lists.linux.dev>; Sat,  7 Mar 2026 04:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772856294; cv=none; b=tPPmpLXyPRSx5ZtyypQPTC6LnwlMVaGlTZ2rZEPHuz6kiHAw+IdtEkrsi6gPZAZGkDjxMQH9ecISYqn37p4cm4Ky8jbR4Gv2Hjcc3Z5aqt5mwdUzOd9OHWsD7B8FSv7QwW2LrjgNwVJ/pQ6BE81Sfwh2YHcvR3M9ByKkdwDlSDs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772856294; c=relaxed/simple;
	bh=nuv7OJLEMXn88Cx16rgTYIZ62C1ExFHrQPtB8VdIUCI=;
	h=To:Subject:From:Message-Id:Date; b=b5DN7Bn4pmaA3pXJ0gJHyC+DuwxwYpxhluLQLRcVYLeM8h4h1xJVWwCfACjKyFZQrNX6htlFtr7FnTF1ysTahz6UycK34NwiIwzB6YjLsjAeEa8XDQ1zI2gXKtUhK9c3bQ+rlOYSBlETC3dywdwH+0x63Om3abBpuWn+vR5hyIk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MQsjusgW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MQsjusgW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6B64C19422
	for <ddprobe@lists.linux.dev>; Sat,  7 Mar 2026 04:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772856293;
	bh=nuv7OJLEMXn88Cx16rgTYIZ62C1ExFHrQPtB8VdIUCI=;
	h=To:Subject:From:Date:From;
	b=MQsjusgWwS13KYQiHqVxWeVKjmObul8+4L6pusH3r2vpPZ3A6hdyNPhuhfTCZjPN0
	 IDwi5FxxgLEWW13ul6sArkjDNFGEHrDUAaABSheFVRelfURHmvfpnl6PwDsz0a9zeN
	 7KIDlivBLDyayCFWT5XO2h0wTH0yNM/D+STsLFMwUfqizyt7OrE7W7U0OP/ZbUfmNE
	 6mQRfhXz4AV8ayC4qo8Ivu8Oua3KmOPg9NYe0TJ6mXUZPqYfVA3fJvgqoBU0GXXrNx
	 OJaLZ91J6/bDb9VQeeLeVb4gc2lnOXeMoiSMkrmBox3XIATf37MdErWuwjHWsixEDL
	 A2K8+7HmCELeQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BFDFFC9EC0
	for <ddprobe@lists.linux.dev>; Sat,  7 Mar 2026 04:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177285629362.25629.13662974167600598084.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8e619026c130cf17c774f1c078c263dfbfc97f1687199aad1693e4a61de74b7b
Date: Sat, 07 Mar 2026 04:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772856293
