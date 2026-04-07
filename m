Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BF25E56A
	for <ddprobe@lists.linux.dev>; Tue,  7 Apr 2026 08:15:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775549734; cv=none; b=nMDyIJjI5Kb+CDlupk8pAgYxYPXMJOOOlOpWM+TEOeLGu2MWfGoNXfLQui2IGbHnbqlUFnnKMEvRqKu6qOBnjaVU+jseUixuH21e3UoxJp+A1ruP0IhB4pHv/AUXsgMBpkuPPGrvBf0WNh+VjvB+lfv4WMD2x83v7INt5+V6v3g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775549734; c=relaxed/simple;
	bh=dIefA19ubXrRwwbvkDUn2jovcDWzxUBIcY7oULhXYPM=;
	h=To:Subject:From:Message-Id:Date; b=qubNjs1qeH+zoIHK+Da1c8mZ3VPelmV51eOKlKi8Er06TbTv0qVejRM0DaMHKkBSG8xazQQyviPGUqd0VzNNjltRne/56arCDzgRAxKSvDpRLU/bhCyqZS5QJmq8vi7Pr+oxA6eP34FfAzMFIYe02YQqbFVH2D1/dMYkcGUUIkU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VCT1nIE3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VCT1nIE3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9FABC116C6
	for <ddprobe@lists.linux.dev>; Tue,  7 Apr 2026 08:15:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775549733;
	bh=dIefA19ubXrRwwbvkDUn2jovcDWzxUBIcY7oULhXYPM=;
	h=To:Subject:From:Date:From;
	b=VCT1nIE3kKuJ3+uSjlsaNkgS583jBTHVJU6h2gjmosU4JUa+rPd3N0CjDG5WaG+Ct
	 VF4FLQ4ZSGLg4kf5BU/d8VgfH6iWhbq/PwJLU2Giaqnfmd9N1UutYpDphcS5yvOtcf
	 bsq8oi+WzO+LHXaeztdR4aRr4ibTb5LyPl/1RMdnyrjobJxmr4NxjM3vPDrTFkIFWw
	 WpoRr07GbOSm8mrk/ApC9GGKBqn/3Ja0JVc7hUYj6/3/SAMLYeUh7rnCA5g4O/hrN+
	 uhF+G8mnozgcDdG8H1KZhnNOZocKtL/qdC4fydU+G/tL+XRPzLheBncagEs4wwSqky
	 yMwF/UbXzUmVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9DCEEDB7CA
	for <ddprobe@lists.linux.dev>; Tue,  7 Apr 2026 08:15:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177554973368.11989.11544035051880999962.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a3f6f7f557744d0f1cc04a2bea6419a58ba210fac67fb50294c3644dc03b4d7a
Date: Tue, 07 Apr 2026 08:15:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775549733
