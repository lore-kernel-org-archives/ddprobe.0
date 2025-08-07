Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44C1214D2B7
	for <ddprobe@lists.linux.dev>; Thu,  7 Aug 2025 01:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754530794; cv=none; b=tIIs48H480fAPvYM3+XJaty0E6yXwREDZf7ZidDBZrNBlDyEA9tvCJo3D/vRFcDg/9VuDq/VyUEb83BU2XMYJ30+PaNfFYlGA9tvSx8w18p+2+z1GAw75L4c0soIP+IF+fPsWRb3ckwFq0+hrz7lPG8ATorflSu+9jpvRkql0Ek=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754530794; c=relaxed/simple;
	bh=FW9pHQa0Rji+8FX3EiX3Md6w33P6CaaFykILsJEgvG4=;
	h=To:Subject:From:Message-Id:Date; b=vD6ZSNxDISgfae9LszvQn5jfvml1CyHsVt54RkVrBl5VWIYwMf6QcogXRROu7n965iKUnnHLyFs9vIS2nQ6JfUjsn5oDvL3HHM5L64delwzw79yJnATDOVCnL6OVJrjwk+yG+YDffiF8oTk1qCYhS/QILYN9TNlzXaStzTVNM10=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BjXscBdG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BjXscBdG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B41BCC4CEE7
	for <ddprobe@lists.linux.dev>; Thu,  7 Aug 2025 01:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754530793;
	bh=FW9pHQa0Rji+8FX3EiX3Md6w33P6CaaFykILsJEgvG4=;
	h=To:Subject:From:Date:From;
	b=BjXscBdGGx6PYtDlzTIOVOkCoTopdr1Ot2LtyA4MYHHzYd6+n01JIuM7EAXjiusWO
	 n0HBXq0fnHJZ3dQAwOSWKQvA5VuaxOGKudC/paUS7LO7DowQpjAJs0a/PLqK5JMo+7
	 1ldBb6hulIvwW6SSmujAWOgMbYnQGJnqvM7FMiTl9G6tvUS18w0Mntpt1/SN/6ih01
	 oDTo0a7k3yhVuHIrTSC3bcxuFPgaWPEE6o2o1SPBODACBH4vuoKsgGJhx2a+efnN8N
	 iAtTJdYGwZuzX6IESWswDZ1rv5SGgbr1d5f8UcyGB3IDWqcGQQbn+QnsjtH3h5Qd79
	 Te2dymfkQQ2rw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DDDDC87FD3
	for <ddprobe@lists.linux.dev>; Thu,  7 Aug 2025 01:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175453079362.25213.9539846676878164914.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 812c433ff9fcf264311da9c58599107dc7c58f96d3ee9bc3b6a57ae52955a449
Date: Thu, 07 Aug 2025 01:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754530793
