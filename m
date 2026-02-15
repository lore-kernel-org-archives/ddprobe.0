Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3098A27EC80
	for <ddprobe@lists.linux.dev>; Sun, 15 Feb 2026 08:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771143294; cv=none; b=gJNkZITPjn/NKC887NgNe8XbSQar0jGDCXTTsGJLT/iNvX43dH8zMdQSlMpAJqzV9Y2QwknE6u8nEI8LX8Dd8y6meyPE2npAbZEBsiw0l+2K/wfEHsHHDgRvjIi2KG6mSLI/N317zT7FVkEJNzFql5YzAQ9RWrPU+dGdh3eUTAI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771143294; c=relaxed/simple;
	bh=87QqnpW14d15Pmn7cAn6/HIBLrhKfrB0kYHGg+0sdNY=;
	h=To:Subject:From:Message-Id:Date; b=IvaSvVX0qKEeCqSeSWmqMh+4/ONvKsVUkIc660cHunJ2JEWgsqAkINKez5Gj2BQ321Cd9O3aiNRv2SfXA3vOU1Hs8bsqHbZKG3bNHkUqQHyfUNXi4gZMEetCia5LSW0QaHrgc4s7ITT/ljv/Dh5tlyVxk+nIFEYlGMZj+ffy3vU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fkfSfkNM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fkfSfkNM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8F9CC4CEF7
	for <ddprobe@lists.linux.dev>; Sun, 15 Feb 2026 08:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771143293;
	bh=87QqnpW14d15Pmn7cAn6/HIBLrhKfrB0kYHGg+0sdNY=;
	h=To:Subject:From:Date:From;
	b=fkfSfkNMDtyIy8aHvQFuH/9frnCwFWdCJJy0Z4U5pDjvtkdqweFrejjScw/AxeCWz
	 YUYf9OadShtCKZW2OKnDEQ0ANQ4XSOhm3gk+pijvEKLlpm1U3W90Vyzf6QAhRzu1It
	 4h0767rNlAYyERegGL4OFyOCTEFmqJhC/qNBSu+AI/5XTCnWS9lL7ZQGPGtPvTX63M
	 N8NUIXh/iHSq+dKHQUQxBO3hxtndyJ3q42DHVhizQw5IF1l61EZXTKMAff1+0QL+qY
	 dUV+QrirIISNYl+JhMyvJz5D1jC3Ez1e7YqdE9DdSQYeG03Ac1+Hoy1v8nj/m+4ILQ
	 NxuHK/d5l//yw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0A03EF586C
	for <ddprobe@lists.linux.dev>; Sun, 15 Feb 2026 08:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177114329363.4562.10838104190339340668.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8a5ee0f9d6f44d8e20214d73d6fd8256648c41b86da0d07ccbaa78d8264e9654
Date: Sun, 15 Feb 2026 08:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771143293
