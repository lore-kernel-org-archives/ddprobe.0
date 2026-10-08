Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7973D4A13B9
	for <ddprobe@lists.linux.dev>; Thu,  8 Oct 2026 13:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791466234; cv=none; b=HObufVXiWHGy6+dUBO5LJCXuofvVxRr95Sm+oE2x91NIKWeZn5ObZ01gwRqbcD1N2zEdWT8DjoeUmrV6df0DCXXQ/UpJhIXfkKzta9IjWq1cCs9bDUlLnWEuxPtLS3Suh9IJmiUpum64pNNbq91GFzbBYw8CQcl2AVe2F0vADsU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791466234; c=relaxed/simple;
	bh=jVogOo8EnD+8f39jw90LYgLuMeCx9IORh4x8Ijsf/xs=;
	h=To:Subject:From:Message-Id:Date; b=ja5LUmDJRbjLVKfA0qxbzAXaXVrCMdkgsEo535YADm6gEh42kSDeOeaieoh44zTRfRJh7l5dHvkhTsEjk3fOf+EbEuROptzDqOKBz3YD+4NwVhSZv94qtpSjWlToK1hRBedoBM/dXSepLw2nvv2hJTG8F8+zYjdaDQAuV+sTueE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m84xObjQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m84xObjQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E6321C2BCF5
	for <ddprobe@lists.linux.dev>; Thu,  8 Oct 2026 13:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791466233;
	bh=jVogOo8EnD+8f39jw90LYgLuMeCx9IORh4x8Ijsf/xs=;
	h=To:Subject:From:Date:From;
	b=m84xObjQE4pyrJ+Ad3CywDAaZk4qcEiJKbqCbjNi79AA6UjUBr34teUJZFhOlvgI3
	 AEsUCvnWPAs+u2lj2rZJJ1lmss3PbO0fw3zdLzvpXVmiUgd7+7/sYotiAT/fqhqTQ1
	 pNqxccpE2eN4T2L3Ov55lY1BHpCQUGdPPwy9lOPlXBFuA3HA0hsh1AkZM0bqui/Le1
	 3Un1ZPgvrt7eL4IOFmDjcCeltwplx58rd4izbxd0hgjQYKrniI/uAhvk6c2RNoSVYL
	 /bhtxY7B4fshrR1TYoyuoXrX6mDeeamEFKSkGSU4+jSki6m3wTGqRoRUnJdxhTT0FK
	 OvAC4rV7KujWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF51ECA6007
	for <ddprobe@lists.linux.dev>; Thu,  8 Oct 2026 13:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179146623375.16572.3289625202014456431.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 332281bab2bd49790591033011458eb64afb557857cf11cb081f48833316fb5f
Date: Thu, 08 Oct 2026 13:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791466233
