Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A7A428F7
	for <ddprobe@lists.linux.dev>; Sat, 12 Oct 2024 00:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728693354; cv=none; b=YcPLyBD5h5IQtWRyME0h0NF45uO5JZ9mB0z2Ol/Rk1ZdqnWxP2I+y7AKdJqgt6B9S9TZaJERZOw9RJMhmEXjJtdZTn4wjINFDlKwsETnR386F9WT2+qgQdjGwZFsaeGr+r/Np7L6wYb1DHqzd+4GDFQvz3urafZvbL+l5eG/+0g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728693354; c=relaxed/simple;
	bh=/20xY3+IeHUzG7YSz4QgvGS4xgPPZQxWrfhyfFrTGgg=;
	h=To:Subject:From:Message-Id:Date; b=CsjM2CqUCqMVDzBfGHsmzCeaDjq+g4uTuc+RFo5OdfaY1psqtD9tr6nMY1vZQE5r9+Dd1VQz0OvjAeGT5f0h7VuyaJV2pg359gWcagVn6fyWzoNkz0mk2QL1a2QV1x5cFo4nCWMSX65ZoJlEZDjmH2mL0w9kHl4SgDgwabMBu7g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DdEBpfyC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DdEBpfyC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2C6CC4CEC3
	for <ddprobe@lists.linux.dev>; Sat, 12 Oct 2024 00:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728693353;
	bh=/20xY3+IeHUzG7YSz4QgvGS4xgPPZQxWrfhyfFrTGgg=;
	h=To:Subject:From:Date:From;
	b=DdEBpfyComDJVOft9AfzKmQakH1LnxJkeStRZ8lRFyd0UP3bsIdpiR+Onjxx29kqL
	 tMH7zladaojdx+cN8tsVkHzT9kduyqIDalP1+Md8LfShXmlvi4j4dX8XPJZMyen6U6
	 9RjpKVdlNZ0bxLUOnFQmGdiFZ4Egj2vWnEQa7iWwLy6toJttdUeJxJDlWdeBcTKDKx
	 zE/mg7R/VazuKnvPP3IZOVjiK1Y43W1E98Dd6UF3T2vc1XcC1+VOWHDIq8hJumNMO3
	 xbCcDq+Odjlb5nsX98qgA74lKHpkZc6yJ2Fl7czLYU2v/BlXshRKBp5FsVmea0cpQD
	 4tRbRco/WlbVw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E636CFD347
	for <ddprobe@lists.linux.dev>; Sat, 12 Oct 2024 00:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172869335363.22428.16242248456565629407.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2c1795b98992545aad79b879c14606f566c375158a6a18c124cf53f23cc877b2
Date: Sat, 12 Oct 2024 00:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728693353
