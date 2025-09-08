Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26F1830505D
	for <ddprobe@lists.linux.dev>; Mon,  8 Sep 2025 15:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757344194; cv=none; b=o8G7BBeJSjOu8/imJnXzVEtNHptT+d0aIcGXNxSAJrUMnoQCAI7+kl2lWtifqeaGKa90u2lOfC8uQ7iyQ2iQzCPF8GQ2C1ApCd14LdYnehGAtWqnQurOqQfBGzfvNhJBaYipecKtQABqmoIoksyBL8k67eIakhu/t5qtMCxUV6o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757344194; c=relaxed/simple;
	bh=d94Vl5UbNPkWOVyvF7oL4w0Ps8BvDpgP0qwYRa8/aH0=;
	h=To:Subject:From:Message-Id:Date; b=ewXREV4hkgn7NcP7Yh9N0PMXAQWzOtjLW7HArYNSabemMqFsWmkuzv9GymfCxX5RDTovA/Dcn7DPvBSWdIQXXjspxclBLtUe0yYO21Uzagq7MTreWwiSI8wFWMCa3I4QUUdggC2LqU1GsD7hKNJQDdNXmlFO3YCEEk430Va0N6w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UB34gtcy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UB34gtcy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0E3FC4CEF1
	for <ddprobe@lists.linux.dev>; Mon,  8 Sep 2025 15:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757344193;
	bh=d94Vl5UbNPkWOVyvF7oL4w0Ps8BvDpgP0qwYRa8/aH0=;
	h=To:Subject:From:Date:From;
	b=UB34gtcy3L3ctZSrf+4vbK4QomiLOYpOo6coBbvw7lTHMphgPGDYBZg0pJ78VpBEh
	 wb+yjkpP9d3FmTV3Jb4YvTWvkAtaBiQTlMH4CBgU+bOhOlpvAsIKKAXSzSv79ycFMe
	 xaSvWdKpCakv9lg1syhTvC8VvP9d4tepFhng+xk81IHbDCkrq9UJZ35cLGqmW8BBP0
	 twGOEDe+gmcboDyyuEtT76xepqUdqmjSxTHfrZfE0qtFD0QDQHucxurX598YlXAbJ7
	 lidt3jGs/g9dqUD/CqeQYNh7DUG0BT7yrim8uTDLm1oA1SxcZXBdEdNxOZr+8pWN9/
	 wxtM2CmvemmCg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91A41CA1016
	for <ddprobe@lists.linux.dev>; Mon,  8 Sep 2025 15:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175734419358.3269.912122173399256503.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2e488ab6d0c40595725b7db0691019e9df0ab505ca86966c5dd29109cb2d6071
Date: Mon, 08 Sep 2025 15:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757344193
