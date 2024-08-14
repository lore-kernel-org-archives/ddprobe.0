Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 499C51BA883
	for <ddprobe@lists.linux.dev>; Wed, 14 Aug 2024 16:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723654554; cv=none; b=nij9pP55GgO7irbRExbkFpqaC6hetdmH54hQq7Ceqkc56634yyBrB1hnY+2SCqRRJhto9ce4H3G8H1Qh9kkmL4qbrEcMCBLeCv13MyR8efPij9SOWRu+1KOn5Rh6uJV/75NEmC7CKz5HM01A8Ul+kuARl+es88FxW/Vf7n0h5rk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723654554; c=relaxed/simple;
	bh=Tq5J8+K7+0OrEoNFUP170/vLPEp43MziYFAYDxkvPOw=;
	h=To:Subject:From:Message-Id:Date; b=tUTTmkLttsOxtCReVwYmG6RfESxXxXSG/3z1PNxO5AFKKAtGtBWBqKGZN3Vyjh2n4PknQI19lBLh3Y9Tmwi28Li7IlJb0jPxT+QDllQuZlZaoTjXgs7cq1HxxTvJmzPGYw5W+r3udz0aPEVn3CdL9phEDbB9F9JI8VPSVRQ09D0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sHq3UQK/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sHq3UQK/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B897BC4AF09
	for <ddprobe@lists.linux.dev>; Wed, 14 Aug 2024 16:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723654553;
	bh=Tq5J8+K7+0OrEoNFUP170/vLPEp43MziYFAYDxkvPOw=;
	h=To:Subject:From:Date:From;
	b=sHq3UQK/o50kPv76OykdpHqnmDvAQKEpQhcey0NLGhRZReB/Zvci5Z/Ptc+GqC5D0
	 Zjrskc7s+MAQcMuxQ8i2h8XhomNRE6ErLCnDpoNgK22ToOJquSKL3LiH6ryfyFCZYT
	 jJeobmlROxd0V/rzvyYw+BkgRGrufNGcFjgZhZqUqA990O4s5Yd2poM+hehLveDK+F
	 TkPzdVacDsE67Mf3nmtDRopqUCYQH9ja6KrMzwswUwEIKDRQFESNFKWdqho+mJIqmb
	 Fatfhtwxl8VKjtdX6Nrr6hxLVE7SSLMa45y5duUCFD1sZj5+NGKboEt6cc2FQENRmK
	 /8HjZ4PaxfNTQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A6DA6C52D7B
	for <ddprobe@lists.linux.dev>; Wed, 14 Aug 2024 16:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172365455366.5567.13728487785488445957.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6b8fbaa252336c26c8be3cc3ad76457adb74fd5849538b386aa885858a956412
Date: Wed, 14 Aug 2024 16:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723654553
