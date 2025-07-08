Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AACE2DE1E0
	for <ddprobe@lists.linux.dev>; Tue,  8 Jul 2025 13:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751980794; cv=none; b=EsxoAfALcxplTpeSt+ZJgOc1gglJFsA9v1PfsZPDDYnxek3Ko+lgbtXZfiWwyQ/H62lJp902qrdMj7G3c425Btr0tOAPli8oKkR0PcdxJOVcvgPP0UKHxwfSXeyX/iwXUWtFCKo5EhCHG9M6wTMCJ0mkgf23Ow4BiQydDR6tLcc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751980794; c=relaxed/simple;
	bh=eiWhSGEVSX2vuAEYApXwdd0O3IIijmyVJMQi06vxrTI=;
	h=To:Subject:From:Message-Id:Date; b=K8W0tYuy2HI77mK8GdyjPzPGYvGHvxWPjaAgBVif/AdBH2JESLlHdd34buXk8SPBv86BvaBcC/6Zy6npn9R1JKNYoLRlyLEsI+HjIWP6arobjYAs32Z+CsPfpbHbw9J0LPb77+zEPxhtnyJ2cHvw6oQvAK1ruEjx1jbJny4BOVE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vE++SL5s; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vE++SL5s"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EB3AC4CEF0
	for <ddprobe@lists.linux.dev>; Tue,  8 Jul 2025 13:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751980793;
	bh=eiWhSGEVSX2vuAEYApXwdd0O3IIijmyVJMQi06vxrTI=;
	h=To:Subject:From:Date:From;
	b=vE++SL5sMaQ6UT2ajaTn6DJBtlGrGWEdf7e8+2RcnTNby/Z/yPioZDkkz8gOCKaNo
	 UjOrOqoOjyGvwnqyf2oC2B76l5+x0LIt4IOyjkZymWGJoUUSnQ9kKBH9K9+vTD7/re
	 nKybg4PpVhxxDQnLVPy6OyMfjaHqV1EiM/gsOg0SjImpK4jtBLQ0dekvARWJ+XPV7E
	 vjOYBZlIEv5u2NnKvugc7LMAjfCpv64GjSV4op7CHdrtRYUyV3zclQqSahIHxO1rQk
	 x4Gxp46SKPmkBy4RSw/o8yqjcd5kTygVhggrgvLvnIBUm1f9gMnk3Onq5vNBM5/qte
	 XaEMKlKhwKTUQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F14CC8303C
	for <ddprobe@lists.linux.dev>; Tue,  8 Jul 2025 13:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175198079357.16286.14887026409213269461.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6f2cd76f1c08f54f7fe09620ade08656db2f28b6a13b9d27f52734fde33118d5
Date: Tue, 08 Jul 2025 13:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751980793
