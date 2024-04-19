Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A680112D1E8
	for <ddprobe@lists.linux.dev>; Fri, 19 Apr 2024 16:00:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713542423; cv=none; b=dJI1IoRDsYvVDGI6ZTuqJcaSEE2mkio6OcfbrG9hDTZh49G69xbWAWepELvOhURdY3UyVP89teAjz1QUHBWBzspsAj5WMn0b/coLk/ZGf2CsIKhGO8e/8SprychGOIAGncmpqRjH5t1FFsQqjxBSNJ52mnzss73NqctUFE0O6+4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713542423; c=relaxed/simple;
	bh=OtZ/lS7Y9YYtM5JR0k6dxypIl/+Ylh+Ig1ovvZrNtHk=;
	h=To:Subject:From:Message-Id:Date; b=KIor0ShoKAV5pQxj7u8WBswiLD7e1U6/ndCLPgAnwMsbj6BX4jw0qL1ynT4OQa3FwnCyPJCz6n0y99MsMM8RgQT2fYrurQXb/9Z3hmC7cVuc21Xk7JaeH7xIqY4YqayaepDmjTam0sxWbzaYV6UAaNmYPdeMeJXno5XM+/ki3OU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QNEnuAq4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QNEnuAq4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 362B0C072AA
	for <ddprobe@lists.linux.dev>; Fri, 19 Apr 2024 16:00:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713542423;
	bh=OtZ/lS7Y9YYtM5JR0k6dxypIl/+Ylh+Ig1ovvZrNtHk=;
	h=To:Subject:From:Date:From;
	b=QNEnuAq40y4UZWXwrguQhMqA6JT247LoZNDm5DWwSL6F8BgctzAl7L7wEGpMY4QvZ
	 wZ2LiEMRYOpPUzG4WMD0u3r2r7NAs8OuT6Anqc40SMs70c1KWP0R1rsNVfEc8L3bKQ
	 TyLgbVlzBMGW7CnZM0dLzqXANb4NXnN3IqbXR0Y7gHcbQMBFToXbKMyPYMH/rGhSuu
	 7/dRz6J+tqWlVAEbzzGxZmUKvcEzzZKLQCDPy+5G2VKXLO3ePJ/9pUFAOR2CdAItGs
	 GEgQQmhD27Y2GvVtHd2iUeDj+U3mwqZQgsNSelQDDv/kZYRoIBe0xQmcP24OZfDwD5
	 9Vn/6v8Z7HbYA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 07200C4345F
	for <ddprobe@lists.linux.dev>; Fri, 19 Apr 2024 16:00:23 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171354242299.14525.16500458280196379061.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c34ded00b8e374c5733f87e4bb22fa917424ca85636109e716ea212cad696626
Date: Fri, 19 Apr 2024 16:00:23 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713542422
