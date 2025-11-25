Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A81213AD26
	for <ddprobe@lists.linux.dev>; Tue, 25 Nov 2025 03:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764042774; cv=none; b=qTODIDUYuRuBIRLdHpQSK048HgtBOgW1pymQBhPsD3yWfxTR1YjSI6i+nFyzpT4xdnQy0nz5ByOlzcbXe8gRE2fG2FuEX/3Al5iwUdhc4NxGnYyRXPGQQUmZadE+UYL9gXTHATzCTUVhMwcjTMloRRcPJmf93sXHJcBNUgcOt8Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764042774; c=relaxed/simple;
	bh=9+9SB7w8S8L/5bzcI6Yn9oh54MEVxXRoM+b/JSIoOrk=;
	h=To:Subject:From:Message-Id:Date; b=HZgIhNw97GiJ8fpJ28taJwGqfNF+Ck/uQ+1wVoGUslne4tzx+hDpDCP3AZHVcibOeQ6nZjzip7THP0slDSKrarv6va/vWacKyXW3+Y0+C8axhKzDP07HN1t63xcvZqFVpUc99rlK/mZsOQ0NL0sjGclFGdRPRtg1CenwAZKEc/I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NFlEuGS6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NFlEuGS6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC2BBC4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 25 Nov 2025 03:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764042773;
	bh=9+9SB7w8S8L/5bzcI6Yn9oh54MEVxXRoM+b/JSIoOrk=;
	h=To:Subject:From:Date:From;
	b=NFlEuGS6SCqxXsL7uvK4b3xsGV80mFa1yFg+BwfqUuTInPMLzhjL1EDvyivcbOxzK
	 d6X4w0x9y1QJnhecQi/X4WY58GCkMZ07jcraVXoLKLRda++lBUEGfoO+wUZoUObNKJ
	 ed/9MN0Oma4LZb6Mb3FbLj3Do+lto4LWChy5Ow3qr4XpzPxEBITN7o12ngnzbvTBfo
	 Dyo8ZXzXBdJZcT1wW7znW6xgzZKl6TsiHitgRtme0afLU0uWisMlRe8w3BLUwU2RQo
	 Fz9obNyIzIgHV3pM1aguw5y0dOLZGnPPtBPpuLRguFVob6Whm57MCikUdEfCMJ0tpI
	 PMHIoAplTzLPQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98D0FCFD370
	for <ddprobe@lists.linux.dev>; Tue, 25 Nov 2025 03:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176404277360.2694.14341693450712100580.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d99c3feb050c1f35a5ce04abba76a47aa4cc063b1d7550c33c8ab27ab5915abd
Date: Tue, 25 Nov 2025 03:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764042773
