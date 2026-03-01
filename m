Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C2A81D86DC
	for <ddprobe@lists.linux.dev>; Sun,  1 Mar 2026 16:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772382894; cv=none; b=OTi2JfCpY0l3YDv/nImK5ZgeOtJ/qWMbVSP99gh9r9LCbIIIsBZcyXJQcheFEzv5EWoTRRDa6LDLFd9200P9lDolQkQERTQ+Z98jsmYbUli2XnrT7nnUumlla5v3hfxOET0uERMfYnw1s7MBgLPJmd6iPEC9/JHo/F8C1Wd3RPY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772382894; c=relaxed/simple;
	bh=6jQ0i83EjFRFh4PPu5rB55FN/V2HVp9gCwbRljYW2Yg=;
	h=To:Subject:From:Message-Id:Date; b=eEkgJMYJeKLGDjqysKd9etXXA3q/xM9loIW7VVGv7Km1ljniufmJH8D6ZobUHdLCvDWLkQ6HBobto7oXau4Cb/73GaBTEEV+zEibULAXxc0BcG0R2cj9UNhdge3FBTlWPt6iIP/pO6YnTnURnB27xw9I17p1Aon2wRVLYnqZb+I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nJqjuhZI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nJqjuhZI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B92C3C116C6
	for <ddprobe@lists.linux.dev>; Sun,  1 Mar 2026 16:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772382893;
	bh=6jQ0i83EjFRFh4PPu5rB55FN/V2HVp9gCwbRljYW2Yg=;
	h=To:Subject:From:Date:From;
	b=nJqjuhZI0M3XnfZSVfdpwLIWyy3g4RRn3nEURLycws2mEW1Gbd2KbnaDy36zoFlXu
	 h9DfmsFLsEfgNEGS6zRZ1COrp+Cr49sIM/sO5jRSBaffGAgIn5T/NZKpM25NpmkikT
	 VNOqEOaHoBvc+7e2Y9iorfN8yQKf68P4BShUg5AEtV0RHieQJ/vekPI/iyBERD7D74
	 ofZ+owZIX/o46dbk19E7YY9bo7UCKQ3WM5K8JnOJO9o7JdCNUu7LHKUrOVLGT04pJk
	 +GmVbJwOy7w06NQ1Kr8cm+af9sLc465+t8Dg/LEX/4elm2O/S1KO7C8Zo/B54zMm2u
	 ljw/wSo6GHj3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E02AFD006E
	for <ddprobe@lists.linux.dev>; Sun,  1 Mar 2026 16:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177238289363.30769.15027986516045108324.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4762bf217276c7a492a7ad099b85160760a38566b5975c837ce106451849af64
Date: Sun, 01 Mar 2026 16:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772382893
