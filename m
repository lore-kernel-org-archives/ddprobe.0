Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20D192F532C
	for <ddprobe@lists.linux.dev>; Sun, 12 Apr 2026 13:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776002254; cv=none; b=kHVD03MfcUN9rPgoizDsNv2ZNkNL5KLfSH7S1JP2xYvu1i4FgO1Jt/a2yECPxzlmSmfskdOeIOU/+vvBeazBnhs3s7sDVt6ppYfwIrc+9oE8EocxnvD8B3F/9AX0cW5eC4FqEQoIB0inBjl03jcZ9OZLNH5voNEV5oR4DIIc5CU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776002254; c=relaxed/simple;
	bh=mcjuAPSiNhLi1vL28JPjabq+ogYmVPKsGWHWvmShXu4=;
	h=To:Subject:From:Message-Id:Date; b=geijIC983t0JOAOC9Su53p3DCm1xHZTNfm2bCzPFKKpY07c7IqmScIHBs6iDfZEf6lxsGu3NDMPWF96QtwYXEfkIvqdJaVNISkDYcyHSBM2MFStxS1r2dALblEYhL26rxWIBP2mg2cOwDgDj491u9snVyuqqENjRMDxtm1zTfjA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hh4+RL/O; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hh4+RL/O"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0708C19424
	for <ddprobe@lists.linux.dev>; Sun, 12 Apr 2026 13:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776002253;
	bh=mcjuAPSiNhLi1vL28JPjabq+ogYmVPKsGWHWvmShXu4=;
	h=To:Subject:From:Date:From;
	b=hh4+RL/OPXM1TaXDeTVHRJy469ZH+JIcCSjct12K5GNXN5owlt9CMpmamW0L/enCN
	 v3dPTdUgl10hrdvi27+JaCrk1iBJ9ZHrjj7cHjJuY2hb+/wXctj18W79cESbR8yxa7
	 Sd+LNnTMKvkk1BSSRgxZbmImC5wcEhL5ts3VQ7UDR5emw2MfwOcMNgKZqGt5BdW5+2
	 gvfTIjtbevB1Thma4OabjRIEmwSoBE+2Q4Z6UL6CQ94lGSLT4vb9NLZnhVamTEMOub
	 WFmgRw13aIxfEqhq+l+1zhRH1+LS4fb9jVqGtB34ykYCdyUh+jm4o8y8JILGZbOc0U
	 VCpCwkSY1lkaA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEDDFE937E4
	for <ddprobe@lists.linux.dev>; Sun, 12 Apr 2026 13:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177600225368.22741.7400806243969040433.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 26f6d05e25f3b5df357e5fd4469e58d053ad57095a82db6cf5cb48dac5feaf0b
Date: Sun, 12 Apr 2026 13:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776002253
