Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2833A285C9F
	for <ddprobe@lists.linux.dev>; Thu, 27 Nov 2025 19:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764272574; cv=none; b=egAsFPzGHjsAP7zDqElnc6XeSq/NU2GM0eeTCZfb2GQYnp+kySuHpCxTdQKz/MSqA9x8VSRF6JfSxJDeigx9bbmvs8XE3UacYquERDnlPHVzNLYI36b7jalC9J5zs/i+Dp7MpsFbihxNOyQJ6KdQMkka/RDim9ilWEuq0yGZsT4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764272574; c=relaxed/simple;
	bh=Zfy9tS+RakyiAcd+YLjUZXtgH106Z+71xdBkTednn/Q=;
	h=To:Subject:From:Message-Id:Date; b=e9lnETAdTSitKKSOG/oVMHgD1RHnKexFqKeUqGBVd+2pvO4vPuVS2EO+r43BL4pYbj4RQ5lin1sTyqiXVA0jzdLqJAV+81cnx4CXXZjME1GHN1X8nVRoK8/BPD0hZFkIPoi3n/1ytKsYoyJjKkLY8m+KRZowNTew+Z7U4Pthl0M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vBFJwZ86; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vBFJwZ86"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A24EBC4CEF8
	for <ddprobe@lists.linux.dev>; Thu, 27 Nov 2025 19:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764272573;
	bh=Zfy9tS+RakyiAcd+YLjUZXtgH106Z+71xdBkTednn/Q=;
	h=To:Subject:From:Date:From;
	b=vBFJwZ86nJVRpEY18vCGOfHCEt5coiLl6M/LUbQ1ab4xoI5qjbxCai70Ktac6bBuz
	 k8DM1fPAMEi0miqmT+sbwr0TmR5jW42uv3sTIU7UqYBtLrt3030+oVFj77Oag5t6JH
	 FBg5pnjfhXbNhwkhvtvhIHzLiSiwb1NGL610I1kSIA2iSUBbyHbPKe5hrh27LCdtIe
	 gkYMDrK/DQ1MaUCY7P9DJa/vL5UQjVh3+dXn1rT8dxubVEHG1bIirclZV5YBSByLAo
	 yXMTRgO3f5sjUUFBoAFDtl2HpMs/ihXlNjWjPZ9zDLNX0hDfQ+x/BBwz1CuB+LXBOC
	 +eSJ+GVpXsgbQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FE43D111A8
	for <ddprobe@lists.linux.dev>; Thu, 27 Nov 2025 19:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176427257358.30152.8319321254305912598.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aa30ff3942db46b962c7c981d15de0b9b081f66601f6aa51664e2ae773ba1df8
Date: Thu, 27 Nov 2025 19:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764272573
