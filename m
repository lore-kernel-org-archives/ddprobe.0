Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C3253DBD5F
	for <ddprobe@lists.linux.dev>; Wed, 22 Apr 2026 13:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776863254; cv=none; b=pEZB5JMKXHz4nrJTumb3f4QgLVckCfMLWsAQ4IeZvIWBBe8UeCLn1ZK+QhUpGcAsfZ5HSHXjRJc4etBUR2czDR9NFuux8Mv2abrIi0KT+eWEpogs8H99kuZblM7iiUCWEBHtRbgQ63gcT+u7+E0iBsQCWdyyGKbGn3GA7hh/5iA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776863254; c=relaxed/simple;
	bh=0ebu1iN5LjErobZV2imV0F6s5FxBCv2ysHfI3JwcATM=;
	h=To:Subject:From:Message-Id:Date; b=jegW/Jbvd9MyEKSOxyxm0rxH9nG/tnzv/pbPkyN/QgB17NixuZTr3fw0GfSMyrKMrYe62dWrTrNVPAOm71T93qWzA2dHPPFYzOBPpPmYr/AMIzTdwDuo+2wUdLr5/J47L9NZCAAloYJMgRk4ELP1XYDXS2PSoVEaYYgNVtYkD48=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kyy/GG5V; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kyy/GG5V"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7EDEC19425
	for <ddprobe@lists.linux.dev>; Wed, 22 Apr 2026 13:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776863253;
	bh=0ebu1iN5LjErobZV2imV0F6s5FxBCv2ysHfI3JwcATM=;
	h=To:Subject:From:Date:From;
	b=kyy/GG5VSh5etTiP/wdr6ov8SpY6WRXB4H9bsHJRdM7FiAQS/Hd4AOd5r2gJsmFJX
	 +KqQSRA7DJga53xEeNFnum0Q9RxruhC7TZwpPSpIPx0BFjEIHSxfjRagMt4EktjO3Z
	 aDAIyLV8WkvRls32Ucw1IOFI7Zg8X9lod0r6V/5Co3Seke+/AdmLunDUYWBfoIQmug
	 MJBJO2/TXjEi+0P8XBTVyhoytqBcT8imsJQcDbJ9eTMunG4OZ1Vxxizn/JRg9lrV2H
	 +YpnYIexkDlHF+NIEUIMwVIK8rOiICJvTcacljVfdUbpp5I5zTOdbvyt55Hpt+zfrO
	 +fWQ1kLWZn8Og==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9A28F9EDCB
	for <ddprobe@lists.linux.dev>; Wed, 22 Apr 2026 13:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177686325368.1076.16857970436973271663.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7f54cf3238a8ee808d2564c249ae15d579797558cacc230d9ba550ec7eb7c418
Date: Wed, 22 Apr 2026 13:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776863253
