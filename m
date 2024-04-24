Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D47816C86A
	for <ddprobe@lists.linux.dev>; Wed, 24 Apr 2024 17:21:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713979283; cv=none; b=sHcbx6nKZND2sEPKgLJVvzAQKXwqhcw/wkbMr1+fbs4eUKjlOElpE4JbatfcPJxr/LILYs5TwNRpu9QMwRaiVVw6dVq0H/O12ci4MKZTsjxTvoG4ojMXM/fcXOS3Aw9NJz3TxZKKQRHQcpoHkFXb7Sr9xLVE87dhrqWpsbGadAc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713979283; c=relaxed/simple;
	bh=hOfIeR60H7aPeWTQfxKacmkjee/1cwGUY/B5eVaukMc=;
	h=To:Subject:From:Message-Id:Date; b=ia0/EhEo/uaghFB0KVWRoUb6P36BeY4gIU8kMhgPWdkNbzY30487H/fuoWHi2saVSPLaMmAFFE24IAqq6R5PrWooH9hwR5JDaNA8dLXrT1oot/+xOId83qLxx077U1bWqFPsj1hSmYwMnMYrQsuHTJVEgxZ5RyfzC0FurA+bhFU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OSWr/8Lp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OSWr/8Lp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E5359C113CD
	for <ddprobe@lists.linux.dev>; Wed, 24 Apr 2024 17:21:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713979282;
	bh=hOfIeR60H7aPeWTQfxKacmkjee/1cwGUY/B5eVaukMc=;
	h=To:Subject:From:Date:From;
	b=OSWr/8LphWSR3ymWBdv4tkg/+md8h/EGDbLhBN56vWV3gTLnuxApzapS91TGqc6g8
	 zeNm6/hX0wOYwu54cVWthGlf9bwonrDz7gHfMvnp4qRiW9PO0lM0cF94FhSCJrNyFc
	 fT5EFehKm6uIzgpR0xMZvSHMp5MI+L20GzoTXago30LPfTG7+3H/X4bqrbcA57Xq/Y
	 vRwx4Vuez0kFlFx2EO1VAHZW84q2Xhj7MA0P2MrSZ+myXLz0Vqn584tJnHh1W1z7XB
	 x9cIoI+5d/J8mTQYv0pgTK4o32UzUOk1zuZ57HM4XPgbz1OTbaXXwlLcmNr+C+ttUQ
	 8G+p4WHx50xeQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D2F9BC4345F
	for <ddprobe@lists.linux.dev>; Wed, 24 Apr 2024 17:21:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171397928285.25893.9166549761930933895.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4f4fa4449498b8d76d87db3c4dcbe044f99db2003dbcd02ced778fce0859dbad
Date: Wed, 24 Apr 2024 17:21:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713979282
