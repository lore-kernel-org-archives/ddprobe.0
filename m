Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34D272E7BDE
	for <ddprobe@lists.linux.dev>; Wed,  4 Feb 2026 20:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770235434; cv=none; b=ASrAtk5wjBG3dUQxtFjGaRCxLcy0+vCR69oftmMtY9/DdbS5XX/dbaa4pTpes8sEKrc6lcB83F0sLcsF/8QYs2dhMbEIk5MP4rRffjBTsoQlZNw1afCxGUJMEMAEvMREw8LVRnTefqy7+AeZQooZAxMdgEkJkCvhhiRZtwpqx9M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770235434; c=relaxed/simple;
	bh=aF9YBsCacac6I+mjxqgzAwNhBJPwJbLOtYkejZiOu0c=;
	h=To:Subject:From:Message-Id:Date; b=uqFYLbGJihdthwih49sgQiiFDzMM/FojYhBi/0N3/OGYuku4h2uiP3HLMYLiPkDmFJPgPqFNllakcJjqEx5NU7nNiN8TPDWnD1ltyZR0xuLG9ThW45dmVxkR9BoytIfqt31ryhE6GhTIprfnsnWDdZ1PSf5OBIsYYy3mKDhozhE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IJs5jg2z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IJs5jg2z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF450C4CEF7
	for <ddprobe@lists.linux.dev>; Wed,  4 Feb 2026 20:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770235433;
	bh=aF9YBsCacac6I+mjxqgzAwNhBJPwJbLOtYkejZiOu0c=;
	h=To:Subject:From:Date:From;
	b=IJs5jg2z3qlNqmGr6olpFLFyoEp2qQ+ydFEu/c9xNcGPXhLG1mvdg7MFGsv2XBnRx
	 o+aQAC0WDwFXUslcYgdl78FhPtr9GgzF/zyDX53upDIygyYL9tLDnYbPRRvklj84An
	 O9bDMsv9yHXrnts6pELytL2RtjwDBS7rwY+xQdXWa3cOovkp07B97xxSNRJwb8xTp+
	 mkduiTbxnP4BTr59Yu7wUhAq9O1HkNuEfzlinW3CZVEWboehikcMZJJ3dXoaFIaPGR
	 yQck0Va2mk+AaHHHn7Rw+7SbZO7qq1LpyNehpqBXUhlQfnW9cnwxjk+9UDkguZ3oR9
	 OaH08OC7F98sw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E41CEA7943
	for <ddprobe@lists.linux.dev>; Wed,  4 Feb 2026 20:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177023543363.22653.11632158966328105155.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ce3ba7d598f140be208adba91b197e2d8c71cd37d2ea96a2f58e6d4e3daaa3bf
Date: Wed, 04 Feb 2026 20:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770235433
