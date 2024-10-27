Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4335F370
	for <ddprobe@lists.linux.dev>; Sun, 27 Oct 2024 13:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730034954; cv=none; b=Gw0fo4lNC4/mdu60AOv/lGZARPerHfAqNh20uHGx7bojeVmG3PkAs9Nf8k3k6EqOijSwidf1pXxg59WGnYgbeIbHZ7ghgAmrrwvhyopUcGrJpxtB6+m0ANfiSxURabpfsNtJgqtg5TjqUbjAxvpHsIlf14WAmmpSiU5RUifdqrc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730034954; c=relaxed/simple;
	bh=7M5SAJT+dtYmssbM07us0RkMIW3U3wIkg8cmB9bWigs=;
	h=To:Subject:From:Message-Id:Date; b=rxcDI+6HkmT26yOLgJfemLVIkfLX2MdfbdFJWmFbevw48JdTeYAQXJaWYf4k4z3s1XvgTGsNriMwp9T9VHNAJ0dNO7AajeuF4FGeCKc5/IaddflRkCFknqh4OUpVdXnKKHWrLHC4MLaeNFgTQGuXxAPTQovZjAxHXv4v+044MQc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XWl05HZk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XWl05HZk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADFF9C4CEC3
	for <ddprobe@lists.linux.dev>; Sun, 27 Oct 2024 13:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730034953;
	bh=7M5SAJT+dtYmssbM07us0RkMIW3U3wIkg8cmB9bWigs=;
	h=To:Subject:From:Date:From;
	b=XWl05HZkEspXYEWNewaH3xn2YFWPGYbhvLwK1tdTX4kt89uOmiVABRxQxXxpXKHwE
	 v6ha7tMM/lA+qI4L52q37lCM7RAACZRdpSrQVnXi/PEKqV63t/tJkubhA9U8pNKDSv
	 NfmPzgELzc3sV767Nr+zK2Ki6JD2nB8JtOY8vS9dacg2+q2EtvbzksJvG6Pq+Icw02
	 CD1jcB14D9B+xa63vLwFfEJ2k9E8QvLv4KgZxiWYm9Th6WVuUXAJW7tGlz5D4cFY83
	 cejbDGePScCmF2+mX+PKrdR6gkyG1ZYRWZ6Q74s4ZQH2ScS8XGmts57FCmXlY0HnOE
	 O4sTS93TVQFCA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99F52D116E8
	for <ddprobe@lists.linux.dev>; Sun, 27 Oct 2024 13:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173003495358.4208.5532227133853100442.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 460513cdea1a3cef0aa2ea44906e947d3f1887608b1790454c5167b537276ea9
Date: Sun, 27 Oct 2024 13:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730034953
