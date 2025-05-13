Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C8728BE5
	for <ddprobe@lists.linux.dev>; Tue, 13 May 2025 18:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747160394; cv=none; b=NIeD9CoyYnZtFX5UlB4WrykXZh1jAaf5jvcFK2+lInE8rHyJBdJLtBRKsFxkMLyhWervdFMaZbOasm0ltYLztuPTW60Anq6QHNHXUZNyZ6HNyDKhA0/w2o9DuI3NOg9kS3a2Alk8Nleb3+CwkVG3oKRKZGzrinJJEos8xnDLbZ4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747160394; c=relaxed/simple;
	bh=qjMg9gisc5YFjJktspqouXn78vUBQMIJAiopv6r7Z2Y=;
	h=To:Subject:From:Message-Id:Date; b=XxwDqluC28ElzoifCwt2X9/zvxTFK1HJgmQPRgbn3kubcXACrcHdS3elGvNb2MuUSIcW2gxXOGq3oNCyKH9SHj10yZgMlDq40Ph6rW4mlovuKC3Tt5D4Eal0c/tQYknAXQIAOf2LxA/G4+WheJuwqb0uFXfIf7TTjzb1n3KXugw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=puAeceKN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="puAeceKN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1FAAC4CEE4
	for <ddprobe@lists.linux.dev>; Tue, 13 May 2025 18:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747160393;
	bh=qjMg9gisc5YFjJktspqouXn78vUBQMIJAiopv6r7Z2Y=;
	h=To:Subject:From:Date:From;
	b=puAeceKNkfizHdjyafO2wYOJ9YQylk+qso0P5a+0apjjsNMxINhg0XrMuo+gRpiwh
	 Nv074TTo1K2jZPrQEPo+sGhgLNr25vlmqcNo0sr3O+cr2pbIMtMreMgnYEJdzF3AD9
	 6qv0MYqPrJ0ikcmyDvwZjw439QKJqepzjoO3mU1O7+Y3fmmDJm6bOhFZ2i6fkRhFDv
	 WreyJxpt43xWD/mtfv6ekamo5o4/yx+PWwfXo6a5OQOK048jZOA2FykQJNCqlHMmkq
	 LipLa/88fQukCkCCSjsoHq+EHWcH5MR1cHRi8x9RpK0o/wuOxAr4mhnVu6zWTKolyD
	 xPWo8/eSu1LxA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F1BCC3ABC3
	for <ddprobe@lists.linux.dev>; Tue, 13 May 2025 18:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174716039357.28491.7178410938858468945.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d6ca99f1aebd35a80bac789b710fa3ac93cbe03f6b2f57fd7f4f0c1043526038
Date: Tue, 13 May 2025 18:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747160393
