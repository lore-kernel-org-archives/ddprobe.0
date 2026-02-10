Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3071023A9A8
	for <ddprobe@lists.linux.dev>; Tue, 10 Feb 2026 08:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770713634; cv=none; b=KXqA6itVe5LQZkH9SzAVRQFyCIVAsBwz5xYP6hmQWL3GVNgYcChD+zmszFAWj/PMZBFpYCHnIVDMu6AwaDGKrQic2spqR941xV1RMX/CJFwpzl5ImSDs9WpG4Kl4fzf2O/ggzD+8ImYCsmSuhYVqsyRpkYGutuUkvOPdwAZrCJE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770713634; c=relaxed/simple;
	bh=A9nDxa/5ahbn0B3WayMrtPgF2lLlofTO/QAzZBpPmJA=;
	h=To:Subject:From:Message-Id:Date; b=Nvwxo7gA2a6Z3y6VTix1qVen2UkROMW2YlPqiL0xQz5hDtFEiTMJozNwbOK1z+thb0DH0lUJ6i638p2NLMtXS/fG2K9cHROFZKiWLgLGpD1GL2bZHEgng/GsB5/s3cHk40VNt8CAXwo2EV4jkBLD1tgMiuensGJk3mDkJZHvLW4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lLC/ISb2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lLC/ISb2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6DD3C116C6
	for <ddprobe@lists.linux.dev>; Tue, 10 Feb 2026 08:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770713633;
	bh=A9nDxa/5ahbn0B3WayMrtPgF2lLlofTO/QAzZBpPmJA=;
	h=To:Subject:From:Date:From;
	b=lLC/ISb2byoJZ8yLUdHSx0SmbmNjc+hRjNFNc2o0hW8cQw744nSy4ZJtLCYFPp95l
	 GmC+XrZ1XOm/Q7ZZH+oiarVkQVsbaaLc0J5spBkwe0Jol81VXsElcYiE4m6MzWb4jd
	 mMld7tG8ZUU0QbvxBRc9k8RqUTJc8eocEIo1aETRxmLyAnoHWVpchos408azvz+KrG
	 PZ/O5mWDNgs3JwZ2JcHV4JRBr9JFHzqJnXXHbDOmF4fSwrzohSKsA3hfrZiSUtu7I9
	 qrsggJSHr15/LZ4H9h+c0zr/JvbcbLINVjnAt4f2XrFwMqDBKev+7Irl+eU9M0dCbq
	 w5U2KO1tnra4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9274CEA3F2B
	for <ddprobe@lists.linux.dev>; Tue, 10 Feb 2026 08:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177071363359.13767.14929880448939719600.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 33b59f84d3184cb370dc4cbd330af26b25a6f6de49dab2efbfa9459fab67c1b2
Date: Tue, 10 Feb 2026 08:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770713633
