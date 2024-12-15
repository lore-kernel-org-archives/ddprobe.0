Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48004335C7
	for <ddprobe@lists.linux.dev>; Sun, 15 Dec 2024 23:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734306954; cv=none; b=FNQTn3Qpb4raQoPXeolgKyWdn0id255OGqpHRi+0eCRJHrmViXkoELSfkLJ4AdXrMmA/pTeeT5AuYufvHJ2sBv4duwLAvpnDxZpOvm25DKgcv1qSXQaKrjxf+PUmLQjQtaMZzmWd8pWQzIhrW7S5jaxwXWtrC+0LsTSSi6UMRZI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734306954; c=relaxed/simple;
	bh=4nT3NlKHPexBjqQKrXHoF9QNq4tTdWXWupypwwCSrMM=;
	h=To:Subject:From:Message-Id:Date; b=rnRFFJNszzIS8aP9qn9WalgaxqDyUnqhrPe4o77tB8MlrN8znjhBl6yAErgzgw2naZj1+c0fCi3KoRqy2oSbEyZ3eOeFJBQ26Ih45Zoe5hSya0H+eR7I6swW7EOO+vffmwEkbQ1vDG3fMpyVZMLa8V1Fkv80JLV2wA4BHLFgRyI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B9LDkUBL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B9LDkUBL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B88D6C4CECE
	for <ddprobe@lists.linux.dev>; Sun, 15 Dec 2024 23:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734306953;
	bh=4nT3NlKHPexBjqQKrXHoF9QNq4tTdWXWupypwwCSrMM=;
	h=To:Subject:From:Date:From;
	b=B9LDkUBL0nGg8OxAKVV1Dwr+Va/F1/0G+RgY0druwp8EjAeMU2ypMQLVYN5U+zQkC
	 ejMboe4ytrRm9aS+tntd3LwvdcAVGvWdxKiUnq2s8B4NuX2Wz1D04jDmZqR4dJEwAZ
	 LZJO63gnPsYmiKJsNDS+I83gvBnpdh4ib9y2qeqX3zvs76J6IuQ9ibHIl8zVvpCyka
	 16ncVxEn8LfP1U9W1aIlV39JDlqQj2HdH525Vka12BDDMiT61t0186AFDE1g5j2Au3
	 ufoPDlY0cywPo7+sINDixCR00AHARlLYrx0BIJeF9Qf3mZnkBEomMXcEpwHIwl3ObF
	 3gcmCQdKvhZHg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2E84E7717F
	for <ddprobe@lists.linux.dev>; Sun, 15 Dec 2024 23:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173430695365.22660.8340898408289415539.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1f624464c93f661c81d131642d318a4f16d6c99a381028627d92be58567e2a3e
Date: Sun, 15 Dec 2024 23:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734306953
