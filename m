Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4004A4084D
	for <ddprobe@lists.linux.dev>; Wed, 17 Apr 2024 04:19:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713327563; cv=none; b=uWbNFE9jwA2rMWNH4SzzhgtfbK48RvlnBedoUE+90FjZBmcPNgVlwb+C6Y/m+u1bmaK5dgT4mtkWnCsgRLRqg8OCZ79Sz0OFmEps4we0RYiHrBvAGr2Up6MPQb9D7c30H8ReIt2qNY4eYxOHDkRbf+k7jFWQJpqNKJ5XZHxusJk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713327563; c=relaxed/simple;
	bh=rl46H9i7gDSUECpSPJiaWZo6NIuoizHioDtHnVhiOmI=;
	h=To:Subject:From:Message-Id:Date; b=EU7Dxib/wOfBiUvGZ30LTyrWVW5X9vz3Ylvxnh8OU8GW53vbbBTiZ0L1zbwUDkALvHKheTd3Az8iDjzjwZS74EIlfT4Qxr60eOMJ9FB3ep4d2RCWH26mYCMrtSPYZzns4rC7wiAnryeFc62BBoj/oZ3YQCbGhBlRBqs1J9VHkrQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k5f/yd3f; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k5f/yd3f"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD4EEC072AA
	for <ddprobe@lists.linux.dev>; Wed, 17 Apr 2024 04:19:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713327562;
	bh=rl46H9i7gDSUECpSPJiaWZo6NIuoizHioDtHnVhiOmI=;
	h=To:Subject:From:Date:From;
	b=k5f/yd3fsXK6ng8mpSdQ2RNjyideeoCVwMdotA/7beBzEj1aB1KX33sJXB/Z5O4+5
	 nhtjoa3FNrtqNER2WTQxfI/8wyfKu6IrLXC+UuN70TnnOeWwJ6hxI89i/ofP64OSSU
	 b7jfXUVNsxMGnIvyUmVfSNe9UkSz0ufeYng19jhRpsHTG1oc8Dbfzsmnk545J/jW6+
	 QfOBOMrHXWE38x+2bsMmLxaIK63CSWVk+xPY/ExSSS0SeaoYw0OAoi0t5Th447NiVf
	 2rKqCkH0/pfd4mrvdCACAxfrqJDhYSf9Frnij5QptsqUU6xXOzbLydEtEe/H4/IAEg
	 n1e9OqSX0gDrQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD8BEC001CC
	for <ddprobe@lists.linux.dev>; Wed, 17 Apr 2024 04:19:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171332756276.6556.9294288457655258350.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bf8ea6ffa0b562de487862e9d5542ab555a3769f121963b120de3c52fd12609f
Date: Wed, 17 Apr 2024 04:19:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713327562
