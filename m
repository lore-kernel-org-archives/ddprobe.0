Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2654E3B2FE3
	for <ddprobe@lists.linux.dev>; Thu, 12 Mar 2026 07:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773302094; cv=none; b=USzu/gueNv2Tn8N+sLZLFKydbcFF+I28WFvmCJYRLhAZ33w7k2MW9LZYh66oC62+A3D7QyXRXaSEh0vAtsx4ddT+ufEmMWY3JLNKkCcv5V/5ikAuTjOoqEMBVz3DcU9/9Fcp/WWEfWyANMQ5SRtrasUp2AX2PnwToqDX88PIeCk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773302094; c=relaxed/simple;
	bh=QdikQaxDFkClD9DocZoEDNmXf9ozL9OfPMzxGwyHqSA=;
	h=To:Subject:From:Message-Id:Date; b=erkjqrnnZwd/6JghMpM4wjel/Fxvgj6PzzdViQWWabaXEszMct6VU08aak5C4Sfmc39dBf2pzviJdYQjzXR3ssMR3pxw+6sE/caV9nAHf39Y2FKYpQmAM6YqyVuDTI9Kk3KgdaEwN2uK9h09GNKMJqAlgVw/qFMNIx47NAjZd/Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PIkIYfZv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PIkIYfZv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF274C4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 12 Mar 2026 07:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773302093;
	bh=QdikQaxDFkClD9DocZoEDNmXf9ozL9OfPMzxGwyHqSA=;
	h=To:Subject:From:Date:From;
	b=PIkIYfZvff7QsEIaiOISmWXSvUcvVeudHR6bXal6RcRiPLGmZr8Ouo0BHSUY5USO7
	 RTwyKYfP69l6CpdID0dWe3NjGK272ZAglLN0uh5K3FwpCZCSyzvQcwtZfBmbpSfB1r
	 VmU5LPe5kNNU3cguTop8cUY5qEz16PICAxZK1Au85Dl7YFB/tdZP3jVVpUstmzrLH/
	 fDwv94bYHR2E/0UfZzOoRYDJ1MpGe2ilQ9DZVyPZUTRFblR7DfcqU84Vr5m3Vr+cCm
	 6fuMVVSOvAmBiN5mvPpdjTm3sCkEgo03wEYiQ8FY8YcBXXlnmXIzxIJuqybwzHuw+Y
	 nikqmHVlfTbAQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97F4EFED2E1
	for <ddprobe@lists.linux.dev>; Thu, 12 Mar 2026 07:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177330209361.15084.12344503286472239397.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a8f866fd1e8a925da3011ad5099577df7046ec0c279398e4c70b72c770545608
Date: Thu, 12 Mar 2026 07:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773302093
