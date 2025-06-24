Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A260170826
	for <ddprobe@lists.linux.dev>; Tue, 24 Jun 2025 19:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750792194; cv=none; b=nzGdb9zFJcG4tCFOs26RqNab+iMP89LQ+V+RZbDg4VOGJNQnNEu1JDwe6dYK1vxnXR88CQ0DRGwil8zL256qhhwqN+Lh2+6FKhekAjXPU46zT8BIVI7vO4lSWcxxPlCIoyHRAggEA+aJR8hIxYp+I/JQXk6sJlRovbHbnkqJUiA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750792194; c=relaxed/simple;
	bh=zem5H4AmdRuYALj7YtfZuirPoV8F12fyFIaHEYFvG3M=;
	h=To:Subject:From:Message-Id:Date; b=P3qbYpIkRWRBI3+J87SoMbs3HyLOaNyUE2Rk0ol+BkfkPCUmHr4xgW3XNwfd8ocA3y5SE6IsTbmQlK71GAnFhCvHfI/AzXL8u0xqPa7LzcbyQSgPTLSqYDXfeu36uPpA8a3Zspo2k9V1yp3bDYc5WSj7iLJW1ytfgNeKFLmyklA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=O+iucKTI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O+iucKTI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7590C4CEEF
	for <ddprobe@lists.linux.dev>; Tue, 24 Jun 2025 19:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750792193;
	bh=zem5H4AmdRuYALj7YtfZuirPoV8F12fyFIaHEYFvG3M=;
	h=To:Subject:From:Date:From;
	b=O+iucKTIeO8BwnSmuzAb6i9j/aqWuzreBKgE3Tb68Fn9Y+TWjD3bKmO6QONNnRlXT
	 oaBR3BztaIysX8B0mjLMCY7yxLZwNyXFKWMGahByGgoH2xOV8U9+wlXan4DTR5m9vI
	 mB0nDTE7+cmrqrZRfVh+AsP8YMt/auP5XwnT91woSQj+ycde1lU7pcF5E17fHObDAz
	 Kh6rN20WIvT6uiIHXlcvxlOblaj0WYzTgL3hLI5EPWsqjQuOU2qMlKNM2Yx86YMlw7
	 eI9mjwY+h51oTOHgD4onzJz+p1w+VKcDAkfA2958KwX3vKQ5C+L/JpARmaBgUXSJBk
	 h0XxYvIK9s9zQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94AC5C77B7C
	for <ddprobe@lists.linux.dev>; Tue, 24 Jun 2025 19:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175079219357.25766.14440015796356818310.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 151b58f126f0bae4a4f5bd15c0fc1c29f50c3dc5fe3dd3566bcb37ac5bbccf01
Date: Tue, 24 Jun 2025 19:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750792193
