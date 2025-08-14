Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38B6F1E522
	for <ddprobe@lists.linux.dev>; Thu, 14 Aug 2025 16:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755190194; cv=none; b=vFXsrBVCTfVStMW+XhkXz4JqXLI/xxI1d+9tkkDpYrih+AK+olwHPt76ZEmmqzC0cOc1rYyBHYZ1BzTRfo7LfYwSMgbxaxkXrD3BBy9YfM15GLU5TkXGvvYVifRdMer8aZVO7mUkMKSpM/kQiEo4Xj/j08vc209efCIZzR/Ni3E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755190194; c=relaxed/simple;
	bh=I4WyCsDx4k3OWbxEQUgJc+EMZSK3lngREbQVEtmbDPg=;
	h=To:Subject:From:Message-Id:Date; b=Fh3DnIZGQm72Xuu7vWRbk9Ut/AFmbAVhzNBNko9fUnVVRO7W3t50o6Ic0+2wzcXsyFzTiTIQ9PBuV8FBGSi3dJN/kTRE504PlNiYENS0DyjyVzPdNtUq+KBP9+ll7Gxye5/90vDVzvNN9ziBZVu7O/t+QvYEhFv0WT258fYWP3Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VggA9gwU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VggA9gwU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A492DC4CEED
	for <ddprobe@lists.linux.dev>; Thu, 14 Aug 2025 16:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755190193;
	bh=I4WyCsDx4k3OWbxEQUgJc+EMZSK3lngREbQVEtmbDPg=;
	h=To:Subject:From:Date:From;
	b=VggA9gwUk7C84uDV/Aqebmmi0+iBGM6j/gohEIm/EJDGhsLzDeIKNYo+1vKJHzBc9
	 1mOtFcF7hSCtodxwR/oIRpzTffvC97BMwtNA+q6CLOFHMuvaGXqws8EltB3hL8hut9
	 bsHgEhUSei0o0LVx+SVHHJQZJsxhy4TLs2oVpcG1ZhOw8/zH6wc1M6HRSsd9cmQO3K
	 RoyyYPuJsd5EbaqPKwF07U/Himj3iJFSII7LBKSxk7RyZ3KiXtu+/cJTj+A+OaWwxe
	 FC4wwM9IuE5Vsd0Ci4mVJhDbOfMmCZcCuGhjGrcmXITJVp0V8Or7R/4lPmhKGTncjz
	 Hln4rmrMUmy0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9191DCA0EE4
	for <ddprobe@lists.linux.dev>; Thu, 14 Aug 2025 16:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175519019357.1794.15424034413573386034.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ae4b6d6d3e91cb0fb981943e0c8c797549aaeb412079a096691b4a9a538fee25
Date: Thu, 14 Aug 2025 16:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755190193
