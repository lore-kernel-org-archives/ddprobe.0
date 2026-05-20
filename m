Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6875E37EFE0
	for <ddprobe@lists.linux.dev>; Wed, 20 May 2026 21:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779312034; cv=none; b=S5nuNdH/Jn+1zlTeqjtn9UTlWcT0WmZsLIhQTDnvWkiCnrMJiNPHwtdz4Rjglb705wFqE8wAbgolQaKV4vYptSPJbdtCWoYCCBSUKUyw90OFHvM4Dz1WYCcTbbNYQtZX0FyWivjq4ge4CLS830IZcWZHHsLPxXtPXTc26FFbCWo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779312034; c=relaxed/simple;
	bh=jCr6xs+XGqW0FDYYaEzVPojiViKXx+HQpgZ4afo2tyI=;
	h=To:Subject:From:Message-Id:Date; b=d977NAWbH9M5dY36CZt37L29+F6v3kRQD8nTbjz3QmfHsqtORsAf7hoZFs/Gwl/Ra6QtVlR1US3mbM+yjim/8ZYbi409mms6mcv5xAt2Dvwrwj9Et9bjFTTxtUNtbgLBAeON8rzcUD8VIBQNsKAJvhiNycVYO2bq+LF+IU7w3Ic=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BYh82J6S; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BYh82J6S"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EC469C2BCB0
	for <ddprobe@lists.linux.dev>; Wed, 20 May 2026 21:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779312034;
	bh=jCr6xs+XGqW0FDYYaEzVPojiViKXx+HQpgZ4afo2tyI=;
	h=To:Subject:From:Date:From;
	b=BYh82J6SnBALPhUYPEU0wDi1dZigeSYlLGUVMoHlBlr9PoqjeHgAx47rCQvpgf9wM
	 7c1cZvBGWHeNNg3MiVoPjI1sUpg+aBEYfT2+zE93deGxYgrkl6faD22ugjdpoomUD4
	 jh5B3kuOeCjcpmBt3f2djxIS4UVjCa1aBHoowTlboPZiL35ANt2Wbom+gSDImISijc
	 Jln+iCWeT2WoNvJxVAHsMf9+1peHNJCcgOeYmyI1ODb1hxvCM6VI2ExumUVahGBYCR
	 mDQVDT9oWgq6iwAd++6ft0JAwzBTZUpY4Tsg0wd2uQRjW124F75332bYvKAB+J/BID
	 CA4IkT09OE1cg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C8DE6CD4F54
	for <ddprobe@lists.linux.dev>; Wed, 20 May 2026 21:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177931203378.30961.3990111356240845625.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5a33426c88ad36934c962fdfd2cd288033e1402d143c2e79a74aefb97874f7a4
Date: Wed, 20 May 2026 21:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779312033
