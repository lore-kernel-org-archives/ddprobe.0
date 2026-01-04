Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 331BD3C38
	for <ddprobe@lists.linux.dev>; Sun,  4 Jan 2026 15:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767540234; cv=none; b=T8IWJD9BT8pyH+04RZsXojAnrmlMCmbCffttkiUZnNWr2Iz+54QITPiMq4eNR6g3GeJGLU0YwFssEOzyNdx5F9TNPmufHLnKXN9Nwobp1GHMVVDIKf2QZGpb9kflnaqJLYjSiqFVZkZoj7YlIdcKkw34JDIgx76WM3lSOi5q8HA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767540234; c=relaxed/simple;
	bh=Uf/HjqOUwUeP8gbSAxHPUtM7jW+ZI4nFnFodfgmtP10=;
	h=To:Subject:From:Message-Id:Date; b=cW2XSORS3LJlQDwH6TWbZkYfnwJmacs8EolrIgFwL3tu1ZJrxXxmT1/oTxQUoNljes7/rS3suuZUC/+joHQReMsy9I7OwcZFnoLOyDo+YdlVHoSIN3kdCixBmwKTM8vVqa8ys46Hhg67nmhQaBGMVXizjK7UED0dAC+3sZ31VkM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZlnYp6IQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZlnYp6IQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F64FC4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  4 Jan 2026 15:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767540233;
	bh=Uf/HjqOUwUeP8gbSAxHPUtM7jW+ZI4nFnFodfgmtP10=;
	h=To:Subject:From:Date:From;
	b=ZlnYp6IQqHOT4QP2Gdz6ViDWVmO+biSKCJHiaa8V9sUYWnJWc/SUSMjBHUIlHBWME
	 QIf/ZyMW2Vm5Ulzi7SaAQDYNj07dUqY16odM45I10LfaJCJ4gyJDX4YhGVGNxG4MXu
	 URAvriSqkhoc6GmMR9Zm8J0s9uM94NYuuGcpoQrTAShoBB7/FapXDTgSWnvqSK90oO
	 5vBqc119vLwQjaYnYmQ3+9k/93zF1sx4O5PpL2Q2A2C/Qjx26l1kYnXfmoqlbd+vIh
	 3CWBbLzCiZuHQkyImpMbN4zuBtg5dP9fEKwYOhZSQZZEUQQXhG4bk4HCMNlMmhOpxr
	 V/pzx9YPD6FYA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FCFBC2A06C
	for <ddprobe@lists.linux.dev>; Sun,  4 Jan 2026 15:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176754023357.22071.12003269524807860972.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4b3d6480ef30b01760c6cfd640f0fc1862881bd06dd4aae5fe0854d3a9a97bc1
Date: Sun, 04 Jan 2026 15:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767540233
