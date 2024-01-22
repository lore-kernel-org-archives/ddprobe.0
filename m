Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EE1BC657AE
	for <ddprobe@lists.linux.dev>; Mon, 22 Jan 2024 17:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705944497; cv=none; b=p3NGQkggEUUClIndK+6Ad/ebATK0hQZ5uXP6zcH8tG7bGjdBdD/66fctD1zSLkZ5q05OE7/XINpT32Oo6D9y+V5S/eWpjdO2o+H9iQL45LzlWOE6QKyFnLa8wmDpiCnbP7H/iKAyjClZOsHRQRGrViDVaVOSheWcUstCnyF5i+A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705944497; c=relaxed/simple;
	bh=WV/XW0VUJ/5aWrTbr/cWdlIGZ4OajLBUL+FMTLMSoKQ=;
	h=To:Subject:From:Message-Id:Date; b=jvLCO0QDuRCFxG6s7yN7P6eG1zEYB7HmtObHIG5ALOYZnil7pRcyd+lSjppK/KUeU8aUcTljX2camFsW0ae9CIy7yS5XiHpgPtVDXTTHFV7KUmM1066X5agcnogrUl98c7jQ/rqrl6ZUWwbmszHJjNkEpcNPsUEFcufzWRd7IiA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y/UNxnTo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y/UNxnTo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 723CFC433C7
	for <ddprobe@lists.linux.dev>; Mon, 22 Jan 2024 17:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705944496;
	bh=WV/XW0VUJ/5aWrTbr/cWdlIGZ4OajLBUL+FMTLMSoKQ=;
	h=To:Subject:From:Date:From;
	b=Y/UNxnTo3XA4Xy84qAEQAbXpGdvJ/mU4kcURM81sKX3kZ9Qb4/tlbMs4QHHDQcNDG
	 ADAeHvxb0hkBfE+IR6UnB3rdqaJXK1K7a6L0tHtoEHXLdCzRDsA57d1iBf+sdlIz64
	 7DutYZp4iGmjReNPzccmCQQ3w0zivlKyI0fdkNVpq2Y+/H/XVtOy31qbEtGJWwinN/
	 rAg38RhQTrmpe+s0SHtOvxOKXIiW7g3d11BUUXI3BCkWy2Er2MTnnp9dwMbagVO6l5
	 paCmevddUaIZrh7WW6rhf2SKn0RZJGQtZSo8EIYZXLgZ/w6sazIITyjLLLJ6ZvRaBw
	 W+amHGqDxECLg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5B310C47DD9
	for <ddprobe@lists.linux.dev>; Mon, 22 Jan 2024 17:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170594449636.3310.17714924286136075804.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3c807d19238c4801cbe534d05885aff62e053db0ba5580ff6e35a4a33bef54e3
Date: Mon, 22 Jan 2024 17:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705944496
