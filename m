Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 487B7376E0
	for <ddprobe@lists.linux.dev>; Tue, 21 May 2024 05:22:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716268943; cv=none; b=L4H/9WKl1Ieow/8quSO41bAWOwmy96aFrCEZjns5DyGdzbNUDjwX1VRPWBSEta9F/r32CL3QwbWKW4fLDLpSufILDJ4Zcnogo6jQrk3d1EnK6sSLUy1a20u3dpGXVE2Knp17/lXOY8DbaX9LuYFLI/ritk9oC5g+csHrhilnxLk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716268943; c=relaxed/simple;
	bh=JIeYBUqZMqyhfkoL3XivzejkuDxj8VAgeIBM2oMeNeY=;
	h=To:Subject:From:Message-Id:Date; b=Ywq1PGqXW0z64y08NLBVhDUteaPRCY5/L2d1og2uBF6DIodCcKZZUWE1bbwiugi2SbWOpNNfDKzOXTffp5CtwOqscNGEijMIEmGBLv0FP8zNvY9FyzCBlUsb0p+rETZBSIszn8HHCwZKHzoCXUn7C+XQgOYR8ud0CsSbhmmwumE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oLpu93IA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oLpu93IA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8C4FC2BD11
	for <ddprobe@lists.linux.dev>; Tue, 21 May 2024 05:22:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716268942;
	bh=JIeYBUqZMqyhfkoL3XivzejkuDxj8VAgeIBM2oMeNeY=;
	h=To:Subject:From:Date:From;
	b=oLpu93IAlyNjx4pk6Gf9BCt5+XR/rdLoj6qimBMuXqo5UJzspx5IU4wlh37SsQpGc
	 hZc/3xMRyLUx5pUOepKqStFYh1T+InT3p4GM/nJRJ3D9akPwviu9grIByDbAZhDIIt
	 Ad7xL9lHc/NQPOI03SOUagdJ8rwxzwkQ0y1gHXv7fZbVrdxBpmUfwZyufEPC0kUUg9
	 s4IBqf1bd7fDToYbJz/VVSWSRGVzJEf93JVklu0MH6QxH/txzDCnG81IVdrKeN1WHj
	 qQTF2nfnhMe7QCcboD5h26Tdeq5sbu4FXYDDZDlUQ7OCBit2Aaqcf0FMDF8q0YBNZy
	 pLdNd/zyYIhuQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C53FBC25B75
	for <ddprobe@lists.linux.dev>; Tue, 21 May 2024 05:22:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171626894277.2138.3699776900056217987.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a3bb21d5dd8e2464529070885f12ffbef75247546dd8f2cdd0ac358af2c648ea
Date: Tue, 21 May 2024 05:22:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716268942
