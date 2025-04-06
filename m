Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B20720330
	for <ddprobe@lists.linux.dev>; Sun,  6 Apr 2025 14:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743950994; cv=none; b=MH0bnJM5GizuRZ4yvZrMn78aRg/2kkk/QALG4/c8+/MbRs+VxnEpeIyB1QIaZnEMzn2nTtINcj3gZe9B0y6FpSB6EfW27tf5wwx3UNQ8xvJ2u6vdrwbedGEmsDSGAY1mpdvEoMtUKD4YGgyQ8c3WXbCEzz6mjwdGQpHqVGFE4UY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743950994; c=relaxed/simple;
	bh=mY7+DvC7+oU7KmMc3E32q7zBEoPA80Dcyh2ioYQQ/jc=;
	h=To:Subject:From:Message-Id:Date; b=KIfeuPf9SmKuXHAAuoyshn6xKDBp0+S5SagstPjrDwKdNQp2sW9gDh3K5Vwvrn/akCwHY9s/qRAUXh3moNnSp/VjWjMyeQtR3r0SVpbC+Ri+PhXaVW69ycF9QEjV8yvJARZl15wFzXZghRDIUx/vxXxama+OOquqyPY+fE3+rvQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JjLtqNoK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JjLtqNoK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C193CC4CEE3
	for <ddprobe@lists.linux.dev>; Sun,  6 Apr 2025 14:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743950993;
	bh=mY7+DvC7+oU7KmMc3E32q7zBEoPA80Dcyh2ioYQQ/jc=;
	h=To:Subject:From:Date:From;
	b=JjLtqNoK8WXgyPJQOhJ3W+/7hgGkLOBIgbu6opGWSQK6jDZ272WGXVKsJt4zZXgfD
	 26UjqA7bscUOq1k9INPm+1p3xlouJbBGE7G9r4QKFyllqB5AYuLwRd8RXX1W1ctwkI
	 DtlOYFSH64lzYZF9vpcrJ6m5LeusDftKP67Q9tsHRWVKEctFzzNNm+nTDBTI4DgeaU
	 vIczW2leS2lle9gN9p4i24yylLLCMZc+dlyVGFAoVhyOnvz2X/R75kzj58mUCDbNR9
	 8HCsPlgKgwLYvaYZ/PX9pcf+9af/MPzbtYX7ZJFBxXWJI63WkQJuy5IqQXXxnUAfYA
	 9ObyoSKPIdbbA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2E50C36002
	for <ddprobe@lists.linux.dev>; Sun,  6 Apr 2025 14:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174395099363.16071.12370356239646052856.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e38b3347ff431be0ae63c5f03044ac73f1e0a06857817d7d16be422e32718d76
Date: Sun, 06 Apr 2025 14:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743950993
