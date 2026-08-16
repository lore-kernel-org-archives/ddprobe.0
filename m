Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A9D8215F42
	for <ddprobe@lists.linux.dev>; Sun, 16 Aug 2026 17:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786899634; cv=none; b=A5QqDQT1XM2qB+GnjAIVzuVfuet+XuvF+4M2f47lkESlwsexlULYDenW4/18QgPetVC6J1ncfI9K5ZHPckgOGbresBAlk/n7JjjIPnhTslwzUaKlXPivsT74mh8vm3QVMnPwXJBE3b/QdhuekAUQLV3yfnjHZsPKlXzHYNppvZk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786899634; c=relaxed/simple;
	bh=Rd95XfzChhQLjQM5z4qqcKp+EZDG3WUx59WWGvwuxj4=;
	h=To:Subject:From:Message-Id:Date; b=dAgzNDWsXaASn4WxMbMOt72sCkJfJbn0a9asdFijRPN3h0YXSVd2LlS3ytpdttjnxkCZ05myjxLr2CqJXQEyZWiKdXiIByvDo7qHpb5kyviePodQ/3Pnn9gvI16nuDIjyjLMRZlVGQB/Jg5Phr1ohgzN7jzYKF+wqxR5q9g0VFk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ovAyl0Ye; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ovAyl0Ye"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DCAAFC2BCC7
	for <ddprobe@lists.linux.dev>; Sun, 16 Aug 2026 17:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786899633;
	bh=Rd95XfzChhQLjQM5z4qqcKp+EZDG3WUx59WWGvwuxj4=;
	h=To:Subject:From:Date:From;
	b=ovAyl0Ye6HdLiNOlHQFH4RUMWqB0jVbUfOMNQ3pmbE8QxD7v87a/MBo3dUqC4Rqgs
	 YeTGWUNXejKPkWF7DGbUtknFZEdV5PXBtlBmqgvma2hFEF1HtStgcThYMP5Ehu3Mn2
	 obg8tYFPptVmasrIoFbFsNqCP06QPT2iUrguioBRiqGq+WQMLJkulSFhiv91Qpxbt0
	 Stoa6oPdh7lBk7TG/lOS8/y7joOYiOZgayPz741wEG8FMEbeXr9ADt9Y0eLw5JXB1q
	 M44DWJRjtDWqO8dfjtqxR454o7yuDTlSmFQx++5YnLBomUbp6Ncqa742EkPOUGgesM
	 A2SR7Wx7pfwgg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1722C5B572
	for <ddprobe@lists.linux.dev>; Sun, 16 Aug 2026 17:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178689963368.29552.17915288475309986008.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 743cebd94a24fd875e4f8709297aba20989676b10143f6055ec7882e51adba3d
Date: Sun, 16 Aug 2026 17:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786899633
