Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CAA431B80B
	for <ddprobe@lists.linux.dev>; Wed, 26 Nov 2025 09:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764150174; cv=none; b=uC0K4CcUEAJqm+POam+2NR8fpsxz1jVO7QvtHj4qwqc0GTxnJlXGdEhgiYvMRDPF6oWwg4xKPbkR1SCC1MNXrR5zlRPGLEY8hbm6WLlKVX4usFVkcwpNNkUyxovgGJKCX87lCZhpZJrgs6LeXreDM0xBS6Jyq9ahC6PTBfCaJhA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764150174; c=relaxed/simple;
	bh=7z+4t7Rg99UK5s/fKdLqCxyJe30FIWVT48tUUo+LDxI=;
	h=To:Subject:From:Message-Id:Date; b=cNfAfkRbmUw/rn5xpO6wQLfUXKAjKnc8soyfFCfXubXTfOrp3fUpYtciVZYeu/D4mW77+pW9Vc0DtWOjP8AuRLrsOg1v1yOSTjDsSyQ5NajktyA7TH0qearYBflRjd++ifCYaQHDEp5vHoLZ7YqoTiLeDluguEcty92LsUR2MwM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aSPVAPvt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aSPVAPvt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8205C116D0
	for <ddprobe@lists.linux.dev>; Wed, 26 Nov 2025 09:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764150173;
	bh=7z+4t7Rg99UK5s/fKdLqCxyJe30FIWVT48tUUo+LDxI=;
	h=To:Subject:From:Date:From;
	b=aSPVAPvtxIR2XPEBRC0bzhNbifSLzhOHERd4/TZ4mXsaaSNZeNcDK6I416JCJFwN+
	 2aWMO8SK8/mZ43ZwKCNmB45ZyuRlOoC8n6HtMKPQPWb7Syaks5/dvh6nwCrRCMKT+b
	 XaYUb0TDKzp3GqY5cNtNYSN6kUAIWuS8XRjyzUcmWOqMqdPgkfFJXpLXtCHIMYnBDE
	 09WD+3jbEnHstH522XoXTwj3kaRIgwcOVZhsxfjLH2ZdKHSHmzOkkMZ65zixUI0N4a
	 kzGzB9zIQnNYg8SyL+v7E00ICeMilM7PUxyUcBudBTKhw5nY2hGRbudDm1haKu7er8
	 CA7LJJEE31gpw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98F61D10390
	for <ddprobe@lists.linux.dev>; Wed, 26 Nov 2025 09:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176415017360.9678.2750294080422935003.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9ced55e90c398fa2090126e815327bb3a927b3b5e957855fd4a495faab5de320
Date: Wed, 26 Nov 2025 09:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764150173
