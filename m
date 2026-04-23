Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A902CEEC0
	for <ddprobe@lists.linux.dev>; Thu, 23 Apr 2026 15:37:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776958654; cv=none; b=a7fSE06lLt83xUHCnv0icwlyHNqWznfe6K1srNLHgXcVO2OfMZW9HxPnaxTJqbYrvY/b9gCfFXvyeLVe+B6hutDJVgP+0bWqhoA2f1LHtShHVHij1YyrW2mZ416o7s6amkDcTTS40vAHRSGnNKkbcUXx5ioy/zPsUbveJuhg4EA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776958654; c=relaxed/simple;
	bh=tgexuKQ+6GrABULEitxKAH4cwYcNsa/pmxmW/bq3Wak=;
	h=To:Subject:From:Message-Id:Date; b=T+XYeFyEKINtcurJZOP2SCCBgN5hs0BfBmfeQNvv90BVB/d3oU35qBk7vXXmYrzC099qEedPBB0UaRDIl3I3/26qHR227gjffCtWJNWlBdXOirFBwlGnOPAmYmCJLZmlriLvKejTM0vZJBDVoVtw6za4K1EiJDUqUhjua49Om1M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UKuYgXwo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UKuYgXwo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BBAB5C2BCAF
	for <ddprobe@lists.linux.dev>; Thu, 23 Apr 2026 15:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776958653;
	bh=tgexuKQ+6GrABULEitxKAH4cwYcNsa/pmxmW/bq3Wak=;
	h=To:Subject:From:Date:From;
	b=UKuYgXwoX4vOO7PFq+MOCo71dJNJNHrvHf1Vlr1cH/CPbVJdjCPIYlUxsYrpGdegE
	 KMGhC+Nan0qV+6BNCLRpoYs8nEL3CMxjOUHUpwZPI61MqLJn6YjR3Nj6jbEaV0V3zQ
	 tkN2ryYKCYQ1XK+gvGPbaLhTXmqwbv2AnS54Bs01JQ7k8EAsoDcFsau4DsRyBSXsCH
	 o1xW8NbbeRpO4VukbJS33qpTl+Q/wfoWYbiFhPdJuHh0hF19X6CyjYXFjk2jF71lJe
	 kNfkacwFyvKgOQnS4sm7mTet3RgpVdGC3yA2v7tqOAc4Mjn6tz6y95xNqP1d57tL0D
	 pONXgoV2Hosyg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A990CFC0359
	for <ddprobe@lists.linux.dev>; Thu, 23 Apr 2026 15:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177695865368.5700.11530503626648270617.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 81166c39388f0ac2a4a9fa93e695aa41ab9a4f32e3598f9eb68b4f7a1e624310
Date: Thu, 23 Apr 2026 15:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776958653
