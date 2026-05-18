Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E31B3242CA
	for <ddprobe@lists.linux.dev>; Mon, 18 May 2026 23:40:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779147634; cv=none; b=e/9s8lrFbfHhGtVhq4CPt80l2uqre2jSGAte3LIPV/fkHZDpq8/JiAfWU8fZey39XoTEtSyuwGUsaKuW7qrnFREiB4uLfGuh1QCwCXrvTzRv9PwH6zZN9Dyhn5Dsb2hK+nK5R7OGSauf6PFOWBIZjgBvl0F9rBIRLvDQ4VmjAsA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779147634; c=relaxed/simple;
	bh=P7tzZ4r+i2pyoay2ILDfFXoG6EsSWNa/DIMYbonQf1Y=;
	h=To:Subject:From:Message-Id:Date; b=t1jzCuiN2I7Mja8ESTOg3ZGVoENnmbfnNS/pCoGH4rx7A67cV9JV+ujOUpkhJ0CyA+tzIhTWNFewqghNiGFkfX4Gu5XWhrL7GbDg8yRbrZkYpemtOXSqM0QhI1ycwIAWjBCWjm2o89PlX1YRKiRj+84M3MMc+sHlUHerBfTceBc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DJRSS9kr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DJRSS9kr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC2FFC2BCB7
	for <ddprobe@lists.linux.dev>; Mon, 18 May 2026 23:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779147633;
	bh=P7tzZ4r+i2pyoay2ILDfFXoG6EsSWNa/DIMYbonQf1Y=;
	h=To:Subject:From:Date:From;
	b=DJRSS9krhn2veK0nPdiyLyFnywIux8CFi6SrJq6V7KPxD4UYeQofS8wTV7V4jA1oj
	 4tyCmPTHHvP11xkhPZncsbbu35A/RIMY1T+mHqY5qGx+j7mK9v3WuT6ztyvCKrIF/I
	 e14/MqalMrRfdb8+1QghoHNdaFO7fOn1DABdmXjpi2T9JWyPzYvZO9dyy1vJZNfdWx
	 jwpY9/YAINQ/YGpTLHQBoQAfpL84ZWI14EfBIpRCH+EYadr5rydCViqHQX+mquGr3a
	 ve0KuHQIVeE9bookiOgU3cpz5tBzcqSIGwSfEowinCgh0BCpTCDCqvgyuF6YbqBzM6
	 vbSp6kM+1FT3Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB961CD343F
	for <ddprobe@lists.linux.dev>; Mon, 18 May 2026 23:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177914763369.23976.16095439885910331338.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3b8c059180123a72cd38c51604881457ddbc5805e5d28dc3e596c69084994aed
Date: Mon, 18 May 2026 23:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779147633
