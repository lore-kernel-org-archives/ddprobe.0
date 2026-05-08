Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 248F21F63D9
	for <ddprobe@lists.linux.dev>; Fri,  8 May 2026 02:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778207854; cv=none; b=aS2KrSkLxZaHEJNaNJ0QqBQJwyPeXLLsac8G+D5fGOUg6nY/r4pUNqfrHz7mQjbA+QwWmwgRucRacfdmQyfcd931hvmnMsboX220YYFomFSEd60CIWL+TL99tnqgPcrmhNMbwhFmHXMNKE0w317SMaMe7hMdFDMC/pVL57VCBsU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778207854; c=relaxed/simple;
	bh=MSA7DL8VOQLy1XXkNuiTDpxY7jzd5U1ESRHlvv9WlRs=;
	h=To:Subject:From:Message-Id:Date; b=s3p5hUN5DCy3bcFEMuelseZyB/IdGo4f2D1A3bJI75gxUf2GqII/Y4BKv0nzOBGZknIMt0v+YOmWzOtmapS8pGZC65EazQ40h19eljPV0qUZLSI742Kfm3iwyzf/wz1xTluZntdGvIdw4riTpCtuUIGC7S0fM7f8II3lnaRq+bQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fxha0bgS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fxha0bgS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB4E3C2BCB2
	for <ddprobe@lists.linux.dev>; Fri,  8 May 2026 02:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778207853;
	bh=MSA7DL8VOQLy1XXkNuiTDpxY7jzd5U1ESRHlvv9WlRs=;
	h=To:Subject:From:Date:From;
	b=fxha0bgS3f7MYo+R71WkTYSkYscGTXFV4HGeCaHH407KF/gJqVXnFKMVwZQ/ZXx1X
	 HAO7JeHazdkz/MZ38T8D50mw8+j/2tsanP3MbI8BzyMJNMFxG7fQN/DnHNz5WhAQKj
	 4Di3GnD4rbfV+xZWZ0DDHCxTp+S96n+pyNXYN9L3hG1P84d9xdL75e30ZshBKFxoHw
	 gHaCIlADpYZ9hDOsCKRVrVd9WVJDdRjwfLwrDv2LnxIYxYjSrvVrHXvSWgv3ItPCom
	 3u2EFGayJ1p9oGBEVgxo+KpdH1fHJh9kvdlIDd+QbeNo+RvPoKivoBAgr4z+2nHZXO
	 z6UL+y2ioRJHw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA2EFCD3427
	for <ddprobe@lists.linux.dev>; Fri,  8 May 2026 02:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177820785368.6944.13042915551362721446.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8d79ef7c7d04f819ee5e31669aceea9378d4d73cb6a91064212a23a9167e241c
Date: Fri, 08 May 2026 02:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778207853
