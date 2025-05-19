Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E71F4B1E76
	for <ddprobe@lists.linux.dev>; Mon, 19 May 2025 00:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747615794; cv=none; b=aJmRAidkvVpPVAYNBx9wu9irDaRqy/9lzBQS+/y39G7DPwYR2VOUPII5G2GchKKQKuIdVHTNeuNnj/UaCX7LBO7yq8dv8LUPctZDKlLWcG8XbiGvuM/maWjrARkVl+q7i6oWYid6P6MkGSjmuE2XjQn9kd+AV2zsFUVxDOR49/A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747615794; c=relaxed/simple;
	bh=AlasRNCLJ9FLP9m1auq0QS2iilvHLmeGjRuHnfOWSCE=;
	h=To:Subject:From:Message-Id:Date; b=ADbsS2M/wrV0l8ID5WPUrV9ZW78jXlElbqwoO6vLf4hTCflMV6k0bafpLVqirk5RKHAhAmXzdpp4b/YsnwmtqzIaGb6BZrl9coBQ+NlBlUllObTZe333goVomjeF/VLCRHTnJTudnfXXbgu1GPjxAP5vmqz6xxqTzL0REvOMpeY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Yc/vSHG1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Yc/vSHG1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7E55C4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 19 May 2025 00:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747615793;
	bh=AlasRNCLJ9FLP9m1auq0QS2iilvHLmeGjRuHnfOWSCE=;
	h=To:Subject:From:Date:From;
	b=Yc/vSHG1YB2TZUDfEs8TaeuZGlbgYNxbWGWrwo9Tpbb411IBjFghh7OOnfCs2X+QJ
	 nmH5+JZ5UxjHONwy+g8le/Lo2XWZ4fRIbRgaxetoyzfqJwmq7GR54PrPNPzMF5Ivb/
	 aQ0yoEm8+XOdhMH6ZuVLS4L9r8TT9Elfb5T2j1Fa4tMqGg0vSf6m2ROvvDjZoP5wyf
	 g82iTO0glEqI+0B9EgB4J1RhrEANYe/fOymB16EKTVaElVXWmISNog+2hnOFQqI+ps
	 x11WbFArp1moO8/szzn0IM+fS2AY3b+WQVxyg7R0HsS+XpptCh3w8LkK9VoxiI5auH
	 cjLZoJDmn0nYQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95900C3ABD8
	for <ddprobe@lists.linux.dev>; Mon, 19 May 2025 00:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174761579358.2365.17727449479998880093.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 17f85334a8dfaf2dbe6e266b15593fe384d955d947120249ee051cb60ad54f1c
Date: Mon, 19 May 2025 00:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747615793
