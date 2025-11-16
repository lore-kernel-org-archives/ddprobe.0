Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D105224AF3
	for <ddprobe@lists.linux.dev>; Sun, 16 Nov 2025 07:40:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763278854; cv=none; b=M9v2DyeQcfoXKTaxyiki88Ni68DSh8wptVz5ncjhq6gbYjZNPYS3yyMi8oKAW8854dMpN+eJDWm4dGiucyXpX6GRuvtWzZcr5SIr+TKyd38c0J3B+3UFI8olxIGw0GTcs2ipzvO4+zb5aC4jrypOWNLeddc6M/HReCpo1W0+Z64=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763278854; c=relaxed/simple;
	bh=HcWoY4PRqVu3VlvHzpTK6Q3IZUKC7Dz7Cy52muPAsHI=;
	h=To:Subject:From:Message-Id:Date; b=RVYj30HnwUd6ULe1FrXyTkU2gHBuf8VdM7COgKk0i3BVLpAgyq/C4xOYyIUFI6fmpubFckKwKBBRrQ7uipK4N9GNoorX7W4vRz1lTmRXSKc7tpY68GFqZxEU2mH8Ny+7hkcwVc2CIcJ1C50ciKiIt4hGwvXmNhF1WxXqZhNWLgA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZnOaGvOI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZnOaGvOI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABB1EC4CEF1
	for <ddprobe@lists.linux.dev>; Sun, 16 Nov 2025 07:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763278853;
	bh=HcWoY4PRqVu3VlvHzpTK6Q3IZUKC7Dz7Cy52muPAsHI=;
	h=To:Subject:From:Date:From;
	b=ZnOaGvOItDiJfOncrstf4vAt2j/RHidWFCrVXpvSLF48gcN0sqNCCamo2G80XdHEx
	 I9NQ1Msq3s1ZlPDF7QzDglXRUxQ8dGIM4RPsOgWtOndBfcZoarFq/t29AryzoeKjR/
	 X9ECBRxuTo+Rkw/fHJ/pw2M6Bf4feuKap5WHyM02rZzE6eQaSxSVvidrrW/bglqh+u
	 0klfnAxwplWnohzaAkkrPPRYan2UDqzQYLZwN5A2iVK11TfAaxcy19lIIwzlJI/KNm
	 15y1xnyAOkfP1jKL/F5Li5PKdMhJ50HGePWE2T8R5kXYeZY0XX1WwtDeU4EbVfGCjA
	 +73BFxTmmItCw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A04A4CD4F3E
	for <ddprobe@lists.linux.dev>; Sun, 16 Nov 2025 07:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176327885358.3776.6443469497284124353.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 878b3990d37a06b77bdaa02100a83f8ec32625ba8575398df3b45a8e951a4e21
Date: Sun, 16 Nov 2025 07:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763278853
