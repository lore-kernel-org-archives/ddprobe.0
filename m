Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23BF220B0F
	for <ddprobe@lists.linux.dev>; Mon, 30 Sep 2024 15:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727709354; cv=none; b=UQKvb4cduTaRH6e6iBB1AK4FWu+Ag1l27O3BgmtgLCvpB+oWWqLfuT+fVyZgGBU7kglzf1Z2JG+wUyg7pbX2DvJ4LBy5JQKs9P+u3U9ZWD+OvqU1xHe2ZGFnIPO2/hk2IWnYPstMX9HG9Mazgvc3hqjOSupWfH6e4vMo1qwty4A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727709354; c=relaxed/simple;
	bh=hieKd1ZHIwjyoCOR+xTcwZ2mlbdkStr0nBXs1yfIVf0=;
	h=To:Subject:From:Message-Id:Date; b=oFEGsC7c8s0m0YT/Cj1/fggkTtHHZp/V6UICdWFJCYSrNQM0xPzK0+tyQzdpboV6G7vE2R7Rlgz6U0/m4kMXwZs38klbOTLTbEqN+1S9d4TLGuzwnwX7sqeNwwpg/1Z1F74cZc9yHl2rt/sHPs83n3b5/WNgJmSXQ2otB3aaqKA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OJ9zt0CT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OJ9zt0CT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACFF0C4CEC7
	for <ddprobe@lists.linux.dev>; Mon, 30 Sep 2024 15:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727709353;
	bh=hieKd1ZHIwjyoCOR+xTcwZ2mlbdkStr0nBXs1yfIVf0=;
	h=To:Subject:From:Date:From;
	b=OJ9zt0CTpLi9ywb6yxciOJwSMU0wA8C33qjk9Z51KR25LFY4YNfyorrlARM+x4Xh8
	 FrgHjA6tWCN6k2Wg5o0g89U/oZdvhM7Cs3YdwbQ3J0XJnxfQpRxB4PfhB3/EWZm/kN
	 CjoPfE8y3Pw55CE2IN4UihuYAqZc9O+JPySM9rArf01nk4OLPNCzhROe9SfboC7pG9
	 5Zj1puTK3EAIcnDQqotALyN9GV8kTGK2v1/qbWjJ2GqkWsCYKzOZlwLFLJuSzdH+XX
	 RSLe/qB/SCIqNnLJW+8OXpAq+g+6nV1YXEJ82DByCSO2iovw06yTaqyvQIFWl1MsZ7
	 W+0QvXesTcGPw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DB18CE835B
	for <ddprobe@lists.linux.dev>; Mon, 30 Sep 2024 15:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172770935363.3525.12408326594513569788.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 42a3d0237e257e6b48440767dad52e5971fe0981d84e706a1507bcddecffad2a
Date: Mon, 30 Sep 2024 15:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727709353
