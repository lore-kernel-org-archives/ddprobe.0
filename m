Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 330BC3DEAD2
	for <ddprobe@lists.linux.dev>; Tue, 19 May 2026 08:00:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779177634; cv=none; b=lH3OcX4jpRJuhLDoy3v4eVeGXKNRIzAeSU3vEo1DMbYYiZ6fU779686diAEZLgGGy5OCrlVaPqmCD/T9pAi33C61hbfF4jKyE9yHFfjBPJ/+Q3sDFQDnLk3AyMK5hX0zfEBGoGLe2+9+4yIvkJ2RVbYwTKSAexULUCBR/tdyiyM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779177634; c=relaxed/simple;
	bh=zqCxUfeIr/BxfbXL6bupJ8qmrRlNbH/mPYtTkTpVcQY=;
	h=To:Subject:From:Message-Id:Date; b=Nl5qVfQp3CTeRHboV2LETzVBc1R6SClmu6zVMSuW0mrXqVbyMQTCSFbid/BO19qmjvfUWrBnMZ6Ke6UtVKxJ4ioBEBJEc50yBENt1ucmTHbr0ji+O0MbImYNIN2kewTiqBJrG9WIccLB1ZCu85CsDzE9SqbivjzDwLSprinJ4I0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Sx+l3VCj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Sx+l3VCj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB035C2BCC9
	for <ddprobe@lists.linux.dev>; Tue, 19 May 2026 08:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779177633;
	bh=zqCxUfeIr/BxfbXL6bupJ8qmrRlNbH/mPYtTkTpVcQY=;
	h=To:Subject:From:Date:From;
	b=Sx+l3VCjakyHIBbwEpp+KkyKl60eZmHOCN9FeODshSu+sioCSIJ++xeAiSNoBy1u5
	 GekaZnlRMP2vGtDQkU3l6qKrK7G275GYPE+YnvFnyX0VAC86q4C4wcAjoz+jDGffcF
	 MC6UgmsCMXh3eUzejBv16/SNQs1BwyrUgye3DjFtn7CGGy5a/fcHnMIXIEUPAKstAA
	 111y5amPHqMt4n9EXtUE0nNqy9uwB+NG94vOMNlaOzw/GwMH6TilPwdOHQPMCWx/zY
	 YCHLtJbXoY5s28KE4qNdKIk8OohrU9a+0YN3eq8LJnM2CJKNZVDiSmYs6efkVNTiVE
	 P51MMNDAQ2kJA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC601CD4F52
	for <ddprobe@lists.linux.dev>; Tue, 19 May 2026 08:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177917763369.30729.5369769767093182628.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3325bea49312d1658ce25ca4253bc49a46d0c7b3c3a53bd2808d211a1068c46a
Date: Tue, 19 May 2026 08:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779177633
