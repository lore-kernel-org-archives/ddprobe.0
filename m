Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 376382E8DFE
	for <ddprobe@lists.linux.dev>; Thu, 28 Aug 2025 07:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756366795; cv=none; b=DsTHqeypNe2mQIap//ttFLNQhDmqwhzTVp1rLwGy4UCZgQl+6VU76jczh3wx/fQwaWf9yECEMU54M/pW62/5v6uNSkWDZZ8C+nUG0b3DnWfMt1WNGHo8JjRKnnJHYHbs2XCWLv+3YHU5LJb/ZfCFgLdmUAJsds4hoVcZlXurAGM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756366795; c=relaxed/simple;
	bh=J456oN9nNw0Wf8dz9XBcfWhwiYn0mOY/r+QL2rPQzws=;
	h=To:Subject:From:Message-Id:Date; b=GarYudlJVDRPqO08QWq89jsb+KVCoZFQIjgIV647L3phXPG+bNbpGbH+pwFH2PfgHKzIUhCt2WE2zRFmjeHx767nA0K1ocdxqGD0Yv1U79cj3V229zzZ0DIMaP3MEXZIZ8aanVKGK15tfc+tc+UdOpgXBVfLx45OdriUl2Ur6MQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IyrTGbOX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IyrTGbOX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE472C4CEF9
	for <ddprobe@lists.linux.dev>; Thu, 28 Aug 2025 07:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756366793;
	bh=J456oN9nNw0Wf8dz9XBcfWhwiYn0mOY/r+QL2rPQzws=;
	h=To:Subject:From:Date:From;
	b=IyrTGbOXyU8VAbAHjK3pFscxUtIcAQIiPyLL3jNW4iAExYyZno32HhgU0zKDsxAEB
	 ym1iLvSy4GFDT0HGT6aajoIpleyrZ4FT+9flNOeeKyWWLJozR2fBwAO5BYBE4S2qkV
	 5JTQDj0Zbk4SLNDDjjL9t3650ONlScN5GTNFg+c0hm0T+wLIoPYu2xclohrBwNdi0+
	 QPbxKmkBkDd1AZyHN4XsXMP/X+21Zi0M41MRQkHvDUVo2qlP+XWqkoDXChf58xne2l
	 HXDwcRYB6ryGZusDGkbtuYpNHVGAltWWbxGmXRG7pH/sR2Vw9PKWtS5c9Nv1BUXf4n
	 HLUssMaOUxDCw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93845CA0FF7
	for <ddprobe@lists.linux.dev>; Thu, 28 Aug 2025 07:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175636679359.3660.12800144513591549137.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0c62938ac69d4161a5e4bc7a2203fa03ccb75f0765703112f05705526bb3a9a2
Date: Thu, 28 Aug 2025 07:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756366793
