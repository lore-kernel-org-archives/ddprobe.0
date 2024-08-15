Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DA5B14F12F
	for <ddprobe@lists.linux.dev>; Thu, 15 Aug 2024 22:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723760754; cv=none; b=KjCMkIKm+xbUMxNfdwAZiRWEgRSqOyV1au0j/DykkX/vHpmYKXuXJHZMrCuJnmfrPh8Z+Zp07i/0qm9d3uUPt6+m4jzmwWkVSogUAq+xpePs6V3n5RjHpvmaYXcLgRF2tyOmOupUYoUMgM6iIYqGa0tXGLodmKYb9UKYxsfno1U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723760754; c=relaxed/simple;
	bh=dRSkmLR4GT9LaFmf6oPtFHx4Nj/29Bb5uS9HdjGfe40=;
	h=To:Subject:From:Message-Id:Date; b=rNDr4sCcncuNtHUmlB6eYZY9kih2qIeCG9qQUceAHguuKZz1+44YvtIOuySI5wDosvUZMT+SwKBkJ0vIJuxnsbBKbk4HuniqqHfm9EcOC6jrK9hLkPA5af4mlFK96p132P8A0wQMDSoewulMmkZCgu7GrPAp18cjxDiN92lAvck=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ekKYzv+g; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ekKYzv+g"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B18ABC32786
	for <ddprobe@lists.linux.dev>; Thu, 15 Aug 2024 22:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723760753;
	bh=dRSkmLR4GT9LaFmf6oPtFHx4Nj/29Bb5uS9HdjGfe40=;
	h=To:Subject:From:Date:From;
	b=ekKYzv+gw55ByRYdWUrekd/dAmtNhiwsW2yMCUNm9qjehOJvjVl/6WENwa3p10Eii
	 1OIVyL/8GH4lMUnEGT5/+noHOD6oGXmzzGHpOQSxcedf2tdcFs/BqlPNbCY6SnY+yt
	 MGT/iFBprf/Ac6hQH0BjupuJ7YYoBGUIn7otS/3WAej38QVkZYTZOOe+zaKcKSjBhv
	 r6F7SwT+OAD7CpaRUm6EOUwRhSj5LfkYDod26PQqof/LdLFVN/rerhnuJLvOO5YJIs
	 ohvEdxT8/zbH8wQ6OKBftBWcv3Xq2l8NdjHDUBh1rHedwf9JtOWlXARip1OPkeOB7i
	 o0YnyV2KOYbGA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96DD6C531DE
	for <ddprobe@lists.linux.dev>; Thu, 15 Aug 2024 22:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172376075360.5546.17468632746618088259.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 47a5621b9f7cb429cc983337e58db5f62d607acdf1048bd973f7cafcf9844831
Date: Thu, 15 Aug 2024 22:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723760753
