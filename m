Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5AB9A19D8AF
	for <ddprobe@lists.linux.dev>; Fri, 14 Jun 2024 23:38:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718408303; cv=none; b=jxVSos4bhP7AYouLJ7vTs8ISiLwy+lskGa0aU38IobkKCsr0eptsLUIpDEN6lno8QZ0l3xb+DDYKN+KsUxvb5Ne0nILDWABHOUymDbe+e6BQmUdnqzLRT4SZ+PXI+LZkB7nDZyxBtcoYP6gMA1UsxuWRdxRsSnevhncxJaJLsOM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718408303; c=relaxed/simple;
	bh=k3x42UJwgaWalB4ZYXEqv1WHL6X7StZszSMIMWxTQNA=;
	h=To:Subject:From:Message-Id:Date; b=NLUt6HN2JG1zgg3s0Mdu1oaFgtfa+Oj85OJFNWv0vLZAwyH82ZFdNw0IEkBUYVNmSps/RTn0Cf7PMau8OIUcxcSGQGq5xwVzJsv6duG/A1129JV8tJNqp7tiIQmm9Jv0itlWyZJYYCqMvJRaJMiXQ0DhhoDsh3fuHDADB6dJe60=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kZYzzK6I; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kZYzzK6I"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E46A5C3277B
	for <ddprobe@lists.linux.dev>; Fri, 14 Jun 2024 23:38:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718408302;
	bh=k3x42UJwgaWalB4ZYXEqv1WHL6X7StZszSMIMWxTQNA=;
	h=To:Subject:From:Date:From;
	b=kZYzzK6IFIlUWyDlt/Xzl5zIBWqHIomgo4Pp28uEzMx9xx3b1hMRQecqjcGpmgMnb
	 ELkiEwZW1kf9cKB8Y7/qKR/T/aVdSY30+jqCN0aKCMhRSLvYtop6SqDkA7Q10/uhPg
	 /Z414ph/mCKMlUGOoyclqKC24BvwKlB2mFDOpIexybn7/eww1NHWqd65AEuCsMm0vw
	 WbRg5Za7nXGRt651bgpXUdEUQCBmh/SuJ7Eyp+t3tW1ICq+rcSpYWIT/siCF8S1wxN
	 GYxOBRgz3Ruzxv2z7mrguhuAchkhL9w7smVqXy+EVdclh9PPyxc76wJLcNhi7lyayc
	 7MtfYrsh4I2kQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C712AC27C6E
	for <ddprobe@lists.linux.dev>; Fri, 14 Jun 2024 23:38:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171840830277.13399.688399210669028657.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bab7eaad14a8755a959d93025839f6375498f6614f577eebeea6818d74dbd726
Date: Fri, 14 Jun 2024 23:38:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718408302
