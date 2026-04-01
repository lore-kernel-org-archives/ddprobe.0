Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CB31384233
	for <ddprobe@lists.linux.dev>; Wed,  1 Apr 2026 20:45:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775076334; cv=none; b=B6a7ubkLpncfOmwJ2Ts/cVh3J69YJ0H8VXpvGI9AifO2VFGnnXLma6rMb+sPhnBbQhnm9ThtItCc/LqCHHjhvXZa3ysN4lvTBafQf8Nj79pk3tUrx/fXwIwV39NZ+gi2KxYt9Lo5MKwamDtqsLqqUTHgTsFVoofbpGS7No5+oCU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775076334; c=relaxed/simple;
	bh=Ug4JR5vqoKwVxTMtLyPH9hAOvKSH32VHvMHXdW4vnkE=;
	h=To:Subject:From:Message-Id:Date; b=CAOvLA1BikdFvLs/tVUpiJhj7VPQG0XTZ6u3mfOgEs8+cElTpYkL958zFT/CGyYyDzvoSFbAk/OnwqrV7g37cHyErZg+89XymH1AC7pI53W9uTwrWt+0iSV4vrq4QECIlpQpHzq8y9kivyjeY38nKBY6aly2RiZBdtfBg7V9qGg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bnQZx/w6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bnQZx/w6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB0B6C4CEF7
	for <ddprobe@lists.linux.dev>; Wed,  1 Apr 2026 20:45:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775076333;
	bh=Ug4JR5vqoKwVxTMtLyPH9hAOvKSH32VHvMHXdW4vnkE=;
	h=To:Subject:From:Date:From;
	b=bnQZx/w6IbbuasNyhixeTiyv6rueMJn4tjzJwP80CtZLkbWUJyngAivyxyTvqx46H
	 z/iFrDf1UEgf3q+ClZJBrtFoJv2cNgOOUtFxR55er0ri2cDMVD+eu4HhnxdbuE5V+N
	 YEzUlgRp/mMmHvPuP5PBWYvm8Eg6YYHpNCbKAWztQHOs2gbVotuFqF3tpUWwchkinG
	 J8g4hgRj+LrzYbnG66FQtGqAo2bt6wRP7t8bVKlL/5OMKOGjv7cNfNHqO5SOaq1Iuv
	 A996ECOCueRkpjLcGbwbwmlk8hayI/+KkCoJDHKX8oRj3SIPiqdH91gte+DwYwNZWj
	 JsLF0azQtSsLg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA9DB10FCAD2
	for <ddprobe@lists.linux.dev>; Wed,  1 Apr 2026 20:45:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177507633369.8587.17149432171818080835.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e1172ccd86487df883aba8a814a5744fc7c71dae8b2dd47d542335b58bf0af7d
Date: Wed, 01 Apr 2026 20:45:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775076333
