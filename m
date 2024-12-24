Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23F72149C69
	for <ddprobe@lists.linux.dev>; Tue, 24 Dec 2024 04:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735014354; cv=none; b=mnCLNGcSYNq9cR87BGcRJSH9WxiTelUCviLTuwIHSRTEhEj/RhkvpZFKv4CFqqDuRLGnbiUtvQHpwlSxZqIHBwZCX2SIMq6Xthyz2Hy2hnLKHVpKqgxXstwmvvUATnfRNYmy7yCyXRdBy3jzBxqGUYcKTrrQJBN2LU10ec8BSVg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735014354; c=relaxed/simple;
	bh=QbytAVrlq8wcTl1w5AjZxyJ4Undp9tgQS6R761DM5tQ=;
	h=To:Subject:From:Message-Id:Date; b=GewNB0tKfaOSCrgmmtJBUWuI6OZix6SrJ5UtgpWvo8eFJTP1Ke3ZbIcbllYUm/d46UYtmEPsFpUmC0RFt71jCrqiEpCgMSHQcS+M8MqsEMIp/qcxuo2fzy024bpL/qS3qIq6o4nSOxwBztHEjxruFTF4Kp4iY52/9lYtaZUm4uY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=O9AcJq3h; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O9AcJq3h"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5214C4CED0
	for <ddprobe@lists.linux.dev>; Tue, 24 Dec 2024 04:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735014353;
	bh=QbytAVrlq8wcTl1w5AjZxyJ4Undp9tgQS6R761DM5tQ=;
	h=To:Subject:From:Date:From;
	b=O9AcJq3hWODbA/eR1bSry7WmvkNlmzG7sjcQpaOizYsxxdmzx7FdfWMzmB1n+4C05
	 Uf8nFpxHalYa0FemcvJs1LZiF4uRHL06wSaaGRWcmoyw9u816TmqCGe4WjFn33YmMi
	 f380BqmWL+6cy/Qi0Zny3X1wpzQo8uP+GCWt1xIerFfb5aEJUV52KQjo6G6IHn39Ne
	 fPxPL/0aioU9nDDY7DHCOqk4vXrX6yXdjxiiuZrTgeMiskvO4JyJO8eAQ8OGnoAmQE
	 WneCNh1onb16d1TvRiZc0gvB6CPTsIAGq49gVf5ADMcmQuw5XmtuU2uzJsUvKm9fPm
	 xA5VxmyL67W9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 948BCE77188
	for <ddprobe@lists.linux.dev>; Tue, 24 Dec 2024 04:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173501435359.14493.844799481437835935.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fdbf810537d5df65760150fbcafafa235d3ea17a0ddb08ee0cd2a9272d820981
Date: Tue, 24 Dec 2024 04:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735014353
