Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 228F72E40E
	for <ddprobe@lists.linux.dev>; Thu,  8 May 2025 07:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746690595; cv=none; b=Pt7gH4NpVxFZmD0ydYkE4oJ/TEq4CFlfQ/3Zwpk8vOw3H6cCJj2yKdt9B8BFxiyxpQ+tTJfbeXJsSzn5ZIzAW/A4NWoTMBJL+g0yZyloL8QyhP1QRgatODfXlnYCjk1yApxuCPfvyXWzsk370K5ylEOySDuDC0L97OzilO5lawg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746690595; c=relaxed/simple;
	bh=D4wONoIKNfs4Zv0Fd+jGbDSHfgyMuGtASjMns1+U4Y8=;
	h=To:Subject:From:Message-Id:Date; b=TctEF7Gpkwu1Q1PJsOYENm+tfGoWR6z1HGtebd/Y4lPEtI/HdDTcBCRz+QFgWKsQ47bzmZRkn8sTrrb3KMeG/6na/APwia3TfjJy3SIdYrnPX3yRIumvM/fUelzrX6X8JkIr37HxOEiDt+akFRnXHJepga6yk0GEkZwc/WIKSuY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WwMoKtsq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WwMoKtsq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E19FC4CEEB
	for <ddprobe@lists.linux.dev>; Thu,  8 May 2025 07:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746690593;
	bh=D4wONoIKNfs4Zv0Fd+jGbDSHfgyMuGtASjMns1+U4Y8=;
	h=To:Subject:From:Date:From;
	b=WwMoKtsqc1s1zSgwqTvCfYctYlzdhdyZkEV0nGzbBdd1HjetMy7kx2B0H+OXwjbT3
	 GD/Bz3FP95Jgkmwv16yY+u+bb6dtQLBYN3CU431ndnungWt8yt6dADly53031l3ahp
	 xrdPkVbL6NNgR8y80XDwTqymLVOcO2D/9wx/G/q6Dmz/MTAtDrwyYNDsF4XmXw5ZoV
	 VXF2BT+aVif/zD4jDj9moZ1gZ2069wR6l8PiLB2ZbkUif/+wDdz7d1YD3DPJ8hW72n
	 P8nl0eHBlBvp3K+5OVX2E1RHrGe6t4ZDgF9f/SXRVCl/FijRmTHB3Zb9UQWiN44Wur
	 N1vE2rHBr74mQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E71AC3ABC0
	for <ddprobe@lists.linux.dev>; Thu,  8 May 2025 07:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174669059357.5420.876400692506846689.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3f603ef8827c8159cff9418f734c720e751f68710fdc34b5948c8eb1c5e058af
Date: Thu, 08 May 2025 07:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746690593
