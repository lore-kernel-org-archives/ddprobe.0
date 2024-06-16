Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 68CEC225D6
	for <ddprobe@lists.linux.dev>; Sun, 16 Jun 2024 23:58:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718582303; cv=none; b=GqTkNGPC9Il4CMPJFfor9EXduYVwciJrlLGQE+xOjcFv4DGex+19B8QGnwCPsKh1fFegQQF+PZWyLD92cX7eB2/IyKrS9AKOuRVxL8rhdeA5ypDgUFDG4NBahJHn1K9MGA70x6aRBAj7UpseYr8QnYgF/PQ7EeFORYfkL/6LkG8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718582303; c=relaxed/simple;
	bh=qeM/8NuQrMLXlLl1G4GypOGJHVGEdV2BAR6ONjz6pfs=;
	h=To:Subject:From:Message-Id:Date; b=mKqdBFu2Ice0VlTopd1hHSu1wAipBxpVDHghEpv7glakVtEp3uZ0UCZqcEAE+ioiId2JWTHT2yp2wYfLRgWrpdwADDtFRygwOoYbTDKXyk6XviKFNCwMiDq9Agt6odtyTw76eGDH+fkZZkmAoThOZqiAlxoxYFOxqzk00RJMlO4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EFrVFlyh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EFrVFlyh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E6E69C2BBFC
	for <ddprobe@lists.linux.dev>; Sun, 16 Jun 2024 23:58:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718582302;
	bh=qeM/8NuQrMLXlLl1G4GypOGJHVGEdV2BAR6ONjz6pfs=;
	h=To:Subject:From:Date:From;
	b=EFrVFlyhvsU5bkdv9YLkk1EYGS9gfYOcP6ib+wS4dMaPM1ktIESUeU5lrBqg6cJYy
	 A6TDgOMPUTqWzaK6r/vDBvOyCVRWSLJGW8BDN04etV4nL91WUX7pDaL0f1P0rShVP/
	 wd2q31WpcOBCYZzXf6hNxWBBj/5Zo4Oidbr12JWG2jg5Iaa9StuJjmCbtA15XWCmkB
	 vvXYj+XzFFwZpgv6KtGqDeBI3TT7ifYma3viTNlqiVAGi8/pCdbHzsmDxoOecoZOYm
	 4Ef2N1lWVtXymK6ddGC6EC/5nWYf+6U0+HR2LgdwxYHYGorf2FEsDO2p+RCsUoGBk/
	 z7Yc8gJcisx6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CF9ADC27C53
	for <ddprobe@lists.linux.dev>; Sun, 16 Jun 2024 23:58:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171858230282.29220.18343205932574415745.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2a2f1cb5da94a23909e422f93354eb89b917be7f65eda06a84812ffc83baab64
Date: Sun, 16 Jun 2024 23:58:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718582302
