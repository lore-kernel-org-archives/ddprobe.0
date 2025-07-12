Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DA1E41DACA7
	for <ddprobe@lists.linux.dev>; Sat, 12 Jul 2025 14:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752331193; cv=none; b=a1F/RSZbEXBAq3QXiyVb6o/9h/ip8evrCXUbAPGipejGX8FJO6EhqMIppk4gmV0LuLQHLayY9YV/OBZlKUuLxgT1tUgyH9jqEzvBLIlPCyjnYJ8bBKcrnj6dw4oeNd3akG4/DI3gCZgFvnFJasYPkxw45O8mTFENhdlMyJU4HUA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752331193; c=relaxed/simple;
	bh=69oHYvaPKqseisKWun5IDjxn0xrfJtVLbEzZycfwSsY=;
	h=To:Subject:From:Message-Id:Date; b=JyRq351eMv+NlrGzNBWDX+i6JrW8ZrqPfCfjd7jpoTD7mJepZOmiusYzZ2HPqMqhSdS90gt7yhayR/2eTsheUPYYZRHwj1psj9b58M7k/ICIg4Z9uSm/5N28TPtt+l8eaJW8mjQjshAyWmoD/aPLV+VDBTd6O9MZF8xyxINaJtQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ab+aCFSZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ab+aCFSZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F80FC4CEEF
	for <ddprobe@lists.linux.dev>; Sat, 12 Jul 2025 14:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752331193;
	bh=69oHYvaPKqseisKWun5IDjxn0xrfJtVLbEzZycfwSsY=;
	h=To:Subject:From:Date:From;
	b=ab+aCFSZs6hggyPk+g4//9xsfUTEo+Lumkwbgfy0PrpovLm2q9AG8Pvpjpy056Wi1
	 QBpKbJcekWqLdUrmmDlWFLeBJvAg3dWolvmdQqLN1SzLQYdZRDW2phY6VnMchG0fx7
	 I7qghzD/f76+EF8GYcEbQMgxXDobbziJd8oMLkYcWaJvCRskodoc4wWM5/KTgOLoOK
	 ag4hNuTZk7spQCr3H5FHbm1pPCAdB6DHPG0esVJ5vzIgAnH7Y3u3SV7wUh8A0lq1W0
	 fKm3svhB6z7QFJKjT+uW1ZYnummTsrXD0I50FLuMZwQLqrzjz7/thM4Ul4SANYSOGe
	 RVYQIAmp2bsRw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ED42C83F10
	for <ddprobe@lists.linux.dev>; Sat, 12 Jul 2025 14:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175233119357.31558.15220340588960149200.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 625dc8a6fdcf6e4d716b3a6bb84709512532bf972744c72e832ffc0515309299
Date: Sat, 12 Jul 2025 14:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752331193
