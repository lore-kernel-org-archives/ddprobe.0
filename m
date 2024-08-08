Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CF25415350B
	for <ddprobe@lists.linux.dev>; Thu,  8 Aug 2024 20:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723149353; cv=none; b=IH9AwIPs4d5QzjLGLgCdrGJoenjtdIlwm4Z4tJPVOyI0AOQoCVQpdVNqWtYV3C2l/7KmhDi4NDVv8XG+uj7RCFXtxJqHUj6NteOtdoJJ/qxN9wiq90gIGElOo1ASaXqMp+eOArRXi0d3ftt0KTJ6eI4F8zthsKcus7ewI6hHyV0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723149353; c=relaxed/simple;
	bh=Vlr6wrc+DPaccYGC+3A+2rL2rMYMj0uK74PSkH5/1Fc=;
	h=To:Subject:From:Message-Id:Date; b=ap/r42IIC0s7rOxo6Ez2eGfZn8zkELkkNWJybcVtdOunYfnZJQZvtMITmcwkreGQrN9oMgchbYEkvSx4Gd+WootrPaS4NW2eCgpCf0yZWgVRfTv53lZG9VNoipUPk3yViUet4nasdjfRufeGdHc+gUg1kWiS5QMYP2OR+MrcVvQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VdzKwSBb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VdzKwSBb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3FE7C32782
	for <ddprobe@lists.linux.dev>; Thu,  8 Aug 2024 20:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723149353;
	bh=Vlr6wrc+DPaccYGC+3A+2rL2rMYMj0uK74PSkH5/1Fc=;
	h=To:Subject:From:Date:From;
	b=VdzKwSBbS5CPnoMD1NLFuW7M/8oWIcuwYVS9qBCqxF3OYDLmVhwb/bdJS2reFuRv2
	 SwTqstQKLUfropKy/gmecf4S3Rp28wKcde4TziTKiTd7F6GG3PM7J6HUMCRp2tlDsS
	 RN/eof3L+2hZhqtQv6WBI7QmgIpyhT+tS4od5DxFCsi/0IfP/VF1artn+i7Hs9U0/o
	 u6tNkA6xGHKPIuPCuHNsr+SYWDr6JePjWKHbKDrcLHeRBAnIyyamQYKMUQ7O57Zf/t
	 q0xynoCNG/1tTXhXQM11meVvCBJbbBpUIz+ubafDmAfdfNzf3KY0+LdaTTb/RbwRvh
	 oQyeHmgbeZ8dQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92B3DC52D71
	for <ddprobe@lists.linux.dev>; Thu,  8 Aug 2024 20:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172314935359.20357.4894834639155148779.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c4d92edfb724a03fe55ab9e0a1b6331387436edb554d8187910d9553cf66d82c
Date: Thu, 08 Aug 2024 20:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723149353
