Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25CB738CFE8
	for <ddprobe@lists.linux.dev>; Fri, 11 Sep 2026 17:30:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789147836; cv=none; b=uqYY3SLvS70c/NSerSZ2kok8HyOGXbNxfHbAyfaTS8+yhc4k2ovZID9upawapPPeI78lWQc3m4xH8qYA5kpM10siSfc+JIwSGbJXB/CIQI41btrHDcCX36OjqVT5PqZ8moOurGh+/VtvTzzbfXXSkl/cvsXkdZ5gdrNG9JJId1w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789147836; c=relaxed/simple;
	bh=iysyN5C8HTKTo5ah5AiulC0tn77QAwPqQQmWitExpMA=;
	h=To:Subject:From:Message-Id:Date; b=Uwb/VG0XmmWvw+0zCyMhd+BKCPdaa/y4lk6OyxcYJEQC6DMzKiKIEkdaJZshEm81XIDk8xu86ZW0Nbo+Jl1jWj04OipSlr+sxSG7CIWFOc+Dz7BRjNNltU5Wor8n63GXgiZq84dCbn9ytC37YVoVbL7ItKFaR4fuzJKEVo7DSiE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p1GZHqqG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p1GZHqqG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0863C2BCF4
	for <ddprobe@lists.linux.dev>; Fri, 11 Sep 2026 17:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789147833;
	bh=iysyN5C8HTKTo5ah5AiulC0tn77QAwPqQQmWitExpMA=;
	h=To:Subject:From:Date:From;
	b=p1GZHqqGaC3nWggPW+Vj7rXdWQbELdj8DlHGOU5GreiXGDLVS8qcJ7cStd2EzjN4k
	 YUiKUQiin+rbI1K6mH31zb20TFoTVpylRJTJRkc/FrZj+Lk2LDEkWFZpmgi6+nKm30
	 bdLVZx45ngH5Fr6Cy92MGuB/OjWqgN4OtVFyIb3y6Nf/Z2yG9VdLiYAm3Zhh23wcEL
	 URQac26BpvHRq0u1STA7KtcrdoSnc1uYxXd4jDpnztEGD/5Pbiky7zMXQVvUgJvxIV
	 9dA9xdOOJM5cIAk4bc7AK0VfjpoFIQWwrRp2Te5tUfrAFo0pQNGnrarVPqRSKhEqUL
	 /WDHjbyMUvp7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC1C9C88E53
	for <ddprobe@lists.linux.dev>; Fri, 11 Sep 2026 17:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178914783369.18627.3341709772720831902.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4f276a09d774a9bf9e6488d65c87b4391525294a1a3ade69f3f2c7b9877ffafa
Date: Fri, 11 Sep 2026 17:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789147833
