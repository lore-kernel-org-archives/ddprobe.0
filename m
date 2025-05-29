Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AA661E50B
	for <ddprobe@lists.linux.dev>; Thu, 29 May 2025 01:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748482196; cv=none; b=sivRHBE772F8WjOOiHqDTtN/YfXinNpHznxdYrPzm0HHe6/xuuOGbi9dc6DSvpMZmxuLpECbJ9c27U3J+sQb93FgwmPqIItWd2nFJ4+xeV3k0NkJnTmXJf1kjzFDPPqYzQO5QS4BreNSDVeicTaHKt73RA/L1BczudpAg1UrJbE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748482196; c=relaxed/simple;
	bh=JiG45Bvf9vSI3yw7BYKuJ7n8Izdw6RRJMCI+TQgUNaI=;
	h=To:Subject:From:Message-Id:Date; b=fs99VzhMllNoaNgDhMLQXQoJK1sx68fMhXIyKGlnsO6Aw0q47LzjDXnPtBJ/+c5K5yUlrjTUxLtAkgWhF5SNjQKfI9VWPFEy3SeZG363glMFwOnfHUGZ4Zvo6XrAtG11dTqwCAU0gUoUAjHJfcBvnIq/IBsVI9XDkFxbHPL1Drk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RQrVlRmn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RQrVlRmn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FB7DC4CEE3
	for <ddprobe@lists.linux.dev>; Thu, 29 May 2025 01:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748482193;
	bh=JiG45Bvf9vSI3yw7BYKuJ7n8Izdw6RRJMCI+TQgUNaI=;
	h=To:Subject:From:Date:From;
	b=RQrVlRmnXbcDbdUEtcR8HslTKwStjgPXurvGwrE4XS01fIYPHR2tPAUcFYYcjb/aN
	 /ZZhHTDdMLfFG8ddeA7r+yuwc5h/odElWZZhJnSYtIqYSK0rZsvv4iOBwRPW/Umhdr
	 BJnntyJUXLcUXKRw23xxkvQe7RiMS4Jot7aa9OR5J968yB0zG90jtxpga3aYTzOuCh
	 /f9lDziq7Tf0mND1HCvseWe04EK8yzFjxHvZ+M1tYHMqd0d9NNZdMB5qwKH2qdOt4O
	 FEAq1Kk8pwHv7PpOCN4CWYPb69da2lvaU4o/n3y1oQokpZBt1yYzmwNat3Npu6caBy
	 PisxQURwOIUCA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E111C3ABB2
	for <ddprobe@lists.linux.dev>; Thu, 29 May 2025 01:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174848219357.26302.3722273515792814912.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bd6aaf7743b76d03212b348291df914ededa362e07fa1f357dc144f2f38c36be
Date: Thu, 29 May 2025 01:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748482193
