Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52F5810A3B
	for <ddprobe@lists.linux.dev>; Fri, 19 Apr 2024 20:50:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713559823; cv=none; b=DDvmBaYYkv1ETUhHdcQ6UfUPLxBKSX7FQ73bmj2dLzzrzaoCKTNIDiuLTQfPzQMFVgFWu+XGiZt5bfRTKJbTbu392pDEiYMWcpwhhZEDmwCpKxJndb/g/zLBt8arC14YMyoO1Yt+S13cGepGBT/m5pnM2LWzYhxrKxINJOpEGfo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713559823; c=relaxed/simple;
	bh=gtNqVyYCiKmTdBDL5W6XypaXJisfyX6b+iVOvUtjrgE=;
	h=To:Subject:From:Message-Id:Date; b=lA2mcgf5nGo8zxkuxTHv/k/xNTUP9NOOm/wXbpO2+4ZRk4K8tnVrk2QERP3JjU+H0kB/oWIONwzAlfAxPG1uBA4pkh64EiJATEHN1NYcO+1kLEjC8L8z9ssiOO5pVOLWU7HTsXBlxVHsVuPm1XVKdTvuRGhd4gPnNIGx2Wpy88E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N5w0kQ6d; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N5w0kQ6d"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE75DC072AA
	for <ddprobe@lists.linux.dev>; Fri, 19 Apr 2024 20:50:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713559822;
	bh=gtNqVyYCiKmTdBDL5W6XypaXJisfyX6b+iVOvUtjrgE=;
	h=To:Subject:From:Date:From;
	b=N5w0kQ6dGhQJWs85VnNVlS6nINRhIj3xvlkjGJpyECq8FkB2qTIBRJnfj8W1fufe6
	 qUmC1+Onz9hRhFv/6pKtH2eRV152l9aO060d+330vzCRMopyNHuGTTecm0FINaLBnJ
	 fJYT7cx08ArigRP6vGlMA2h9grNcEr70Zua/Gk2uAqXwZh4qQGruQQAXztg3J/jlGj
	 M9l3hMQIIGiF7/+3XtVnVfWyEL5IgOMDMlD8r6QnQsGZMcTdBk5aKx7rftcN1AWetT
	 JYXV1e0i4yduLf519+jAzce7TVlhoHuFFhJ3B875yTt4T1sv3HZcGG940jHhErb/QR
	 i2ashjJZ8sALg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C8C68C4345F
	for <ddprobe@lists.linux.dev>; Fri, 19 Apr 2024 20:50:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171355982280.7840.16756976338460572198.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8827ace254e2efcfa60c9c3c2d9e3aa506fb12a4fa5e91e5aff0d4c0d00a22da
Date: Fri, 19 Apr 2024 20:50:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713559822
