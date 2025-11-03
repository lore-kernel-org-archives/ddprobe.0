Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AFC3280308
	for <ddprobe@lists.linux.dev>; Mon,  3 Nov 2025 04:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762144194; cv=none; b=ONmsn7wYbq7cz3YNse4i4RINjUUkxjR8849mD1xLyEdGgYeLVaCieyh0mMzqMT8EI2CrzJXa8G6S1vJKd+/ymEUhSZbBDuECJpcoLabT+Ph7VvrFh7ZbTc+0p8O4/MN+7zJBpoGSJPzoSUIHNePIwVjRSppzaD5xSe6nwCrtk5I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762144194; c=relaxed/simple;
	bh=KsP4JMj87eYun2HkngFv8oBIzmxp9eF5q+c6/CbW3nQ=;
	h=To:Subject:From:Message-Id:Date; b=hvy/nfgJoGguC6eldh858AUDNGoixEz4d4hoZ4kf0NHeuEW3SN/uT8PjgUZyHH7pT/hSIaStLWH86UwKWc/HNlaO15YwXgC4koBRWDJk9eRBaR+TfBHrYfkrJXQqUC/mlCfvj+yyjLYmEqaVpNDOUMeAgnofn/F19JQK5HBM4DU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k+OWhhAE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k+OWhhAE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA30CC4CEE7
	for <ddprobe@lists.linux.dev>; Mon,  3 Nov 2025 04:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762144193;
	bh=KsP4JMj87eYun2HkngFv8oBIzmxp9eF5q+c6/CbW3nQ=;
	h=To:Subject:From:Date:From;
	b=k+OWhhAEKIqFfzBJumPZQgIqUUA2fCm5zoDnTSe8T7sXY4YrB/RR/aCxjwGKzvh/Z
	 50/JLjEPkY2by467QvhLn4rx5sE+k+SATS+dJBlJFuYJzVTWEGcMfBgJsuR3CQQKfY
	 vbPRVdhV8LCE3hGl1+acFkcxKUzEEqJypOnc2yo3T97BwwADtDWeHKKkrtFVMYV2dY
	 IOG/IxAIttP9MR8pAx8wEFylC8d2JZDF1ltXARX/lPj2ynbRHzAJQgFNwr1hA59Wiz
	 S5tes0zdkfq31OMAYwb3BbnUV1M5UPdeeP25eDUkXLcQwCf72tt5fr4994Wc7LVnXZ
	 rH8sr9lwvuYcA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97E74CCF9FE
	for <ddprobe@lists.linux.dev>; Mon,  3 Nov 2025 04:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176214419358.21190.17622662312017990472.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9c25382dbeba12a9578904b8a61f4b61c71607086b3edaea0f13ad1e33d3f868
Date: Mon, 03 Nov 2025 04:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762144193
