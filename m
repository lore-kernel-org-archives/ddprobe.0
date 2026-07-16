Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 550C72475F7
	for <ddprobe@lists.linux.dev>; Thu, 16 Jul 2026 13:38:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784209114; cv=none; b=lqCaS7I97eiIllnq/6fU/lgDrCVWQLHoMvq7VFnXApi9uwC2PD2CMYJEponCGEDdpgB+UU38M+M+CfCDZcWPWUp1unfClcpAh9wEtpCgv9Tko/F6fBG5dRFxbh94uFymBMYJLqqXaMVh8OlzGdzTZ+IBjlsOBdK7VNVIaID7Xxo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784209114; c=relaxed/simple;
	bh=FzFA54qLZkVxM88XKOrGoqI/eRe5UjdJtqeaup4cyn8=;
	h=To:Subject:From:Message-Id:Date; b=PLoHqwI/+o7fwM0IXzme5EZaEd8z++kd6hWnUkNsetBRrbSNpG3XC/8HDljnKxjBoqHFOdCL5nBTBf6kaVm9TnFZgFhTcW1G2J0hLdUOrfq+yt4DI2NrXBLik5FT2VHnCMkvyor1L4gx/IMjNxbzyISXcBIUVJffC01xotM8TTU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J4hxfEkg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J4hxfEkg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD038C19425
	for <ddprobe@lists.linux.dev>; Thu, 16 Jul 2026 13:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784209113;
	bh=FzFA54qLZkVxM88XKOrGoqI/eRe5UjdJtqeaup4cyn8=;
	h=To:Subject:From:Date:From;
	b=J4hxfEkgrTBRZEEYCVzzVxVCt0oqW8vG47k8TbwT+3pINseB4RRNyEYJV+zSZIGZj
	 LOgQws1SxXNRRqKBumnnQYJntwxKa4UQ/7/1ajjS8TErgtPKC1B+R2BnGs07ZQsuX8
	 rG6tBj0qsOEFHM24WeeNslv8E6Dcq6fhx21kEMUETGbU0tQSL/yWKEm9tJ1epcz5gM
	 1eRZIIHhIunrXH8i7CocBxuYus2YvtXmkZ5r6DGIoHy2A+7hA96jSw+s3ulQSdjHXU
	 AaDWeE5hjGjCR3wU9ImpzggizUqxZHk4kqufqivvXmOD1IU4F2BNKj2uMZ8/ViTMWS
	 y5bAT9fnzz+vQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB4CDC44501
	for <ddprobe@lists.linux.dev>; Thu, 16 Jul 2026 13:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178420911368.5627.263718645208265513.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d9e9ea57f9ba635e4ec571aac5c05467a9360b73e7e5d1ff67ade7ad9c1fab6d
Date: Thu, 16 Jul 2026 13:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784209113
