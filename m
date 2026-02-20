Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CCEFF346770
	for <ddprobe@lists.linux.dev>; Fri, 20 Feb 2026 13:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771593293; cv=none; b=XEujLuuTvvO8HRv4AYYUrOVJaeW0csZjvgq0MKBtlyy0Acx0r1wZ0eORBS2l8Z7bnQOwi0EUDRrMgEBrnZIJAcg+PouTl7KwmyOThl2rrZN3GPD3Ai0YsMAvCpUhF1xIHcTgafZgGDMZzTPrIBLDeTBy3iIjzcc0f8MettXAPmM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771593293; c=relaxed/simple;
	bh=HdPgIhzi7JwvqvQCWjQP+k+UiLHLhaxspHdhm5R1UwQ=;
	h=To:Subject:From:Message-Id:Date; b=Ugaqrrgfbq3S5KfdRmgq8iF6NIhmStZldPBmzHva1chGwM5xe1CIZ5ssYimo5A588qv0vaqjuFAE1HyfeEhbTB7gV/KAN960/gMSg2t1N2BMUhNJPschSk9CD5Tt/dVPoQ4+xLS9momsIWxqixGiDxF3+3Cc64KmUjefDQXSPnY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kXAAdH0c; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kXAAdH0c"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6898C116C6
	for <ddprobe@lists.linux.dev>; Fri, 20 Feb 2026 13:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771593293;
	bh=HdPgIhzi7JwvqvQCWjQP+k+UiLHLhaxspHdhm5R1UwQ=;
	h=To:Subject:From:Date:From;
	b=kXAAdH0cthl7PZdSc5a2pVJZnlmRyQpNBz0pxGsLkX+yEuoepu7c93w0CrtKUm+OM
	 ik6uiqhg6IxNv5XMuQmmi5gffuKfaKJBKuTpwk/68bKa0NIYGPmXHbvtHRN25QqvoW
	 wht5w+eIBKD80vZH+xCtYNfG1fQpdwQng9ghprki7mOT6rIOXOCUVro1ybecDC7TeS
	 aX8CXedB4R5kHW9vyqhzKg6YzP34DwL/4x+pbweL30yfulSlI8fsRPsaUxnxvqcUs+
	 OWqKkNrZVkBL/Ol4wpbZKBPJvC0D+zFfD99Z00dHeeEb+aqnYqqPObHuAXM8mLIxKO
	 iESRhbKkWf1tA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94CB5C55ABF
	for <ddprobe@lists.linux.dev>; Fri, 20 Feb 2026 13:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177159329359.31808.10496172914164878956.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3fda91790f4683fadba1a458e8f16ff702975e5c45fca62e135349b19401e8ef
Date: Fri, 20 Feb 2026 13:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771593293
