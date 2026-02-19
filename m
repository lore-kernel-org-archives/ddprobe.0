Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18B2F2FE598
	for <ddprobe@lists.linux.dev>; Thu, 19 Feb 2026 10:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771498494; cv=none; b=YhthyWJv8xc9EZ1ErFDHrJ0FsFv8r2B1QZ5c5CSFYXEDhcucHZOAAI5zNx+aLrVYyQxXPzUcFGCykFSu+DAVsB8/kETbvenUfhuoD5K+oKj8zpWSSQc77MQU33uuUTgL/HKVgshTtXfYV1XfUYwC5LVLwDiLwn/ay3vYs9GOSSc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771498494; c=relaxed/simple;
	bh=3hvw1v7gIuoFkSsYRxeFxuQD6/4UGLZttuSWPoQny3k=;
	h=To:Subject:From:Message-Id:Date; b=FElJAT2+gdRGmA7OaLTdxVdgqmEPTFmc/Yl6KzEbX0EQIVPJqzqjkCuy4KwblMz9mdYkriuxoqKRsEXd2OJTnBtRxR3Jqdf2+bDkn8mlE6NbMQWUpGIXFVDiXDMGExki3jwLp/OcRjVsxjAl+D7RErslRFUuDMszGXJdH6fO0yA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HHtDU/1Z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HHtDU/1Z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF7EEC4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 19 Feb 2026 10:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771498493;
	bh=3hvw1v7gIuoFkSsYRxeFxuQD6/4UGLZttuSWPoQny3k=;
	h=To:Subject:From:Date:From;
	b=HHtDU/1ZO2y7BOBuLwjJ6U8pviadVlg2wmmqJKECAK5HzGvNrNXlEmtT+8yDkUKLo
	 yvCnXhmG1nu7f+hMFga/8VsRJmePeN63o5MYa8s3t9xo8PCBqH292ItdTdC3kb0mMC
	 apRYws4XbVhTABDsqGDcbEkLSqMj2ms8g2WVl9bkderp+QEhimBGlvgvn4Tq1tKTYw
	 1Kf7VPKm0YdLNsFK/vUzdOo6YPUZ6FvrxQbUIf0IsdPXcxsdK8++FPePNv2eMhS+mr
	 lHdNt6Coxsd0ZN8nJ68RBNrtqBYOcuih1pDWztXBJ94c/Hz90ADTdaDwClFv0Vz2X2
	 OpG8CPxSIvzqQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97D4FE9A04C
	for <ddprobe@lists.linux.dev>; Thu, 19 Feb 2026 10:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177149849360.4499.2903496238355542349.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5476a78574b038f94db5c89da551822c8b29f64eb996dcd630c48a9d5434db95
Date: Thu, 19 Feb 2026 10:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771498493
