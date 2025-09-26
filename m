Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DCFEE305958
	for <ddprobe@lists.linux.dev>; Fri, 26 Sep 2025 20:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758920393; cv=none; b=oSifjeFTGUceqtQS531RoGghRXqPGD5j6sXY1DemivIJq6AInsHlG/wUCiiHly5OEwPU/8axPYjddzN6/vC60W9NuXBeb888MH6DxKtp3pQeIBCWfZ/ZAu53tiN2VLY1SknaNYsyZyiX3e8C4Bo1uOihF69TRUC0BYsSFsvtmF4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758920393; c=relaxed/simple;
	bh=GIzn8cd3MQpo+2IU4WD1iiH0a9W4dCOJf2X/NguYjNw=;
	h=To:Subject:From:Message-Id:Date; b=UqXpuOef79X3fAkpovhONaX1Fv112BfN9zpg/jQzXLeLHwWgoXZpjpxSYAt+L8OCQH08N378LLrpIJkyN6aYuqSUl0MR/ZDlbqO6r0FJ6kHtlfuIyD74GAV0bsxmkeUrym1/RJGKHl9Ysn1Um0Nj6Nx/xZ0pqvfmOsfHjSaK2bQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=S7E4LQx3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="S7E4LQx3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB0CAC4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 26 Sep 2025 20:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758920393;
	bh=GIzn8cd3MQpo+2IU4WD1iiH0a9W4dCOJf2X/NguYjNw=;
	h=To:Subject:From:Date:From;
	b=S7E4LQx3ZuO41GDadihc6yl26/Zal27XQEHytsPegbNZ/K7+zZwEdxOL0V3nYfiRv
	 n0NtR5Jqq48VxaZwMuiAkvXZ8RwbWyg0WCDhXrqV0ostLfEXDRGZCuP3NdTUCsLbA9
	 p5pGTp6nN2AV4WjrD5aAV2CU/EQv4sdZn0yBz1btKJR18XQwt+U+piWF4J5PBn6pg6
	 AgEmsLG4c/O4O9kP8We3CDZ4sdq3GOxccjgTEtmNy8XSudL5J3Uq3MNsnmvfUe576p
	 ZOvZAQIS2Na16aHA3JM9FgjN/HPdel2jgrNN/GFigFMdOcrJrfRQptOLVjtDLoeUUL
	 SDqkGrEyXHByA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B5C8CAC5B8
	for <ddprobe@lists.linux.dev>; Fri, 26 Sep 2025 20:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175892039362.1173.14576747427345010083.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fc45923167b01f2957032d7fd3afee7bd5aebac8f5f19664b906c9c541266d74
Date: Fri, 26 Sep 2025 20:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758920393
