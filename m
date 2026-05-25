Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A4B181E531
	for <ddprobe@lists.linux.dev>; Mon, 25 May 2026 01:02:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779670954; cv=none; b=AAuymo17wOohLUcdz09xOo5c2lYjkmxj0MFs7xtJbrmIGg3JFFFnZ+ZdLb3TMvQ2nGGfBeuPmuH+EZXseLhgNPaHf8xHTm6Y7ih6Prtso0K2TfduMwhvOIyXTzWn+yhFdwX7pp5vsitqfTaUNDlg49xKsupTskFr0Pa/etWrbU0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779670954; c=relaxed/simple;
	bh=OujhkGG4eGorOHVzi5UVHfUMUzYQZ/R3h0dkA29ZWV8=;
	h=To:Subject:From:Message-Id:Date; b=a1OLIYHvBMdHVcGI6MdZV1M/c/JFtRpmk2QvSmRNTDeIA+s1mVpU/J5BlytO0QLsvAk7fC8ktESomKDVF/vVlRPszDvoZatP42MCrJdWhdiWSKFtCeINpWcvbL3x2+eN4xaLEkj1IndvfEMi05MBpJRWc1VILlDoqBCDEnoqFe0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XcBipGyt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XcBipGyt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9813C2BCB4
	for <ddprobe@lists.linux.dev>; Mon, 25 May 2026 01:02:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779670953;
	bh=OujhkGG4eGorOHVzi5UVHfUMUzYQZ/R3h0dkA29ZWV8=;
	h=To:Subject:From:Date:From;
	b=XcBipGytmVbezlBsgdTlqfLGx7sgqAKEeO58bXV5xV812eyrt6racB50V6E1JLycB
	 tRK0Afq0nxvB4YXABFLlXObPw5E885YxVhZszhe2Fx9+eqCp45zjwNC+KRzn0T4d18
	 ihBiqgn7nNNSOPhLxAJfZhbe5xj1302UuTVCnd0SlModQEXH/6zYYnYSyLEMWy+9+p
	 NsXOdo6qVnWxoEaPEt3mrU7V0PRr7rxDA9oWrDHfACKxjC/5TS2RTQ0wO6ABe/1hac
	 WyonDKAh63zM7nhUjKCIAACp6hY3ZO2jW8pT5Rgq+eXlROby2+z0wCSx+0v+Bzd3Ue
	 uKf5/SbOUBW3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD4AECD4F54
	for <ddprobe@lists.linux.dev>; Mon, 25 May 2026 01:02:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177967095368.22731.3788281221786796234.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1d935cdc70516de3314eb0cbb31a4f1678c34fd80e740ebb45253d144e30b0bc
Date: Mon, 25 May 2026 01:02:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779670953
