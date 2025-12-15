Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C54A3306483
	for <ddprobe@lists.linux.dev>; Mon, 15 Dec 2025 00:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765759973; cv=none; b=PX/F3lcSqeAhfjdnPsBU0ani8+VUB95vPbP2AVxo9KRlAnOCwNvrCloD0qAhYRtkCFnyZjy8mrCPqom9FDp7FJPJbwXnJLYB4udNzKgfVca9Z2kazx1qofCtcy9LVOOVcOFp/xaWs9KDOFdnoCJ3gy+uYTZ+AEjUYGIKoOhe9og=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765759973; c=relaxed/simple;
	bh=JfcqILHzUAlKpi8u3rFj/yf4OJEijDMhrZVPvsbZyI0=;
	h=To:Subject:From:Message-Id:Date; b=RwRqXTcaNopkg6gZ2+gIG8XQEyNnemOun16BHHDDR7SA4I2U39GPvdohQeIOaZ1VOworpaGZxjUxuhjSzzj0zO83zaUEq/a9kiyzfWznU6TFRvsprfgynVY8kwkxe3pPMwMVUN4KkgIlvghW3tgxjneE6DfBBayCM5Le5nVD4j4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JrC54i5t; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JrC54i5t"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5421C4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 15 Dec 2025 00:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765759973;
	bh=JfcqILHzUAlKpi8u3rFj/yf4OJEijDMhrZVPvsbZyI0=;
	h=To:Subject:From:Date:From;
	b=JrC54i5t7OIMB1UWwF4uTMLPvQu32qzJtFncRLoSYuJdHEQhViqIoYpsT2OkVDd2a
	 CrU1sJ6JubCeiYrokI2LjD/ZUF9RjDacu9UcB3WUpvz8QbP7h1zbxBYBjoUHtxSCg3
	 D1xwjnjypepJSqhnqBLGxTq/JRhnai+FmnsAp6cMzC7fs/s25L1SQNsThN4qAhwNwf
	 Wqb/eGmkN+Zj0bBNMPdmYdOO6rC2YDWikh4nqdQWZG8TbT9kXkWTuuJI1lZC+CbAFH
	 KvaATeeZ3UVX02lPVA4u1dkodzqgQshsE6sJU4Vf26nT+F4ivfnW/1wXbc5Cow7aQZ
	 b60M3YldxFt6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 977AAD5B16E
	for <ddprobe@lists.linux.dev>; Mon, 15 Dec 2025 00:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176575997358.26421.12499829292897889482.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4eb94798c5cc0e78c62908247df8001061cc8fe3f1660bce01e096f7da824c49
Date: Mon, 15 Dec 2025 00:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765759973
