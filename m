Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1308A2777F9
	for <ddprobe@lists.linux.dev>; Mon,  5 Jan 2026 10:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767607434; cv=none; b=bsZ6IbyBkQiLhNvW2GlH3OeTmzxf8rfdM8wSLVHt4/dTzheOmgpu7+SLCa2VtJOvtIGS3v93+viYuRfdRqWsyYSrAFkBW9OpQo6JhGwbHbJNpM7GNd5TT0eSk2RNjt1BsOyd8DRxUsvnynNii2dIzdnYOR5nD0RzUeVAalkQGtQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767607434; c=relaxed/simple;
	bh=qQARJ0AzKntNGKTBTa5Ho1QT9RFlk6aWxLhce2TsbKo=;
	h=To:Subject:From:Message-Id:Date; b=Q52lb7i3UfBRmfoLht97NEERwnJhfSUxyQlanCxVuIOLGxdLN5FqZVISpC2cqTYud8FhVu/741uO2+Z6xak3TfH7ntI24+SIP0G3FnvM8uEKJJm/B2XWy8NT4u9j8Om6uXJXfnp9or9i8sHJDR3JrhJhDFKgqiGtvk8Lijgp8rI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iI1uFYSC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iI1uFYSC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E308C116D0
	for <ddprobe@lists.linux.dev>; Mon,  5 Jan 2026 10:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767607433;
	bh=qQARJ0AzKntNGKTBTa5Ho1QT9RFlk6aWxLhce2TsbKo=;
	h=To:Subject:From:Date:From;
	b=iI1uFYSCh0oclN3v/p0XRKfOvo4PX2vpLwv4G6MTyZzuZztGues5cnBe04QShryJJ
	 DXN249P2bYfzp5nAxzB/7Fm1jwrits7+sPRzX71v6k2tVsDuCi2CgBZqr55SwcjhJK
	 gAhHd04DXqVXBWn2mSvXEj102WOeS5LJMB3gzYS3ebi/8zVAngcQt1l4eC8yfcBu6H
	 b/OjzNk4C8vSW2JX5XgiGjXgLmupEQRkzg9NEU2GJcKeHJqo2QchZNce66VG/i7hQD
	 NG+xsvWND+fT+LJ13OoiXigDUwaVc3rpARnctC2EkdztUgadySklzNQh+R5Y6adwf9
	 gScrF3toxGgiw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EB44C2A082
	for <ddprobe@lists.linux.dev>; Mon,  5 Jan 2026 10:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176760743357.581.8458392171022245993.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fcfb266362cb4fb493b52ba6c9f1f58947a99d82c9a3d97e710cd95817a8abe5
Date: Mon, 05 Jan 2026 10:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767607433
