Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20A0329E10E
	for <ddprobe@lists.linux.dev>; Wed, 25 Jun 2025 16:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750870794; cv=none; b=Z5DSusL787kVG6Ek8pt+3CmaOIYyeWmAaqg6vD8+8vVJ6CNKb593Ur+R0m8O7Dr6mF4qwPCVfc0wfmD6oExltKkIm01+kT2Fr8Ny2HFylG4cLq1OtBF9Pz97SYKO2/IDsZew9Q0ATDSOPELHFHQwji9uUp8BBEhYXzRSfzosXFk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750870794; c=relaxed/simple;
	bh=06kg/QxpZEf2M1H2AcH49JCOm47FIE56ZOTKorTSnlM=;
	h=To:Subject:From:Message-Id:Date; b=KxjxeGogtpVOi8KwuvkOJLe4DeIHG5F0m9DlMVS9/rm4CEIK5WXn7K7DdoMmd38+lAfV3+/clrCsQbBssLIqGnKGDimjcKbv/7Ii3CknIl/RwJbjKSK6zZSDQwqe5iAIweD543ZKZJz/HN7c/iICJyViKu0Ibhvs4QxsrtS06Ek=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fQ3/sdJH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fQ3/sdJH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6BE8C4CEEB
	for <ddprobe@lists.linux.dev>; Wed, 25 Jun 2025 16:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750870793;
	bh=06kg/QxpZEf2M1H2AcH49JCOm47FIE56ZOTKorTSnlM=;
	h=To:Subject:From:Date:From;
	b=fQ3/sdJHStLE293Duy2ROFx4LQ8B9KU5qlRLNyu2Ho9ARDpz44JCFv+btYmW6p+CO
	 fKeflXIU/7/zEM4PaUZv8uu+HewHPczlQbc3hEzA33d301e9UBdtTo5f2OovtZd24+
	 Z6T+eifiuPb+igKZd3MPXF7lu88C4uI6HOSRIzANSoniqdlYi8uFAclXJQUK3L9iRI
	 LF+7kPG2R60yfeOfXUwU32sxBAy6th+grTLTUwasANIuknc3iwK4PSuLbjX6P0emvR
	 3bFlfY8v32YPueLiXoZqhQvW/VMCjKlRBzzoxi7EaDNdJHuOy7qikhA4RBv9QoZFhb
	 4mA5Vf3LelykQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9075AC7EE2A
	for <ddprobe@lists.linux.dev>; Wed, 25 Jun 2025 16:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175087079358.7425.678910025460771835.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 36bd8bb42e63bcbdd679b5f7e354e4ee8a902c9081bf52fb6b21ac3465fa961a
Date: Wed, 25 Jun 2025 16:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750870793
