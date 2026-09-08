Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 61EDE18FC97
	for <ddprobe@lists.linux.dev>; Tue,  8 Sep 2026 02:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788832834; cv=none; b=iGM//9j68doIHPL9C4Zp5cIsD9IzKvqHv7DJXJy1GijmrxITv3eCnVhW/mepfM3j+CKUYlewdvM8obq1hol//GwapWZx8NWaGAVnVr1Z0X1lZPh50FaHEgiVRLrdg2eyKpKBmgQ+70zcqDwxlwSMiAT6kJHaqx55TGZBgAwaVEg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788832834; c=relaxed/simple;
	bh=ncZqG7TleZx5L5zjJzB4u+p6dOCRGcVNWewFP4vEntk=;
	h=To:Subject:From:Message-Id:Date; b=n23+WJeh2cblEsOIQPfviLJPefmNt6uM/pcxrER6ftKRYdTJVUuv/NOpwtBLeTz522V2PeQX+0IHIaX/x83aKUu3Zq9vWVkg1jlS9tGJJHL08EofrHmojTziYLUodlhpAkvfsdO4ZLnoSbvCQ91yN4mCwW5F1+Aa1xnDAYbQP64=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cH7mw1Ek; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cH7mw1Ek"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DDE88C2BCC7
	for <ddprobe@lists.linux.dev>; Tue,  8 Sep 2026 02:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788832833;
	bh=ncZqG7TleZx5L5zjJzB4u+p6dOCRGcVNWewFP4vEntk=;
	h=To:Subject:From:Date:From;
	b=cH7mw1EkutY+DXzYlC740J7EuwJKidGomBa/2fH2I9pm8UZ2ftjilq/Wngn/cdchb
	 snq4vSPKiOLpYZzUg1jX2JTK8lp7Y6tMpHpZgclV9WC4OcaVQVjwiY8LTmKhBJfGWP
	 0bzX04yETcbv0rkP6rw3+NkuKm7rRHzaGh7UUiY2LxMSrGwqvJKvHBaGJ1H+AURBBX
	 247P/vvnSpB7XOCqbI89VTv++u7HLWJrPaAI9nDrBcqqTW4YyF/FqocIL8Vjqs0Nwo
	 6uOsVxvr7aLXnB+Jwtq6WFLVAHJLzd5/4XNApAQHV6BYM9fGMyJXeoyv+yuU4XhtwE
	 82PVPV34lCWGg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9141C79F99
	for <ddprobe@lists.linux.dev>; Tue,  8 Sep 2026 02:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178883283374.24496.9300949530423146234.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9fe46a5281b2830b66f0c270f5bfa396ae498ee8318ab205436531944b2b98c7
Date: Tue, 08 Sep 2026 02:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788832833
