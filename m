Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37CF8E54B
	for <ddprobe@lists.linux.dev>; Sun, 17 May 2026 05:10:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778994634; cv=none; b=DfpsSg1sbGwaM1qNkjZeFNIyIiqtozbWQZckaO0ED4DZDKCFAp4o7b++1yZ7Ds55oi4HCGpqF8Je9T5Z4/BDqjFog/6GO7zJVzbJZFZw6xBJ5NFdofj4tunIgVJ75Jx09zyZwCK/Zv/h33jsEI/q5M6oJVPkU+3IA379o2BG5bA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778994634; c=relaxed/simple;
	bh=vscK7TLSEIxmIXKox903QrHn/QhB2o0AM4WZdla8Lpw=;
	h=To:Subject:From:Message-Id:Date; b=I16zQDL6VnHDRdawoztoMcq+68vIETqQpjstPYqmNS3lFVqAzVInhODeNxXx54T4NZmdrc4f6VOiov3ICiSgxUOjNjloVo3ePAH+aNkzjEKWsZAbo+StRkNn/tIie7/SPUau51hQMhf+p8EEuWlZz30nG5q0fqNxbky48+PVkQM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NYGfYjPk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NYGfYjPk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5C91C2BCB0
	for <ddprobe@lists.linux.dev>; Sun, 17 May 2026 05:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778994633;
	bh=vscK7TLSEIxmIXKox903QrHn/QhB2o0AM4WZdla8Lpw=;
	h=To:Subject:From:Date:From;
	b=NYGfYjPkR8OkjKyKZ4DFo46pJTEO2u3l16ik73v3kA4R6886gZX2Uc8a6e0ebvh7V
	 qv4hJnjwqma8PZYzPcnUF/8o8akJKU2Bz8Ant4mMp/psvCni4dSsuuixInxoOnTyHx
	 GsBR3GFOHAj+YZlK92PL/Zl/AlarvDLnsLDLvBJSBjFBgSFcyBikZmzm5HmrJQEPsI
	 gGkRWiUPNOii1RecaoU20oZfTspqJ1PdpwdtqR37zMxv6eU01ALgC2eK0y3/2D8U6I
	 sgZMqVkVAcXCHjgXJFJIJaUHqF5b3LrSHmFBO49LL0QjCwckgkbkrzyhmNqOz2LSwm
	 /GXvEhSKPpS1w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2769CD37AC
	for <ddprobe@lists.linux.dev>; Sun, 17 May 2026 05:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177899463369.5555.17741208123460346247.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 68200e1332e8ac01221028c1e4088697e60a62caf981cbf0e4c2d56444807396
Date: Sun, 17 May 2026 05:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778994633
