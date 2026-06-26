Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5CE6236074F
	for <ddprobe@lists.linux.dev>; Fri, 26 Jun 2026 16:38:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782491914; cv=none; b=GddU4VxLpWrSazfNacxb9QLm3KW+sPejwdIr28O1zUrOitbbr1tKCYx9H0+14QS90Wkknbh53b8RKPzGeseZD3EytWKmx74o30RFWCs3L/uZmdkH0su8hQhU5Yij7NZWmnd+ekgpIN8SzMLAXyhyucuRMeQUIs4nhBGWZ72X54s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782491914; c=relaxed/simple;
	bh=wKDFeOoZZgOXoyS8Wmkw2L/cgy9dXgQJcbDKAMGtBEo=;
	h=To:Subject:From:Message-Id:Date; b=M91gKTTUPMInTKPT7awhdkPLPqMy6QsyFoH9732XvWyQqOoNAsL4eTDnU5CnmFhboEkMhfuv+GeKMx8StTeGjy2+Gzj/3MWfQL6qMoLoEdy0LPrZbVbRzj7zefkOajgPBTr0aXoo48lZWYflpS3s7JJaFKzHZfPAGdo6D3C0gBw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oVY+Pjkz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oVY+Pjkz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E789CC19425
	for <ddprobe@lists.linux.dev>; Fri, 26 Jun 2026 16:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782491913;
	bh=wKDFeOoZZgOXoyS8Wmkw2L/cgy9dXgQJcbDKAMGtBEo=;
	h=To:Subject:From:Date:From;
	b=oVY+PjkznShl8V5tYm/qukCPxpLC7jS0LZj4GGp843l1l5wrXWw1zPDkl7JORBSEp
	 OvmYZ+LMdZ36ZysbMQFD9NzueDunk2+goaf5cRVnN2TDJ37BVbwoWkv4wcsIygPmRD
	 7diuPtR8pJjGAQt84kDy/q/0mnROdQC3RQj0ExiTQsfkSJgeSTJa94KFgvOvSMm4xj
	 rDWLiSerttGHI4bV5hP1kkX42u/+H06InMgni1wmMpWKNb1eBYz4Xt2fkqroWJksZK
	 frEnY7lv7MhPj9c/wdje2tQCOfcvhrgUEc1VmWfW6uGDuNkyR5HtWAy/UcwWroGfqN
	 M5u9AdBXjIkOA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC07FC43458
	for <ddprobe@lists.linux.dev>; Fri, 26 Jun 2026 16:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178249191371.19046.6548342041867145571.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f3ded32ca7f8d91fcf69ea3b66e619de18dfc67b857950492e2619543ca8774b
Date: Fri, 26 Jun 2026 16:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782491913
