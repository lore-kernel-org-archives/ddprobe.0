Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B8552DC76C
	for <ddprobe@lists.linux.dev>; Sun, 19 Jul 2026 22:38:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784500714; cv=none; b=jmSf1PYbD/fjyLMSGme5/zkjkM5ADc6GFIFa2XdWHrGkwzAXMRFEL7RjMOo0j1KyZRdf465YzhWnrRXtDFJm7PQ6jcmGy0UOkMqBv7evBsphG5PMDzMPlNo3qWPuOJTMXZo6JLDCWowz/FbcQHV9mgus2vMluNZMmIYYEd0fqeY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784500714; c=relaxed/simple;
	bh=bvh5LdzmKPOo4tk3BCz8Q+53ZxKLmxoSviyU6b+7jYY=;
	h=To:Subject:From:Message-Id:Date; b=C1TgiQ1XGcOKTPcmZqPMgFIJGI2HzcsYyT2oT4eXnU3xEMR3qrbPqZ+MIIT+P0/yq8yAe7oGSdn4EueHCRveS9a0/yDmXhVZKOMdlRRPZBpLw6hdwdJmQMb8DZQZ55MlWkAB8weH9NhvrVFo3l7lwyO6Frts++gWTIrkS6ylwq0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gKSKDzSu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gKSKDzSu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFF98C19425
	for <ddprobe@lists.linux.dev>; Sun, 19 Jul 2026 22:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784500713;
	bh=bvh5LdzmKPOo4tk3BCz8Q+53ZxKLmxoSviyU6b+7jYY=;
	h=To:Subject:From:Date:From;
	b=gKSKDzSuzJxzVFJsUzF1BZwVS3sYtlq2x87KmOW7w/JPKU2Evc37QhE8FPL5FZ+Ph
	 QSLTi4Ww7+K68mgwaXhWlDO6Gw6zz71BN1szJEf8rBhj5kdbNL2hPPILKRq+PZwONO
	 lcpB3BV+31fQXMX7JnVTEbo5Cd0/lUQJ4dSGb2+N/z9bx36rGxADMVFfQsX0W4HXIW
	 mqjbn4lQDLhTKp8AAEgpfdDdkhN9drqq491c7IcLSC/aslw4l/yS0YGA4TN66K5TO2
	 080d7ND3N25gmadbgEhxrr5VmuA8FlYM5zbQ6fOe03M/b7UX6pURnaeKKxNXdOgL6X
	 KScIjg9CI8DOg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADE32C44512
	for <ddprobe@lists.linux.dev>; Sun, 19 Jul 2026 22:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178450071368.23683.14656635932447290526.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 403b65ac0cf105254d6c91fe8c7cc7fa6ebf1b8340e375440ef7fdb48bf8d7d1
Date: Sun, 19 Jul 2026 22:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784500713
