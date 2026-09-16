Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7FCF349B478
	for <ddprobe@lists.linux.dev>; Wed, 16 Sep 2026 16:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789576234; cv=none; b=MwPu7anLGm+H7Aq5dszURBpQNoKQQ0uMthJEWs9FVtPKeT4gBgWHGRKibN7zjNESD1iiJnb5ur3H85dYhUDlFj17xIG0RVanotZ2sX5z503OlB+R8iOvqxbpAXO7qnPw7dd+KYg/8MxvOaTmpJWab2P4MTK3WnJrrZAM5rx1C28=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789576234; c=relaxed/simple;
	bh=3ci3+HK918fEupNRc7Ku9nKG5FL8Yq+lqLFKaFI52xs=;
	h=To:Subject:From:Message-Id:Date; b=YDl820X/TnzmeKs/d8GmpSift+lniJqTWP+ot11ZRx4x7pX7WZ7k2XYq49PJWAGdSLBMn8OPclhgQFvKOUXVnlZWGaFDY35SphzN7BSg7kpcntDCeCnxMHK2HbPBrKbaZRuMD2WW5+v0vlawPXQzSE6pe9evwZxgcJaZZ5Lxe/A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C3LGwRH+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C3LGwRH+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE946C2BCB3
	for <ddprobe@lists.linux.dev>; Wed, 16 Sep 2026 16:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789576233;
	bh=3ci3+HK918fEupNRc7Ku9nKG5FL8Yq+lqLFKaFI52xs=;
	h=To:Subject:From:Date:From;
	b=C3LGwRH+y3YUqv9k5GCmR5mVP7+zFyiFuodo62jSZIwxXzLM0Dz+UMDbKvvk3aNWt
	 UZqzyZZv55muHdhZeP3+/mD9FZOhFBfmShnHtb0kN++AI4+e3Fjv4C/kt8+sD6iTVt
	 462lSOzJLwoVgikVKBLY1mMkKYNEKGKkh0EhGgRzUYBvJco2PTbCA2t7SdDrKbL38e
	 R3S+8fe0mvaOKAzDHfgTC/4d1M5Q/oz86vo0K0juMqvsip+PEy9M9NLZfh7LY6XcJZ
	 Uh1shMuR5Pvsy00DVnUHy6yTegvJjALoqIYxlIymfSmgGSc1vz6nzzWj41ditaG5yp
	 /jq0yuRwOvmdw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADEF9C982D2
	for <ddprobe@lists.linux.dev>; Wed, 16 Sep 2026 16:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178957623370.19872.14475937096332125654.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e94facde1abffd4002caa48458618500331de718bdc5f469c70ba6d4615c9e9b
Date: Wed, 16 Sep 2026 16:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789576233
