Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F8E0343D8A
	for <ddprobe@lists.linux.dev>; Fri, 14 Aug 2026 17:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786729834; cv=none; b=ujsnSiT+k9zCyPx0CIzJUv9e0h0bGhVxiIrJx948ogGpBg9S694C/JQtscBuCkwfiqXhF5FADrzKwa79scNxFih8VU4OXx6CWS1DOxqSpQKm2opSvQe/MgiCmyQQsldIz8sWh/75R1p11wJ1M9laJcN5j5kwvN0nkHxrJidbOjg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786729834; c=relaxed/simple;
	bh=vpDi2rxBi3OIBVpx0RNt/zhwI6ez+u8ttccTBFmnbfE=;
	h=To:Subject:From:Message-Id:Date; b=R+VrUmYwkcVxC7Xiwx7Vmt31glkVTWev8FekYHqtdRUrS5btesil03fdFZhFFHyHHlSlnj/ijfUfJHMom00tS2ewMC3gEFoqV+a2BhVypHs9IOXUZHjQe35UViViOq6NXcbERWXFAz5VkPaofZfQu44RjN/c4aIiT0koqIn+QOo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fo1IMlD2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fo1IMlD2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6BA5C2BCF4
	for <ddprobe@lists.linux.dev>; Fri, 14 Aug 2026 17:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786729833;
	bh=vpDi2rxBi3OIBVpx0RNt/zhwI6ez+u8ttccTBFmnbfE=;
	h=To:Subject:From:Date:From;
	b=fo1IMlD22ax9ysUckfCTMG+wxyoQJDVmYD+LisldeEUki91C4OAsDnI8pH8nKMuCq
	 WHcQwgMI60SRmts5Vq8cDALM87ZPqTLfHAiL/ugO/8maHcft2qWnhd4t7pV0mjuFkG
	 cF22oaR8JYtQqCfaURmNbgLN40Lr6O+h6uRYxpAIoIf5/NUUxk/2xIjDJASjOq3afs
	 iPszlije7CD25ktB+G0dfyobE+kCByUfajnEJIio6QA3LVXeuTU4MWja8p0g3Mdaxj
	 gTDLfzEaZbj4q3oaRzBOXmG9BRYPbvhpGudmjZDoxgB/b/937vodlBqyl4qAtZK6rj
	 G4EE98g+Jy83A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE2E9C5CFC1
	for <ddprobe@lists.linux.dev>; Fri, 14 Aug 2026 17:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178672983370.5380.4157569968725621297.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 88dc92e677e38bb562b310fdf5e05477167fb61a4b7b18a473a17f3df559f307
Date: Fri, 14 Aug 2026 17:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786729833
