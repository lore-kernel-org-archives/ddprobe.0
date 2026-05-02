Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 425941A680C
	for <ddprobe@lists.linux.dev>; Sat,  2 May 2026 03:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777693654; cv=none; b=hGBgrOCZcTBXPFnYt3736WoG+jjj6qZoQTRV9Z/uEUi+CbL6gQ29OvBjqLblti5Yxuve16bqg3tavokrgGCZMaYSGW20qiYiWSvGHvuWrIeaMAAeZj5jQIX0XO/j3QmmxQmYOx2hgli/C0HycCJDFWxe6Z9kw6rBbI2jucHDfN4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777693654; c=relaxed/simple;
	bh=ovR222jWMK+DmKPxFHuQoGphhOCzLaUkLSDonS75ENE=;
	h=To:Subject:From:Message-Id:Date; b=W+EN2R0OBRL3+M9r3pMg0P0QSggVAfLHizZngWs+hg2IrkxA7LPMgV71WSEby5oqO0HxpmYbLsh6dtVbvkFITWB6JGA23pX+62I+tXuZYxigjLf+4IDNadWRgDwDvPNIrCEhfnvPpcOCJz7JkOcSnD7fhUFv+IfiqbCcCN6ez9g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cEmouMCu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cEmouMCu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF018C19425
	for <ddprobe@lists.linux.dev>; Sat,  2 May 2026 03:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777693653;
	bh=ovR222jWMK+DmKPxFHuQoGphhOCzLaUkLSDonS75ENE=;
	h=To:Subject:From:Date:From;
	b=cEmouMCuMH10aY9P4tUC6sPpqPo8mZhbRwp1QDCoXDcgqqSD19dZAklu9tS6twZrA
	 pWj9AB6uvXhaboemIbHc5a/yR/MeY97zdzV4QgXd+53MybwpsbUo2xiEmDfvJmOuXz
	 cmZ3JFRu/FeYdbluhEMiJznhFCHbu/7LBxfaFS7XnuSpU/5ItpGiOGpHJgUHVlUTBg
	 AI2tB6ox/Wz2nm+3qDqmteBQRIyAYJwsAZTAR0tEn9+OVapvM+YsrpDmCQAFio5Baa
	 PgPgsu3aYtVtxx9PUKu6EL0Zt5bYeRmBzvuKEEg/CLMzVPSDeukRv+izOGOkZRhuFF
	 Ql+WNiOBwA4QQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACEECCD13DA
	for <ddprobe@lists.linux.dev>; Sat,  2 May 2026 03:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177769365368.19704.10939928077910079134.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d3620d40d331e407b882fdc93197f4e4704c9ecdc22192d088912c9c61efc9b7
Date: Sat, 02 May 2026 03:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777693653
