Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20B66335C7
	for <ddprobe@lists.linux.dev>; Fri,  3 Oct 2025 01:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759454394; cv=none; b=vCjStnXoyVvSLwL8ymfoLobCrIt5Xc3rVguYmlTE3dTreSawH9s96qX9w35lnx2a2MFUL9k5L3PCEkYjSp9hYli/Z4WNkmB+ODodbQtWKweZWfYMV/TuZTDUjul4VN+Vnd+/rqNhLs7XsYO6UJ6/TbElZPch/mMsUwxygEXL0FI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759454394; c=relaxed/simple;
	bh=q0BwaLgisoSy43RvFICOXSByYJAnyyC5jkD8Jil7mHI=;
	h=To:Subject:From:Message-Id:Date; b=pM3a415l+LFYTw33eDpClh36lX0ASIVBag2wtS5orV8sMpAIV1yY+QtOuIlUlwqnkqkZrdt7eYW8Ec+idTAIzyBrP0KbILc1+aW+FEelwDf5I/Lo/CTx55NjOShr2W6MHsUQa5711AlMHT31rTXM89GiR1xYCQxpyl2lGDXq/xo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B+Gma0kV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B+Gma0kV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A245EC4CEF4
	for <ddprobe@lists.linux.dev>; Fri,  3 Oct 2025 01:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759454393;
	bh=q0BwaLgisoSy43RvFICOXSByYJAnyyC5jkD8Jil7mHI=;
	h=To:Subject:From:Date:From;
	b=B+Gma0kV6wI6Rh8PjEHNQ8MuNieDwvuivPMkBkr5sCIpiA4U2XGTRSu7iR1kRNfPF
	 ytbXMzEjCfpQ/NH0c4AoAgpTRj9QkNz6QqN9UyxP64ADmtVkTG8untf0O7lD2JMLTl
	 4G39PN9S2M8u++Vqbc+Id/Spyy14yI+0BA8uMZZ28RoVYiYw07bdscqlGIoWpbbTPW
	 j90YgvPSmOZoBBmhpbwY9lMYKkh2FLWJ0D1IZdWDoNr6Je/OCd/epYeV6qD0HWkFj7
	 NYtNigloVhIYjLL1RBYz0LqsWeVkFYtFXvImkwcNyt16K5uV90L4RPLW2cyL2MeCkc
	 5mku1kZKyAZfw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90055CAC5B0
	for <ddprobe@lists.linux.dev>; Fri,  3 Oct 2025 01:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175945439358.13736.9188338260528833530.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 33b2b56a8b66fb93f1e4862dce3314a989194cc53c041985a262899dd42f519c
Date: Fri, 03 Oct 2025 01:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759454393
