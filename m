Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D05DC2874E9
	for <ddprobe@lists.linux.dev>; Sun,  4 Jan 2026 11:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767527033; cv=none; b=fv0yYH8pC1FCU5sRp0qSR9t8VgNBXV2du1bKu10Eni3wGtf1ga/ie3za0p7BQ4VeM865Rf9EGokjLbayLb0UvrJk8JGJHLWX/nrGCZfvo29KNTrzf2gJOjLJn1WcBMAQjgkfCYLI4GwdizdofgjwoU9sIoAPnOxNr21UNHUV0bw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767527033; c=relaxed/simple;
	bh=kOp5L/nC6vDOU65eaLBH/6eIVloCfDSe+QWqo5t5uew=;
	h=To:Subject:From:Message-Id:Date; b=BAibXutE/egqzie2j8TIu1BqYCRaIZ8rXDO+jmUuESBkm+57X3t3+Uz8J1OpZGppjSK+HKXtiyQuIQY6m4ZysCxFg978JzDDUTWmttmU5P9HCsZqOrGG9eYp1CUOXRTgazwrF0GkylqkJud8RE20sLfbNoNDnFSIetkgCCy3vEE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k2e1HdXe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k2e1HdXe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F945C19423
	for <ddprobe@lists.linux.dev>; Sun,  4 Jan 2026 11:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767527033;
	bh=kOp5L/nC6vDOU65eaLBH/6eIVloCfDSe+QWqo5t5uew=;
	h=To:Subject:From:Date:From;
	b=k2e1HdXeRus0MX+J535Z6Go1DTfv6DOvDTejx8pKTe+IqEaNRnRdNSfojnrLT+S1h
	 J5v1Pb2bq7R56cqy1/XkAy8uRsiQbbwXNwwRhSdXR8CbGbT4P/fuEUL9uH2805g29/
	 F+Q//qwsK7XA39rGp9WKI38filHrpNBaYrq5drq+2iD3qBwjkoXFFowzGcArGycn1B
	 2V0tfDvZHkfDV8JU1U0QP8zy4gQrSx1baHNl5I3EQSxd6nZ3gWaKHs0ZPhWgkffxqr
	 nRIFVhAdjunmG+paTqb1B4C06wIDhy6F7Bjzp/0T9EUA0sMBqxdtmqx3m69TzuuCF1
	 VvYsVvsQnauAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ED62C2A074
	for <ddprobe@lists.linux.dev>; Sun,  4 Jan 2026 11:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176752703357.2866.2111851725755060479.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b3cbe58cd410ca096a197414d8924a3ae50cd639c7d289124349c9d5b333f24f
Date: Sun, 04 Jan 2026 11:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767527033
