Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 330D31A8F8A
	for <ddprobe@lists.linux.dev>; Fri, 25 Apr 2025 06:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745562594; cv=none; b=rIwQBy3NxHVYAH8gJJtDjlBDL3eCBnvkWSGrjAcfa058IfHWBSKhBxkAmhPHYoJYeP1DhQmcfTRC2pR2MoYjaNiE50zEneFPy9Wc+z1gF4hRCI1yvwtE02XJegyj1lBvhF7ZvvQaKWFExMqFCMd3wfymzz4iw+FuwLulTUk5M/I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745562594; c=relaxed/simple;
	bh=stIhDqOeLh9GFtIOw9w2MZeYY/sv4JlfAOvPiAJmKbw=;
	h=To:Subject:From:Message-Id:Date; b=R1XDUHT+5WZN/oJEH/m1TODGBk0K71Q9iBeozMNGRqgi/zacws1EQi8N87q9VsIS+fz+QaFA36fvRQFxoTsk+8nOPfVnkgGmF6O19kV5PoQ8mDWHlpT0VItmmXXhJ5+Px56gEcvAGDEigOvWVi5kGgQgpMKeAn0C60zr2okd5QM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vL46AlDT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vL46AlDT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D532C4CEE4
	for <ddprobe@lists.linux.dev>; Fri, 25 Apr 2025 06:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745562593;
	bh=stIhDqOeLh9GFtIOw9w2MZeYY/sv4JlfAOvPiAJmKbw=;
	h=To:Subject:From:Date:From;
	b=vL46AlDTPjJQXnJdDhcEdp57Bafg/jiB6xEhCOzWhA3vzS/RuWH6YgP/vszHvDhTd
	 pEdqXMY8smifUqi3Ar7G8ZcdQQPwE3FLWhAYXcZbrTfPrzCqAWQYUGIeVCqFC7Ukft
	 3r3JBPgj3LDunjnjQ6rQij5gKEOpIq0MEiGucZPppfWlBnwbuj4+sydH9i0Pn4x81h
	 IQOJfDvNAuqDWO67e5VdJHfn1Qdr5EmB7+O7R4QByZ1mPlZ0qEf0NYmA/Aj8AYJ6UH
	 9nIL5UZ1ZrK/1DKk5QzydtCUmGYxul9HybQRzvFBizvhlLmLlZQPQhICi4zzpfjrt2
	 JGZF/9uPBIH8A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E8D8C369D1
	for <ddprobe@lists.linux.dev>; Fri, 25 Apr 2025 06:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174556259357.11340.1666629028412218789.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 830a7b1c014291ef6ff6b0c6068014f77d3c96a4e6e4df34f38fb7c0ea79d70f
Date: Fri, 25 Apr 2025 06:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745562593
