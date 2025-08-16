Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11D8228C873
	for <ddprobe@lists.linux.dev>; Sat, 16 Aug 2025 14:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755353994; cv=none; b=GU+rREzi+hrG5CZZyDv3/I8YkXlEV0zxyUEtVDLzwMs6R2wioejzBc9/hWaTTjemJnckZhXw65DEbOHFMeQ4id58Wm02Wn3NYraQc5Ef9GdYAmWNuKtkRkD4ZqvIJIvcNa4bdLmD3JC9vKW2leIpU91NFPzyHU/fChlFNre+xl4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755353994; c=relaxed/simple;
	bh=zcnCFANOT/I0fDL39Knx+ao9c5Fb87eszSzzT0RwSiA=;
	h=To:Subject:From:Message-Id:Date; b=Tpj6Vty2iDQrm4DTOTm12Eyk1EW9GI3IJPrztvMbaqeVy6cyOetky5n4hoVvK0/6NvhveVV69fs2qpEg9aB2Lhms/WUdhDBK12rp55chpzqSrt27WII6OhSXR2HrT64nhb9Dxoa81OMLUuPmBtnPIaFVVWC5FgAQrvBu4o3DPEg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y8AcT79A; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y8AcT79A"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EBCFC4CEEF
	for <ddprobe@lists.linux.dev>; Sat, 16 Aug 2025 14:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755353993;
	bh=zcnCFANOT/I0fDL39Knx+ao9c5Fb87eszSzzT0RwSiA=;
	h=To:Subject:From:Date:From;
	b=Y8AcT79AE5A49nfLKRMwOe++NJ4AuiWh1bJ8dOvYB/xQKlLKwaxG/g6Ll/6YC95TN
	 LbANut+OoqkOh1OFEzH1hnS8xe17SOso3cWHfTaOBEw1i4UB9fdY6E38/BB/jb8uJG
	 UwTTtzkaf0OBT038ZEFzjtrNiyaKHZGnTrmTDJQ5ZFy4+Le4iB/OasUt0d1vp+RVk6
	 OLVpPPbfUp1tPqudx1fF4gqga+kR0jY5FbPzvVYHegDfJh/F0hSaxAvyRa1N5WHJZc
	 Xn+cZ++NkbQlt/ZjW6A/ayUcu4h3HbUvgLgfGe8JqKFDcABtCQf03F3My027pnFhKF
	 IblEy0XrsKCcw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9183FCA0EE6
	for <ddprobe@lists.linux.dev>; Sat, 16 Aug 2025 14:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175535399357.21850.1063662147873135796.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f5746f774d8e2ff0c4f3e0f689570c07c1770c1b9d4ccf186931c56d9597096c
Date: Sat, 16 Aug 2025 14:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755353993
