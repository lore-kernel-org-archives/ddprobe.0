Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29547184F
	for <ddprobe@lists.linux.dev>; Sat,  7 Jun 2025 09:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749289194; cv=none; b=jlxr6t4WCNmlOgTbIcC95gKUZMaY6IP1SiYb6mFwOpVCTP+a/VFlnBx87nFa1Q9GZF+BDYVxB0eVbu8Is6yc3+AOEMwFx8gVFtjMGicGi0KcoNDAFBdma+lWf1rBwPIHvxtjQo0RBym6Q6cCtTOy3VJCIX4oC7oWWf8IUBAoi9s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749289194; c=relaxed/simple;
	bh=x14FkZ0/KFVcbEggcV4uI8H+unxZjZ9i6022Ys6gFsY=;
	h=To:Subject:From:Message-Id:Date; b=C/gVIU/qLPle8ZpgO20SdyO89LxsBc/ekLPKkBFevRqhHhv/3N+topx/MsFiznoP0HY5Iov9rGVXSDlvkMoH+Yc+hhF++DaFGC3AIFAyWyLy3adH9aewqOuPL0/zezDGEcRSW8FDey/msfy/hKIGfGt6RDGrylr3oNNlgIA+m9E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E92w5Y01; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E92w5Y01"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F7F3C4CEE4
	for <ddprobe@lists.linux.dev>; Sat,  7 Jun 2025 09:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749289193;
	bh=x14FkZ0/KFVcbEggcV4uI8H+unxZjZ9i6022Ys6gFsY=;
	h=To:Subject:From:Date:From;
	b=E92w5Y01re98UPaQ3i5cPKO4v8Vl+juIaBZGUKjfAb+h1rt2t6Ji/J956+n4xWQvM
	 YfO3cmKjq8X7gJ2ol17tH8vkun1sbI+tuRkZ1fI3GyvmLA0MS+fdfdumCNIM3A2Krf
	 57lt0zKDGXRAf2VA096/A5hsOyVOYU1pLPV4X5nsQtzAIJc7WFTpUPeKbZKyAE2huH
	 Pj//hMRcZGJBj4JTJTvNPKjq2JAu0HkjHnm/PfYQDjh6ySsU0/TuZVza1y8SQ+I+bZ
	 sHVLsPQdSqc46PdzXbXnM+xL3+V+9IURDe8sLZrYHO3YotQDKfjlA9HhZ6okfywHAc
	 sMvPFu0AhWZ2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FE94C61CE7
	for <ddprobe@lists.linux.dev>; Sat,  7 Jun 2025 09:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174928919358.31061.15121321694212009542.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 28da8ccb466669e98e4106c3b9f1d719f75dd46851aeb28cfdb1aa2c477f8b3f
Date: Sat, 07 Jun 2025 09:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749289193
