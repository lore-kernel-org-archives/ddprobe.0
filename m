Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 331321EFF80
	for <ddprobe@lists.linux.dev>; Wed, 14 May 2025 05:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747202394; cv=none; b=NjpwMXE0+DSkHYR3U6OOCoQLJVBoKB9B2E/kzVuIvKkmfXYB/SWjGg6C49X1MuD9gaOkKBR2nYfF+zp5Bs7RQzjgwepGh+m0Ub3RXgZ+WdNZs2JHVldixfHmY2rz4tclF5cFTeq1K+DXQMWtgnXt0rduhNWQ2Mvgy0yTY/jT1Zo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747202394; c=relaxed/simple;
	bh=SOBvJMwlq66FNEW0/I7CESiX3FwGbgV1TUFA8BLQWG4=;
	h=To:Subject:From:Message-Id:Date; b=HltkD8lhj7Vezo8FujmD7wKssrwfWke5m3OcnS+69HuJQ8/7BKWMjSPs+5hzeVY48qZ0oimILLWtfN/fyNB22bq2XekDcU6oPu/6T4DB6hu91cL3kYjcMTQMerWyafD+xFH3yqRqqb0tnSMIt6bF8qQ3K8ImT7rF7g5FjSxBTNI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eh5DxBFZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eh5DxBFZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F358C4CEE9
	for <ddprobe@lists.linux.dev>; Wed, 14 May 2025 05:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747202393;
	bh=SOBvJMwlq66FNEW0/I7CESiX3FwGbgV1TUFA8BLQWG4=;
	h=To:Subject:From:Date:From;
	b=eh5DxBFZsJUcep47WlTzjzrR5SdYvteKtODTcwVjmeqpguNFgwScgDIP/STFOPQ85
	 TDATZYiAPUbn7Ag9Z2xjXDks8xV9eQB5YXw8Aje35cz+A2FFVfvSHvdkLH55hdSd1x
	 DWUQ3FGYDpnBChUuXC+7rEte4/NJdDAob40rijafE6nLdVo+88vMSiXfQ4AC1cXAXQ
	 pj5nPUF4Dx6gDy0/EgNRgKTVej3V8gVKL7ooT+GUiPkOK+EIFwwcpZRDaaMGckZBZ5
	 sAWvAqK3X2fBGND7A5nq5MInOLVWDpWRRZ3XY5E/uyvxl/swcDlpRzdBIF56NJnjA3
	 HGnvgkV1aDkZg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E5B7C3ABC5
	for <ddprobe@lists.linux.dev>; Wed, 14 May 2025 05:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174720239357.11002.10345900426218422728.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 11dc5a128347e9341eb9ba5f2a8bbc154cc5c6eaaf9de157c6f53c6b0f61aeb7
Date: Wed, 14 May 2025 05:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747202393
