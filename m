Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50BD317F369
	for <ddprobe@lists.linux.dev>; Wed, 17 Jul 2024 10:55:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721213723; cv=none; b=Naz65Ijfp7yp4wWVnQVKWUtvewA8qUZO3f6IrsieWq4iYGjwJB00wSyIamVxguHVI51LhZV4Wz0ckfxFRyjW/PAhrRuRbeOLc1ove8aOEpLxG9n0fxUmVj8erglaflkfBp/mrgpb1E6Yw6KxsRdGL9rukRgwA7UgOqMfbwBIyP4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721213723; c=relaxed/simple;
	bh=mcH0cI2KpFs1HKwdRQXEfuPtLGowwoTYKZ7lhQb23yQ=;
	h=To:Subject:From:Message-Id:Date; b=tESSfrkcFLxTD7T7tD0gc77/UQkt1Na0mUtdk0PAEdks+TdQqB1rWljZauKFwL8XV/DS5xGUhVinhTgckxAlYCTDML8py9ReKBrTu/K9459SQRVGEZEt7Mvlki6lB0FTI8MeKUKbotCr+YnNyl4aPisE/xgLfm80AcqqvR5D5iE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bRVs5Mdz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bRVs5Mdz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC907C32782
	for <ddprobe@lists.linux.dev>; Wed, 17 Jul 2024 10:55:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721213722;
	bh=mcH0cI2KpFs1HKwdRQXEfuPtLGowwoTYKZ7lhQb23yQ=;
	h=To:Subject:From:Date:From;
	b=bRVs5Mdz5F5IKiJGDopEvUhNtCQUWQ9QInAPTl+10E86kj53YI0pFTUX09yoH4e58
	 eLeZzuA2bE3bBTRzQDLDtiEH+ILKqca1pKIYcGKgJ3ROl8J32xXh2Fh3PgEhr6TKpl
	 WfY2MkpB34iDgsZS0kzoH6zceVszz+PD6+WluHGZbzrrir+pqnCNR22xaZ8rphe93q
	 +V2LIOnOxjmbpSjaNSsxK9cLEBr2DIRFT7UoN+wk7DgPKvzgXijWZNrssFjQ1dgSGa
	 NcCwwVHe8haftyY8cGVxHN6CYALSKdx89ApPu523Fy5ddFNDDcARKUXP/sAvMytocU
	 cEEP0m9SOVbow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C692FC3DA42
	for <ddprobe@lists.linux.dev>; Wed, 17 Jul 2024 10:55:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172121372278.13740.5876242179235241984.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1ce8a49cee1a498341d82b06691492c6d33126a77d3c4bfcc53a0d5cdedf5546
Date: Wed, 17 Jul 2024 10:55:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721213722
