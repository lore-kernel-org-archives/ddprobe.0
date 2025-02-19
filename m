Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6DE131531D5
	for <ddprobe@lists.linux.dev>; Wed, 19 Feb 2025 02:08:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739930934; cv=none; b=bBT7RYxQnn2dxPIRBhqorpqg/U6HnC8ZvZOMXk2tsOB5gLMVUBOluSGUfzIrFQfi5HRsu5KLU5sdau5qzwY73cEKNX2Ow3WNU1HWoBLTH6C9zVb7ybmfvbYzh3D10p/AxiibpLMQQGlHPGOgHlBXP+JTZMEqGdb/FuMLsNSafmo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739930934; c=relaxed/simple;
	bh=SRPTgk8VUVkX2FLIYstLgcRbKkPAtr6W6rAYVKHIEOs=;
	h=To:Subject:From:Message-Id:Date; b=RlZJ8osZpWAqrOhaUB3UYK7XFH1RW/efU+9U8wkhBcALXFRuuLKI+zmUMbwBoC2yvGwiYaYnO4E8nZP3KHeFqKuVUQ3GPuUoyae5jFudeWsq3s8Bef+yLbgjzQNYR94CoBLSU79d3xN9bVPud7QOkPFbNs0ZQoD8dK8cvTB5Rlg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DRq+RGHZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DRq+RGHZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8B93C4CEE2
	for <ddprobe@lists.linux.dev>; Wed, 19 Feb 2025 02:08:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739930933;
	bh=SRPTgk8VUVkX2FLIYstLgcRbKkPAtr6W6rAYVKHIEOs=;
	h=To:Subject:From:Date:From;
	b=DRq+RGHZUv+63f8+Ye1Fx+LQJ0HMagh6oB0nREfge0TZUTy+kmM4pUU75Ky8ePZ7+
	 /nVvhilYJxtRV4vI9RfS9tpOOKuaP+HrpqkX0ITpspsXB1cON+lE968x0G0KHejkGG
	 SCDtj9ky/yvomZZgWO3GqaEMuHuXxNOpaYts6jQpwcv7oo0dMmZkircpuWw9JrZz4G
	 4Yitb6aShmf5+kPQAJZJ6+wMH5gP6avin8rIOqSnmtAqOgt2CCoKfano0ckZFkJzeC
	 SVLkj4yQAMmOKxe+7U/7jdKjsNWxYn/3UqjbKOsVD6FVnf7dJqWwBx68qaGH8XugYI
	 1FjvJPa3Q4W6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A05B6C021AA
	for <ddprobe@lists.linux.dev>; Wed, 19 Feb 2025 02:08:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173993093364.18147.7263029557537024207.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 36ce12dd210698bd43ebc61755e311c612ec76ad929a2d9c05a6945cdf225e9a
Date: Wed, 19 Feb 2025 02:08:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739930933
