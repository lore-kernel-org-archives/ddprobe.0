Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25B0E2DE717
	for <ddprobe@lists.linux.dev>; Sat, 20 Dec 2025 02:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766196234; cv=none; b=bjzIdUqZtf6EsRNSSszFzCuU3qtjk2lCxvK8KBe1jQlckOAbAKzOCpup/dVSFgedwiz+GFs/ECCkVBId0gfI7kGf47AsESw4G8OqSvc4r+7tMzMMEX/BOQ68aYP5s8tbJtq7kO4JZWyuWs8kqKi+/g0hlVouhVeiqVs7Mi1jpfE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766196234; c=relaxed/simple;
	bh=NKYIDG7Pt0mQvqb4WfZqXHMWlRdxm7npbF3+BL9tkX0=;
	h=To:Subject:From:Message-Id:Date; b=bq+FDRb6gLFLZosadU4yFTZYA82bh1zO+JXZ6OqF1AQ/XMktQ55q2+J/RpTtm6uoPl+g7BPhcBT7ATuO1G/mwhB25TQl7h4uBzMRRuKeOoTCI9axJ8lev6YWZDVrmLVaxVxPxLixCrvrzPqN08JuajRwP8BwPPX7Vb+W7dDN2Co=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YjyluVxM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YjyluVxM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FE22C4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 20 Dec 2025 02:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766196233;
	bh=NKYIDG7Pt0mQvqb4WfZqXHMWlRdxm7npbF3+BL9tkX0=;
	h=To:Subject:From:Date:From;
	b=YjyluVxMqusQ/OMLJiQTTnHqjJJtfd5zN0nPF2fphjbbfGm916tclVDCnyCUk5T4f
	 ZoORKrpfM4jyEsscCXwwIIROReCyktOcINVuWHH85Ci2HCJR7aF0oupyDsqTZtmwc4
	 Rj3XYCI9dh2l0qGidHoYtT5cOStT9RGcr5n6R5SGodRcFoVILZRjqnHxxf6Bml/PIe
	 ngJuOF1o2Cl38SvPOnD9xQhz9H9biM87hXERGVZdQoa2GwP7bV21a2/WL+6e0iRaUz
	 8QsIMmQyUUDJLjXW3ETApd62n0deA19GiNCjqut0T4B4BHh9VDi5TPUqo6iI55+qvk
	 Bvg/7Q6HlWnOA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91FF4E668AA
	for <ddprobe@lists.linux.dev>; Sat, 20 Dec 2025 02:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176619623358.6546.3902309183860100891.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 498de5f9d20a2b6f2636d2e9537fcfa9107f042034a6f9a0d6460f0433078171
Date: Sat, 20 Dec 2025 02:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766196233
