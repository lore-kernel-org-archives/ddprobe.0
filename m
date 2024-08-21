Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4206920B326
	for <ddprobe@lists.linux.dev>; Wed, 21 Aug 2024 10:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724234754; cv=none; b=HnkvxRobjiJux2jAHkVDy9dhFjozT0skN/3B3zztLiEwy/qAnTPrsq/e/sdqoYUpUBsm0RJpG379Z1TppWPmsAeqZFjVlfsiMqwV/KFdLqtDCjfK0e50W9nGFi+EswUVoTsIR7vcD0uG2y1rdxSOsexLKURf2kI/HuUVdT+EuZ0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724234754; c=relaxed/simple;
	bh=T8Bw/30+wIgJulwquvfnF1x2+fNnuSo6K1+LjzYPkKE=;
	h=To:Subject:From:Message-Id:Date; b=OU+40+zFV1DnuMLuQfMyenNDjDUXZ1deWF4YPvUUN8z42Y1I963jO7XCdFSZisDmZnmlF5NS7rrPsSZfGMEIpD/oboKgk+xyWxoDVs1AJ/lEZ4b/ZL6drlPA6vMdffSttb9N0P1ZJyl6AZ+jji8TAioYgOQGTC79TlsvGFJY6bw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QDVbYarx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QDVbYarx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD6FEC32782
	for <ddprobe@lists.linux.dev>; Wed, 21 Aug 2024 10:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724234753;
	bh=T8Bw/30+wIgJulwquvfnF1x2+fNnuSo6K1+LjzYPkKE=;
	h=To:Subject:From:Date:From;
	b=QDVbYarxGf/Od++q5cEBHjSiB4UFHpKhVzWXoO9MjRgGqvHZSdbGqRdWh3NltSsZD
	 gmeejSmxAZ81S7o8Eo1eQXyA9U0PS1Ip0FS1NqfS2/eMLhrRpGijac1LeTGTzIh0cQ
	 ZvVNhHRjF5iTLV9xwUO2FswwspJG0kBw9SARxZd7JPTmnfAtUd4zRmFR7sFllBq1H7
	 1an83a51Sm88m1d33cdfenpG4ecz803yqaoJvgfpJnCqc3q6igU9AWe+yHh8t0VC17
	 /ho+iBjUgmvgG0xSYbN4FQ7pu1G1ToiZ+2m1Z867RFE4scIBMRQmiQJMzubFYR2gLa
	 upAKDw/VlsGFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9EABC52D6F
	for <ddprobe@lists.linux.dev>; Wed, 21 Aug 2024 10:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172423475366.23103.17222520721785745605.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 23fb5be8e7f85f9837febb657cfdc0984aeecdd533d238d9499194d38e97a033
Date: Wed, 21 Aug 2024 10:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724234753
