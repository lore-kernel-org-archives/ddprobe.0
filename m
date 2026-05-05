Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DE16383C6C
	for <ddprobe@lists.linux.dev>; Tue,  5 May 2026 11:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777982254; cv=none; b=jTjKrSfCaAG3jxcVTV/qS1wVmW4Nhk3nwMZ/Cn6z0WOEMLLfUlSHIOqPkojJautqGOBXNJfgeTvthpHkGCje+JtYXyV0wmui24t31IdBo5HrSp/kEY5xdvj5pS1kaFi7W2EfR4aFdT3+49LYQziPURVR7eQ4gVJc4+GqVAh6SOI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777982254; c=relaxed/simple;
	bh=SufbzNrmhczhzdqdoJj2SfNm6lOdnVke9ULLbYtRMfE=;
	h=To:Subject:From:Message-Id:Date; b=r3LFIhjpzPXYcXAWwtq80JZX8IGvJ7T+8ji3jIqr1LFaU7FhPLHXpZSPar8u6V54939hdMt2sQH61RTDcNgO3Gnh7bto8pGqTaPAj+7PvZvapoXf0axUHjAcAoKMlFSujCipaPhD5QAzGOI0YjYHdlWsMdBJ9H1FqUl01lLYR5k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eLgor6EC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eLgor6EC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BAD07C2BCB9
	for <ddprobe@lists.linux.dev>; Tue,  5 May 2026 11:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777982253;
	bh=SufbzNrmhczhzdqdoJj2SfNm6lOdnVke9ULLbYtRMfE=;
	h=To:Subject:From:Date:From;
	b=eLgor6ECMZP6iVNXhLuZZaBXyMrtGMUWl5Z66N4lTjmpUPncayRpv3nybcoTQKqv0
	 NiQ+0uqVyH1J3ExlyFpUfpNTEYK5TzGVqAHyluDtXrs5pK8YObtmQ7Cbl0kxJcd9Er
	 KxshKveSeiYlJnsYJYP58V8khF+HXV5Vz911JvNipOTV78MGljQXb8xBhfmKsVk0Va
	 9al5hfwaxG1QgsxBc+eMeASXLbuGXylidRkT+kdjrFqnE2Nwj9RmwFfotshoff1Moy
	 CDKkHlFr4oLWYX0TlfZ3q6Cqr9Rykx4Q62YrY2RyFzZbBZSb5yDgm6RN2EtGJGKYIT
	 YRshhczSkP9bw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA704CD342F
	for <ddprobe@lists.linux.dev>; Tue,  5 May 2026 11:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177798225368.5972.10864741690386035921.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 179256656240678b6ad0b91ae4343f6f9cf70cf798b89099434aa82b229ae321
Date: Tue, 05 May 2026 11:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777982253
