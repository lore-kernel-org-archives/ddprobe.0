Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6135713AA47
	for <ddprobe@lists.linux.dev>; Wed, 17 Apr 2024 10:49:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713350963; cv=none; b=WTJZG56VH/AAatLSZuvn0rer+BU4ucjd7tCmk9WkqPhpTORPAhx5kmGTuqCcsvIu6kb0080C90tfk5ZiYEszS5wG1+3z/j3tCokpj28Q5mRxpF7miL6AvOFfeUvv3ok/GSt2AIEdy/riQ2t5QjkZ4ATr3V2OzE6f3iE8/4t5mxw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713350963; c=relaxed/simple;
	bh=ToMfxvbGgQA0vPfY1m5dKWZkfjaZrj0et2bZNOS2WiM=;
	h=To:Subject:From:Message-Id:Date; b=d+QixatGSPTmqRmcRd+QCzJXGmE/LuUnb+d0mIE3JuZrRqZ1Wd4jLec+DmNCbbBn0NnEK71KFL4BBKRLu8Tino/oz1OM36WKGikAb/oDXD2LJgH9J4WX6eFiZd8Th6RT7bK/BGqIDuDs4pKfcePnQ9ZD/7JLb3KtVhVltF1Fbxs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lHS9Hcj2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lHS9Hcj2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E0A79C072AA
	for <ddprobe@lists.linux.dev>; Wed, 17 Apr 2024 10:49:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713350962;
	bh=ToMfxvbGgQA0vPfY1m5dKWZkfjaZrj0et2bZNOS2WiM=;
	h=To:Subject:From:Date:From;
	b=lHS9Hcj27Y0ioV1rnYPoaonpMTUspJINUU8DvrSPyxEQo12TqtBHaqTrwHBeoJ46D
	 Bn60LxfzFruOqz11jtRP4L/GCgtGqHOjE+uDrw0QXCBH3HZ549QGN5U+QBVmRjTr8i
	 uuKlVdgfkiudw9Z/UL906esKmLjcSBRDQYErPQLZW4QCC9FBAKLQqxyvxtI7mHqhjn
	 Dcyr/LY1g+D6GkXxHRi0F7LBsp8QCSIPpfXlMpOh4ni9DepO4LjyEvoRcpcvD8HQHj
	 JhQp8g/xlM3ycJNgb8tlbePZ8nLh2EKmyNEeTBPPANMHO7FAEP6QUZdmJhA7N96vi/
	 CEMbvMG36+eqg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CCDEAC4345F
	for <ddprobe@lists.linux.dev>; Wed, 17 Apr 2024 10:49:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171335096282.20103.12308249265021496083.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b2cad51f739c406934bb47ccd89647e494766589126ab73a3238b65d0d8275c9
Date: Wed, 17 Apr 2024 10:49:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713350962
