Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0BC0B3557FA
	for <ddprobe@lists.linux.dev>; Thu, 30 Oct 2025 11:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761823794; cv=none; b=S3gI+doFyCO5O3rlJWuytLQLsLr6NfjxttKQtPeeZFqGxwyyhDx53gdtsApxdMQWOW3tUhpxV/cjIe7Kom73CZdH5bKCqYN4/gTaHo0I5NNzojrvlwYAbvmSeWmnlLOILzi4hl4/UQviqKuMcZuq3iWSAS+mczi/eIhRgxVluh0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761823794; c=relaxed/simple;
	bh=zjsWqpm7zP9YJFoh17uCmsVxuynErgKRSLiMNSRYZaI=;
	h=To:Subject:From:Message-Id:Date; b=hC9tB39nRbz/BAIZ5DZiEzhOScGiyF+QO0io3acEjoXSRFQbMCIdj/oQ1iA89jOaPuysRIDdh0dpeB/CYcbGzUgl/XcqN1FUC/8VAryf1FDacRvtg/KGA6LQiFKmEY4UI3ufG8pNOHaBa5/SuXxeP77iBnT2Y04N4nreycN8ED0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BIc63Lbc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BIc63Lbc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1553C4CEFF
	for <ddprobe@lists.linux.dev>; Thu, 30 Oct 2025 11:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761823793;
	bh=zjsWqpm7zP9YJFoh17uCmsVxuynErgKRSLiMNSRYZaI=;
	h=To:Subject:From:Date:From;
	b=BIc63Lbcjkb/j+8vraXODXlcJkLyo34G4sn9/TW/CbSlGjaD9jwmUNyBj/PvQm+FL
	 QzsDAUXFMJciwPdWDj9oW65uON8Bii+OdmaNMOYNrYXA93gDyHqwvpidYpQTELFtk3
	 HYELt31aF/OqwwoPB8uVILdYGKfI5H5NfzmWu7T4vp+/6ooQ4wc41IMTmsfSe9zZPn
	 IVsklvpOpoC7a6xSDfY1G/6Cwz5TWbT4F/URH0yhx7xytHTlNsI8YavM4kGBOLUPPG
	 U7mUdnHbSRqmPFAiJbfwiVSdWThmnzhZml58nvsi0B3GH50QBRlXT4L7Yb76Jh724y
	 PmYwv/NpTncWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90EA1CCF9F0
	for <ddprobe@lists.linux.dev>; Thu, 30 Oct 2025 11:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176182379358.25406.16936767542005314299.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 003ee71d1dda64a2b621932cb2d9d9c106c1d02bd1d1ff1ccddf5fc7993a5406
Date: Thu, 30 Oct 2025 11:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761823793
