Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53F3A377ABC
	for <ddprobe@lists.linux.dev>; Mon,  7 Sep 2026 14:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788790834; cv=none; b=fMVD6upuAE8BUCf4Qqb/7uI++borh+MwWHRKjzQTjHx2GQsDU4/Y4L9PM5Q1fxe2MTeljUOzqkTVZxmJODsqCwhHDzKeLjMHyG8U4Zq819XmyexcSTb/1qiiiNXHOxDsQVZVrx4eG3PVESaf65vpcK+YOO9U0oI8mGelhbnyCZc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788790834; c=relaxed/simple;
	bh=Blp7gK09Y4d9NGBlxaOn0h4Wg2Qpbs3kGWV+17hpiRY=;
	h=To:Subject:From:Message-Id:Date; b=LIN06f8IXxw/H5pZIXZ+7S+xcd/SYnwiEmYtPf2nbCp7IQJ3vxKBVxuKwgObufpjKfsyrRNAdKJwjK4M4glm1vRerKb9kv1LDCH/v0Ljcn66P6aWp4Bzp/MNl7Bj3BETRQYu01CxzjnmiLKtP8h+RbwAMnlfKq5dQ84uyMiANv8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sduP3DJt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sduP3DJt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2DA6C2BCC7
	for <ddprobe@lists.linux.dev>; Mon,  7 Sep 2026 14:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788790833;
	bh=Blp7gK09Y4d9NGBlxaOn0h4Wg2Qpbs3kGWV+17hpiRY=;
	h=To:Subject:From:Date:From;
	b=sduP3DJttuRhmhPFPRHgxdJKq/oGarOIYA2T0M/vAz3U4GnZ0ScKoVPwOYSyoGlS9
	 qixhEwKhA1b8ptmsY+iVfddujnl8x5jz88ks8R+k1GLa4ovDF0lu8EX5DtXnI8U+gF
	 hJFwUoOCNTfkfWL+lHNK+WGRDMcoGb/TUhTnkuWa5G+rU7UUA+T1l2f+R1yOmw7tEE
	 7pSJSo0Be2FlLrvb9rwRxAGcRGrI23YyOW+jjpmZnUS0VHUPF1qqOndt02IkD3OoXy
	 H87SMwtf3+Zq6vBTEshTVKsj5iJzTvMpjKQTPfvf31Jmb/+VhhuNM9WUHR9GU3ThuB
	 OibTfCEDoZWoQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B07A1C79F99
	for <ddprobe@lists.linux.dev>; Mon,  7 Sep 2026 14:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178879083371.25929.17097385312315780394.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5da6c791492b88c4a6fad19d26b5b6708e3d0c2b8dec7f2f91dcddc3545bc67d
Date: Mon, 07 Sep 2026 14:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788790833
