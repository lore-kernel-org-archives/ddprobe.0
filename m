Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D0752951A7
	for <ddprobe@lists.linux.dev>; Tue,  4 Nov 2025 08:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762243794; cv=none; b=AEprudkqtb0DM8HoWbFml5nX4zobRAnEY5ICWX71Bqjidm0wBS/PygprcrSwpxGqrsEKyN0X612KZPpWfZ50Cro2we4wdlGHdOc2mgbofTlVj6SBgOCxxgC1ov6RYb+lx8pA+Laz8l/OnMCKMX8pIr1DBPs+7dDWgY8MY9e+vzA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762243794; c=relaxed/simple;
	bh=+LypNHFjFmTIUckgIAB6nSOPzlyLTdBODCKuzWPNy/U=;
	h=To:Subject:From:Message-Id:Date; b=B3bzOzcINpDLARmTX89KCQcY52yPdh9HL5dUTfYKKtC7KesN7b1MfQjEySHYyXnFlqqk1748QCHQhmhHO9uzTClwaUQ8DXB5Cfgk0PqUijmog+UpiI3vGw3StQk6kTAKfyo9T8GoApwM1Kk/BtZyvrKaKKUdYnxhcMwch2Rcrfg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PsaCrhtz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PsaCrhtz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1702C4CEF7
	for <ddprobe@lists.linux.dev>; Tue,  4 Nov 2025 08:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762243793;
	bh=+LypNHFjFmTIUckgIAB6nSOPzlyLTdBODCKuzWPNy/U=;
	h=To:Subject:From:Date:From;
	b=PsaCrhtzNf5KMUO5FRAs9DiO8vDfhFuwSOixljWnaKw/wf870f8JXLbp467YEHny1
	 o1fr4dJaSAZbFSOgRF9ip0RjiJG82KfrHg6ymn4RE0oWAOden5tvONtwQZ41bpdC+s
	 GGqUSvkNdHEelNSRcrHxLdLNWwJT5b5D0jlev2H5vRdPWuIo/SX72oqaviHBmUcMv0
	 /THLMwS/lAQzG6cD8fDOcZTxUnzNi2VKB+JHEQvUdM203TMvWmFlTpwBOmjKMGtVdh
	 ew0wnET3mnpjGs3xj34jzGyG8IXD9W7S0M+8U6FGSizNcdEbTJWcdZrkunlbTYN29w
	 bqrG5Agtcq/Dw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91E66CCFA00
	for <ddprobe@lists.linux.dev>; Tue,  4 Nov 2025 08:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176224379358.14594.8987177028464730306.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c1a4527fffdd0aaaf37cb3240243ed35c1b6a927fc8a2fd3714b47ab32957548
Date: Tue, 04 Nov 2025 08:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762243793
