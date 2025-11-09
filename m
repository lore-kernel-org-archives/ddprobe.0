Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A0AC4C6D
	for <ddprobe@lists.linux.dev>; Sun,  9 Nov 2025 07:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762672794; cv=none; b=nU92rB545c+DxD6ICo81xkNvTmCIsNNxgYwYyGvRAl5HgLmh89RN57H5Hh/I0P2MpsdEWbUs2oRO6OjOXVm8pbMC9QFDGc41SmmM5FDRKDIKN7Aj/PwN0O18bF8gjYj5lc4iXDWxqosHgYdLDdvZ1Kvo48AYIjCrn+uU6rqFLjg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762672794; c=relaxed/simple;
	bh=TnkrOizVt/8zdLAM0zz2mr3DvID8Ow5D656ab3tPap0=;
	h=To:Subject:From:Message-Id:Date; b=ThmriIvU2lF++c6v4fhMXELmlRCMYrEzRGKdzsvNGkbVi4MG1lqj2/j4aQfS5yQWlaiIjOxlWe1hg9bLVpUfIP4Y8RRUt03eJjh6MI5cq5PFZ7t1TZGeQSIsiXM7s0YYFCOJknG13Uml2NTau/SNmx6mOt9O6cl7BtHJL3cdTv0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UaHEg93H; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UaHEg93H"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CDE4C19421
	for <ddprobe@lists.linux.dev>; Sun,  9 Nov 2025 07:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762672793;
	bh=TnkrOizVt/8zdLAM0zz2mr3DvID8Ow5D656ab3tPap0=;
	h=To:Subject:From:Date:From;
	b=UaHEg93H3RFuQIRemWxD00mmNdtMfpAXeJrSioR/8zreDIzwtfmHOCeEQN5UvVd28
	 NTGmuVKimpRx8UMe9Mf6nbN/2xuDXfDp6OJjIn2+B6PfTM8Gsl9VzRnyXdigSzB2NN
	 XnDIBMWPyCQyDL2Jg5Lt411lGQA/qAYkvNuRrf0CErFng0MItaMWlY5iO6NZWMLKmt
	 v/XbBtm60tuVflsmfHoegUTqazQ0gCrO7IVRuf9BDq2MW+UeSltJCCZnMN9XfMW8B0
	 ECghDQjsr5MGgI2nHom1WI3yKgXDnk9LxptGzMlznZejkRs+LmmSAfDUA5Mt0ADiWo
	 KxVkyJW/8/KjQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9049BCCFA13
	for <ddprobe@lists.linux.dev>; Sun,  9 Nov 2025 07:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176267279358.14635.1128067817381814005.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 518689452f447747bdba13ae8ad09b9e38c78371d822a4cd4046eb92a95ed05e
Date: Sun, 09 Nov 2025 07:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762672793
