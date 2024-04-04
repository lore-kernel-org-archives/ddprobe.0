Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EFDA074C0C
	for <ddprobe@lists.linux.dev>; Thu,  4 Apr 2024 20:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712263697; cv=none; b=OwJ1oLCbA/8rdvaiuDJnBprmtKTw9I0+6J+ICqS3OwtwYQkspJhQ9paBZfvnfH0g+K8gSGd7Uv+rXoMfUPUHbxPrdA409iPJDBWwL/A1z55IGSuVTO2GVYkNbkFt+e4yMQPg6AmiLVhK/6cjRaHOx5ZPFL5nl7zAaknYtkI6nyw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712263697; c=relaxed/simple;
	bh=D8r9RLt+7nH0FrSZq6ZTm8X9XENHHbooQyGIVZZA0pg=;
	h=To:Subject:From:Message-Id:Date; b=PJt9qINUmxDH28MNBZsiOgvZl5a0RCcJFrPIyhb/e4aOObUo49sgenUa7CBN7RMe5rB0s202ieCHVKe/xl0+xl4HG7udPtdeTboAgkH53Ol/oPWmO2ljVSBhp2ANQKTafomcWw7ZWUGz6C7c8IIAFqOMp/6WSR3kEwEwkxMa+qg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uo2R8P5Y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uo2R8P5Y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 74A37C433F1
	for <ddprobe@lists.linux.dev>; Thu,  4 Apr 2024 20:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712263696;
	bh=D8r9RLt+7nH0FrSZq6ZTm8X9XENHHbooQyGIVZZA0pg=;
	h=To:Subject:From:Date:From;
	b=uo2R8P5YzZQNHclknoOJJVCDMKIKjulXkAMNLo3/cg4eYyFboobBx7cTAM4HvHlwg
	 /odAbFGU0PCbus5yqb/8nMmVKxsqc2s1H/99ein0bM5kRnrMYdx1lYhPdgSe3XqHjV
	 F1uWQ0VnpJs9N13fGhNyX+qDPxIvUS+MeEwjRP7SCTl/s7/7Hd5RbWcIE25Z4GjDoX
	 btIQn27q7yVVqT6uRe5OcLhsAfC0O86i1GfQgty+i/sSFStMhcIfv9wRGUdjJzbWs8
	 6h8kS3DrYLee6A55z+Ij0Ro+d6hNsOOxdN9sV9P1x9UP/CdC/KJnOFqGx/W1GYbs/Z
	 lXTFP08lGy7Bw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 60524CD1288
	for <ddprobe@lists.linux.dev>; Thu,  4 Apr 2024 20:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171226369638.2185.14322611005836542924.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a1c33d9677197c12da1c72872d70a26351378ad4eebd0ade89722882c8835ac1
Date: Thu, 04 Apr 2024 20:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712263696
