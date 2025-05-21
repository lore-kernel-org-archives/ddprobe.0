Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 319FF4A3C
	for <ddprobe@lists.linux.dev>; Wed, 21 May 2025 00:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747786194; cv=none; b=kdoNdoOPBIorwGni1QVxq9llHDHcDrUk4PV+cxqM1jgXl4HWyrpHQyH+AozOuanTYpGsbXkMOzxMuOAfhsnguMtd08iZj4CMrgG5VHrfp4aS51WuP5qphC/DWusVoBbCfZKdxmUDI9OkPoQrHJG+rsmAu1z3L1WKccKQA1LwChc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747786194; c=relaxed/simple;
	bh=oTEyMXfzI955uiqNY7op8XD+sgqVOBJbaT+3j1pzduU=;
	h=To:Subject:From:Message-Id:Date; b=jNbaJLzzmTTM1gUl6HaD+euM6sgrMw9bxdofAnIh3ZFcHOiqjKH9z5i8zu8v6BKqWRZ9Esz7PBHqvzOfK2kHsvrMjYEbQQGqKf1a1DMV+/zi4T4fvNcETd3NInCm85gSeT0L/jbXEwcz64Neef5f9TBlal1M0ZXKx+z8pZSDEDY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EZLWKjYI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EZLWKjYI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA241C4CEE9
	for <ddprobe@lists.linux.dev>; Wed, 21 May 2025 00:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747786193;
	bh=oTEyMXfzI955uiqNY7op8XD+sgqVOBJbaT+3j1pzduU=;
	h=To:Subject:From:Date:From;
	b=EZLWKjYIMjhkjREEUOXrqZ5Vn7U57OEwpe8nKvo+cD/mf8uPL8/8B79UGcJxmz7Lm
	 mMNoKRGGHGSrNZ9rOdmp5yH7hgfJ0GGUx4xIqPnMLr/Bxm5ZykljAtOo97Dj+elY9m
	 mws53rFOJyA+OEr4EWii619kuZGpmDNmEDB74LxggAHO6qV0U/+bMMklXXKBz1wott
	 pLHm8oTyhWM0gl2FGza0oiNu1aCBOsFpTHLhDOI4FRuAlqht9VId+TvK9JeUt8J9GY
	 ldlW3xvmkg7QuSEFbDRMCPPWBHcqNswa9Pgdizf1CXDGzitf7d0a5l80RuUbH/5F/h
	 NbqX4hLRQZxDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 918AAC3DA6D
	for <ddprobe@lists.linux.dev>; Wed, 21 May 2025 00:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174778619357.10037.7506571576439189448.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ab765625972549c48032b8c9ff39b666b556e02f275f8f5066e9533bdfa67fc1
Date: Wed, 21 May 2025 00:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747786193
