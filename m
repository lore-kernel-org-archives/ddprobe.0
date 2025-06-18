Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AD4B284B5A
	for <ddprobe@lists.linux.dev>; Wed, 18 Jun 2025 23:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750290594; cv=none; b=jH/rFMrCA0rbKAiz8TK7T5ej4ZO2yJMuscOlIfCaNzuH2kRMKn7CmqBj88TW+P5xVgnx9TnQrR9T5df5qdLD+huc/Pw/hFHFiKlipyHv5DYn78opCcQykN1ruET58GdA41OZMjxsKG8ji6bjeEGEzsPSKssQ1IHC5vS13DgxGFQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750290594; c=relaxed/simple;
	bh=ydMQC4M4mqxG13NbK/v3FqvkFWobsMifeWN1q4KTgfc=;
	h=To:Subject:From:Message-Id:Date; b=QFMJxKtnOyIIOeqE8HNbtkSecPlYTTj728UgBpXwA1GYreopWtVMGUdk8DIEKvJW3o8eEAZ4Io8AU6YozPQU1frsb5EToCGopdImOAa5yX/tGv5DOeudsICmP3YATjuFjYkepTozRUaP1y/cPx2CCQ+X0kIXF3ANd+J8fltxtvw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LhV9DHob; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LhV9DHob"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2DDFC4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 18 Jun 2025 23:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750290593;
	bh=ydMQC4M4mqxG13NbK/v3FqvkFWobsMifeWN1q4KTgfc=;
	h=To:Subject:From:Date:From;
	b=LhV9DHobnxtUlyp6/6ra6I1vWrylgFL4UZvsu5punOrIpizBiTVwLA7QQpGMTK4+W
	 r3G/soB8sv/9S6yOiDg6rh+eliCPSTh0GdMJVCkWpHnRu5C3RaA+F13KWh2kf2Otwk
	 OsbXc0qx3wmHvFp0DG+VD1br27RPJ9EiwRcQ+sZZlT46QluxY/0M5uu2lMEXpx9P6u
	 t06o+6/VAtJhZnw2R9fsIsI4zprLDFcBZG9NUdYqHscNJ/k1Jhz16EYdCerknqJnvZ
	 r7easvWJjXiT7xHcW9KoW2n/B76cE/+4IEvTmcjjOFVgagi6i0G8Nzu/fy6q3QaCfw
	 9qTh0RYHmtPtw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F9C1C7115A
	for <ddprobe@lists.linux.dev>; Wed, 18 Jun 2025 23:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175029059357.13667.4809019103087835656.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f7a595e64899b945a3dfa0f1a5a4e5410d6574c96780d84303148c42193f1ea1
Date: Wed, 18 Jun 2025 23:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750290593
