Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39DA9446065
	for <ddprobe@lists.linux.dev>; Wed, 12 Aug 2026 12:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786537234; cv=none; b=FnNuWATb8eaAof4Pe5w03vctI0JxL6XiD7g2zfIKqrlTgjGvh7lFdyw5EtteWv4GROHdbBiah0FL3/nnhivTTtVaA+r/Eh+TMIe/Zz5I0BBkCE4XE1igVcBYbL/1d93aM5Q2CAFWVmvtW3JQMpV7WtAPGm5HSvHZ06aA/tp5mx0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786537234; c=relaxed/simple;
	bh=VM2gYaToDKxidtdjnxoUX1hJTCxBpl1S/PiEe7s/CUQ=;
	h=To:Subject:From:Message-Id:Date; b=MLRHvzVCAsY0ch7qo2YhFYMsYlfWRFO59yvSoZn5PXmsrDND9JBr2u7DhHaEFrKQLMfSg/E7Zav875D2vwerbiqjWTL9qBsXOYbAvHYohf/PSQcBp797z6pORIGD+PtMenoP5JjnwvubpAjvlaoqR9wevzEiv8zm3s1Gz9XGk84=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o2B7zcm+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o2B7zcm+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC1E2C2BCB9
	for <ddprobe@lists.linux.dev>; Wed, 12 Aug 2026 12:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786537233;
	bh=VM2gYaToDKxidtdjnxoUX1hJTCxBpl1S/PiEe7s/CUQ=;
	h=To:Subject:From:Date:From;
	b=o2B7zcm+ye/tRLU90NIpGCLqktOi+kkZXoDfXjPolk6RyLcANfFhd8kxZJL7IcewW
	 UI+Dgqsi60LlqelR+tdwxfQzSHiJtmYcSP3dhGAlqghjS3xmtX/0OJWUf/WNiPfUuc
	 +w7hqEuxUHQESsiZ58O2dbG4+1wrzqQ09e+9fR1KKn75hNtvTCeyEqU5YgxUdXsiAl
	 XhGLKMXfK2sD35H4x/kTM8cfYAYz2gAPuD1aL10Uil3qkKLEk9E4DFkSTH4f+hF+2u
	 6f3ITzNrFCHjaGbd+/NwKOM2zBqVyY9zIFSrqDR6xJNNmIUoCSbmZVSWwmMYQsqD0l
	 Is8JmRIh++H7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A917AC5AD5A
	for <ddprobe@lists.linux.dev>; Wed, 12 Aug 2026 12:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178653723368.22029.15429888043439074987.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7ed6ddc0966b824ce523048ffbfa1efb7aa9241e4fd13ac07a74c40a26378650
Date: Wed, 12 Aug 2026 12:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786537233
