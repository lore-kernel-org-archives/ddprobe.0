Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 337202F39B9
	for <ddprobe@lists.linux.dev>; Mon, 24 Nov 2025 22:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764021774; cv=none; b=QoliMuu7jSRRe61WccGPwX/u4ILhW+dPlNHhYPWbJfBNlmGqCupJEMVvPbxlzUsUXPja0Upcym+o5nCyjBixzrw8AWi9CLM0gXmlsFIMIAFXT1x7RMQz4YXA41qh5BY8FIJ5HXiQkj5FulVQNR+FHxtcFBe/KfeC7FHYqq+X0uU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764021774; c=relaxed/simple;
	bh=5c7aE8KixRB+wwE3mEBEdiNv7ErUNshxfk94lrmc2e4=;
	h=To:Subject:From:Message-Id:Date; b=jSmiYxuJoB7+p69lIsEue3lRdsxpaXWIkukgPyYzO+AGe+lHs9iHbYQomqDg19bBc20QjH5XRWDB7sKv/uMDcMUsifV9W11M+rQr/aJUJw9Lse3DYREDGng4bbC/p83vlJjSkDXL5bgIxiaZarzmMH20YzyFrOU7ZNegRUKruV8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ONQyTXl7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ONQyTXl7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4998C4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 24 Nov 2025 22:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764021773;
	bh=5c7aE8KixRB+wwE3mEBEdiNv7ErUNshxfk94lrmc2e4=;
	h=To:Subject:From:Date:From;
	b=ONQyTXl7II5oaoYbJDcqp48JwMCbTCvKU3LixMbDAfDMq1Tu9Uhh5L90LDeo6l3y/
	 FgPHo9bSb6eDfs5ByH+ynXmwVzl0HSZGSi9UZpKZI/985DwmNJrkW3MJZWChMapq/c
	 QkEoGgGy5hdQ4HRkTutkZVk1JEb2kP/zX7/1XocYREW5A1Irjlva54YroNOMigr2vJ
	 FSRbdoy+16btHe2TfIv6t7wQpl59DXlbl0ny7T/2tkjCQ+S265suz3W6yKFg5lpB0Q
	 NmawcTjsytGDvMu7H31hhvMSqWMeLiXOyNzfXlW7QRtYlzXih9IUH1kz/rtFyJAEKM
	 8avRdVnyauXTQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A938CFD356
	for <ddprobe@lists.linux.dev>; Mon, 24 Nov 2025 22:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176402177359.23542.16138924422238021840.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 82ef82cd5231f6d2d6f44f6fe247528b3f6348df5ee5947fe99cce8293f247c4
Date: Mon, 24 Nov 2025 22:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764021773
