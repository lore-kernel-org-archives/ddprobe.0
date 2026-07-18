Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5905232BF5D
	for <ddprobe@lists.linux.dev>; Sat, 18 Jul 2026 19:28:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784402914; cv=none; b=cBWVD2sUHTQsSALkG15gwTC1KRvv6k90E2b9gyhIn7CzvT08HD4gE4leuBB1nKXZuRhigQlRxgyAgE4CU7dtsQWgOYpCg5ucPAXIpBp+gD5ZvJlnTzpE7BCZGSlq6qtpth4XcaQejvHWVK4RlO/3sLcYomNUfac3GU9c8/XvgLM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784402914; c=relaxed/simple;
	bh=XzxKmYYihfpD1M5XuazN53qNZRD5YE2cqeeLpyZY6XM=;
	h=To:Subject:From:Message-Id:Date; b=JE4ioI72Yk/ONA/nkKlJwK8sqST10QgzJHdnQO2nJ0Sp+a05hpeYtqcQRqEUPixmJk8vjUttlt+iuxGAJl4rFDOtkREZ/c3pqXiB20aAn9gy1ZFKHZJmOaWLqpSNK2zS4NHMkJsfyw3e954xbvKJxbejdEaS9l7ZIZLltRqubhc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SO7lRjrJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SO7lRjrJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5A0FC2BCB7
	for <ddprobe@lists.linux.dev>; Sat, 18 Jul 2026 19:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784402913;
	bh=XzxKmYYihfpD1M5XuazN53qNZRD5YE2cqeeLpyZY6XM=;
	h=To:Subject:From:Date:From;
	b=SO7lRjrJf7AXahI9EgzmDQvO5oP3xgtG9sTKELXy/2yWou5w7IskUhvue7eM7d1XB
	 9LapSVezv6kojMrX7B3PCKHDF0NF8/qU6IGXLF/XzqM84noSM5DMoSioMcxP7+/hv4
	 /oP7lsMMWvq2wtl8uSsN/1OVXSjJKr20k04JxdmqgMlVM4+LoCfOQCXwWMQgg30gSR
	 FnGB828XvU/ZiMe2LD8KtlfFATv3K4iNSIr1sRdFqGAff9MsarvG3dD9bphaLm2Wtw
	 WO2/nWWHMNGapLOeQv3wQrvr+EvdHKZ3qABX5G4UFo3sWDK+apdGDtBhoTqjdU8gDr
	 +z4W/5HjxHK7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2F30C4451B
	for <ddprobe@lists.linux.dev>; Sat, 18 Jul 2026 19:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178440291369.7059.10950116300809521772.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 90a729bba6c45d8552c69d0ec6cbaea45868ceeea057d68c9fb9704e802e5b38
Date: Sat, 18 Jul 2026 19:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784402913
