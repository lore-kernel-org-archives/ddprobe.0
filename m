Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 231F329C343
	for <ddprobe@lists.linux.dev>; Mon, 15 Sep 2025 20:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757968794; cv=none; b=ag43lf3dUcYwGARomGwCSUTnpj24Me2m5pifx9oTo7d0CLyLytTYrbCkh/402zv/aYIf4i+g0stz44bHxpNRI0cCD50AYirYS4UsWcib13oC8MuwUnXH1W/hUV/9zkkxtzk0v7EZbzQGQqPpzSuC1bfQCDj//xyRnNNuJw39YV0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757968794; c=relaxed/simple;
	bh=fHA33dafGmk603GqKZnwm9BC1LsYInRWEjDVocY8e9k=;
	h=To:Subject:From:Message-Id:Date; b=Z6hMcb4x4aiOjpKkEhsXf/NpCuJxUM4jkmbMhfi7ez+RfuP5JzT2EEVT1RBF0atsILbXTzZhhNA/Wi+FmDwR5tTecgh2q8ru8/Pda4zAjdV6BB88IB3wG8/5J30fWSCZaezx2MI2cES7uFXkfc3NlXoMejoxVlr2ufsDcWAUk68=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A83z9CKy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A83z9CKy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A56F7C4CEF7
	for <ddprobe@lists.linux.dev>; Mon, 15 Sep 2025 20:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757968793;
	bh=fHA33dafGmk603GqKZnwm9BC1LsYInRWEjDVocY8e9k=;
	h=To:Subject:From:Date:From;
	b=A83z9CKyPd1dln64G++Eh3LV9sI9E0snqjV3v4sBhh313MDVywfQP45QJXzi6Ytfe
	 xvRmorxqf1d1WlbHgmRgX2W//2U8MrD6SYtkoSWDvudCS6SO6I6QPJSRYnreEoDPNg
	 JQHhC/VwSS4jXJo69npSqY7KtP7pbEr/n7RiHtP4xfqF5I+fowZbPIUREDcnC0ZgRu
	 5ZhrYEX82X/Anic98b3vbyI0YXLC3k3LDhf5pq8w5ajao34Hg2RAya3i8fiXQpqSUG
	 aV47icbhneJk3033YgFrI391AgZ8De7Hb3zNqc5UMCSZ1pkzFiaOf33/2dBCSV0gRh
	 fp/6q/OWhoorw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 928F5CAC597
	for <ddprobe@lists.linux.dev>; Mon, 15 Sep 2025 20:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175796879358.31063.6526641240166887593.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 468493cfeac52eaa2646443a572597b323cfaea640afb600f4c778702ec289a2
Date: Mon, 15 Sep 2025 20:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757968793
