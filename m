Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E130B674
	for <ddprobe@lists.linux.dev>; Wed,  2 Apr 2025 20:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743625194; cv=none; b=aYd8tWqSyuJP6NBokkbZ3rC+TKdGHktftMHQHe1kNU3uyBr6fIaxCSd1WuhYZP4xeRokvQgx4kwfilm2ucz/hxdBqt77JbUFX/hSY30+dd5wgjO2RNNbzrtULdoLra5GVqRJ+qKmUaTWZx/okqritz3/u4MgrGwHSELOSChyvmI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743625194; c=relaxed/simple;
	bh=DqffIRHbic5YgLtlpVV8VSbyzcbWH+HkWtNeSQL7740=;
	h=To:Subject:From:Message-Id:Date; b=tHaCl/Xj4ACS9vl1riGGb2TR11mwOfjha3oMpk6Dh3UDM7qBuCNSU0yDDj+U/0pCrpZSilVPo5Jfj35YXL95ohF+m46Gl0BEsLF1pj24bEhMVGYljVCiBLMb/Dd+J/wkNTyQ5THzZbVN9npWyF59D7VGTG+6pEay4zGw7bZqI30=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OY55DYYu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OY55DYYu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD2A1C4CEDD
	for <ddprobe@lists.linux.dev>; Wed,  2 Apr 2025 20:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743625193;
	bh=DqffIRHbic5YgLtlpVV8VSbyzcbWH+HkWtNeSQL7740=;
	h=To:Subject:From:Date:From;
	b=OY55DYYuYvkISaymxi5mGkEG01MKMEmevkbpxVJZ+rz/7w71ukC6KrqZuukNzePNK
	 lSMJagWNftwrKlPsRC18uT1AvDLHjYBVWsTBj2vsJp1VODX2CwCaAxECvRxLpKRFp2
	 Fh/1Psxf/VZ4vC3vhfMGYl8SkPzg1QcDb1sShWLe2Bvr0abfowiG56yhTkRar/yOTg
	 m5mq+4VsFiHJwZyzwxoJ4K7qM5BqEqK2ywJPsFunTFZ9SQBDG3lERhGeTDmrUrFAbc
	 gTwB/7SlmC+ERD8M9KEsx4khMQdzXso659FcmLauQantr460XyNRqeTdqcvJNJtGtD
	 X8aOFsV6n7p7Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A6C8C36018
	for <ddprobe@lists.linux.dev>; Wed,  2 Apr 2025 20:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174362519362.19767.2476019485775148077.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3da385e75018f663549fb390d9006ec76ce7ffbe044abd4be6cfcb7443fd959e
Date: Wed, 02 Apr 2025 20:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743625193
