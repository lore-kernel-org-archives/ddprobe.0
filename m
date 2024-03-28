Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DDE3D620
	for <ddprobe@lists.linux.dev>; Thu, 28 Mar 2024 04:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711601897; cv=none; b=rDLhG32Rm7051Zam3GAxTUITDGicCl/t+XowitJOJsBEnCg/1F+GdI18EwcFc7pUzwGOHvuIncnujjX3jfX0yA93ucVE4ZPChAYrRnogaETOiTfF9Td4gF2xsf9Uy7RM8Ok9PXUyg1KcmM1Wm/dP0XNXWXoDEhe4seH/olJYNhs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711601897; c=relaxed/simple;
	bh=2pI+BWCs3Zm7K5HoAuvGUG+eIPkOmkaRq1wftob5N3Q=;
	h=To:Subject:From:Message-Id:Date; b=diXpeAUeE4mK5TWPIz2icbWy/eUSs6rhZy7pRlJsBaPU/EfmD/KM7XhKnULdLY/3bhymCDZDf6oeasYL4heI8mlF2yqlUEeCvzrKk8kfKbPYIXbUJWj80pBRXeTtzLw+YoTh44ugILevP63CcDee+YHafkzLH2liAav5ZXxPeDE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q2yQC0y2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q2yQC0y2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7B61FC433F1
	for <ddprobe@lists.linux.dev>; Thu, 28 Mar 2024 04:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711601896;
	bh=2pI+BWCs3Zm7K5HoAuvGUG+eIPkOmkaRq1wftob5N3Q=;
	h=To:Subject:From:Date:From;
	b=Q2yQC0y20G8xmS+clqETuxjHbUHylz2mElpitBIqH9+4/tMSFcX4KzV2ZEkKG7Ivh
	 p/Nqk9eteg35mgenAgxBl1h1P/ObeORLcEB3XZRyCH1BeIwh+VeJZtYBbgBCIDrNp3
	 /boKFDOamd3HRMPKA2r8K9UguNpp13oG2+3zULpcz+gKP0XJj5Wk24b5RzBu7uXKdq
	 VhlFxDQJkpZ++00j3QtBFppSeLvP8W6l3LCN9ubg4AU12qiMw6nMMQ0e0X4MRJBNsG
	 uMupx+0U1ed9awzcw66hdpIxFe/cyFVIzThlQE4oc346MmxV/EB13rG7zPVQ9LNIq2
	 8Kitjb9FQ8dFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 66424C54E64
	for <ddprobe@lists.linux.dev>; Thu, 28 Mar 2024 04:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171160189640.4807.3098265076292524581.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c967a960bd25b396ea8946638d6f0997dc85e122565e5eb43c6db9764107853a
Date: Thu, 28 Mar 2024 04:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1711601896
