Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 491E02D9EF0
	for <ddprobe@lists.linux.dev>; Wed, 24 Dec 2025 15:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766590434; cv=none; b=osaJb2r/cHyphcJ+QnDIDcIVoVx6abVCUGdykJpFt7Gr/uPZbg7EQSiT8AQ+bCUC9cBOSkNhj3hxWzl4eNosBaqFlji5+NGm7DDOnLSf454PJ62kwrjEUHhdmDX1TKH6rhkE6WWem9alqSFePoy2WznQnCNnDrXOaLTWMhlYdJQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766590434; c=relaxed/simple;
	bh=vxKsM4ogM+D0GNRVwQKALqnwynKtNKS+kXK8S4osiVI=;
	h=To:Subject:From:Message-Id:Date; b=hljhXG1PQN2W5WfPZ1/pL9z0xZqI+EFrcJdHdaXhBqdR58cpkQZviTHyEB+ctYLOA4xZtvN4JK4Mw98kc8gTLVP4MREu/xiQd8hwNze/R35Tj+5lGfhaVCFamSOsYCV6ShR0FSeXCJGBtCEhL9iJdb1ZRFpb7nwulWX59dIgjQI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PhGtyh5Y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PhGtyh5Y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DC1CC4CEFB
	for <ddprobe@lists.linux.dev>; Wed, 24 Dec 2025 15:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766590433;
	bh=vxKsM4ogM+D0GNRVwQKALqnwynKtNKS+kXK8S4osiVI=;
	h=To:Subject:From:Date:From;
	b=PhGtyh5Y6XGEo3VCbHQiV7SFuTZcRXrLO5himMD+jpQbrfz0qBuzlwffS9tzGpl8T
	 UyzrJLbxW06cQFJi232yGQeR6qwUyDp35jbKpJCselm9H2VkZmItTCAv1YOrANTdKP
	 27Ya7D088OJIN89GTp4ywSvayG1+dgTSClNsTrmuplv0pb1jLNp4KdK3Qzaiyg8TDF
	 q7HpMxL7heSFOPjRwVux6ApYTHemo44cgjzKgZPS6jVyzLiWaNFCbEHp69n/wHCPhk
	 Bu6S9b4B9odAMXwo1iGwcCiRs6tRlSBx/7swkh1mKDWszFScIuF+YVxs9ZiPGnukDo
	 yfj+j4Ex9pzVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F3E2E776C0
	for <ddprobe@lists.linux.dev>; Wed, 24 Dec 2025 15:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176659043357.20504.5045913090672223451.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d21193e9d0d9dfcc30ffe199a6889f89706620ab4b0644d74f15d9dc0cf763d5
Date: Wed, 24 Dec 2025 15:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766590433
