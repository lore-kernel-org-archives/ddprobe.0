Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 174581C860E
	for <ddprobe@lists.linux.dev>; Mon, 13 Oct 2025 19:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760382594; cv=none; b=qs0G9cXUbu0kSJbQGiv6rzCtE4pl0iwzXo7KFBMIgKs8KJTMnHswXcDj+h5eLvy8yrwttkFKExbFjPS4O4xdAX+HO7ZxmKygKXZkLNUApe2lvJXgQ0D33oDBtPrtfxCaiqagd1k/desenweMQC2tvWcMSCO51PwxPCY2wRmUlgA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760382594; c=relaxed/simple;
	bh=AOYTmhSr3mATHX/+m0A8Xfuu/WwBV6e4c1TDB5QF00c=;
	h=To:Subject:From:Message-Id:Date; b=a498bRLhkFObuTTC3frCVFJgrZ0YEjFrdJ5Nsx0w22XgqMslcwnURs1PP45l7OXlFNOpw/Uz0mqgLejbKEZ6EPWU63LyNdPPo11P/2Pzyt4HTO9Z9UeFCm+iRZdaYCU2mrZ4FUIeSw1XzogZhvWej9PEsTv6Zup90cXMLoneF0U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FuOfJbnO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FuOfJbnO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2A63C4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 13 Oct 2025 19:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760382593;
	bh=AOYTmhSr3mATHX/+m0A8Xfuu/WwBV6e4c1TDB5QF00c=;
	h=To:Subject:From:Date:From;
	b=FuOfJbnOYzLZP6s2NZ9RMnkpuy2wKP4v8SfmfyYuG/9Z3nh62oi7oiTD/uRCSORnu
	 DqTwie9GPLWLGqC2IALsrmPB5+Vv5KBTDRTC9kxss09zwz/D6G1+0WrvboIta1Z2lj
	 yVjEyjaEfdqD+023LkWdzIsTSgwwgyEsSyey5CIZLoOgSyjPvbdL03ffdxYJ5wkvhj
	 bOp3HYhLkh9VN/2E0rrNgv3FF+tFu8Vbe9+hfKPA1DOwvCOFKW4Gz3y311Q17trC67
	 W7jTtyvNOX/HSUAdow680jJIxyDZHXwsArVyGLxsa9DfpG5QqpuaBsnqLwUxsz3gkl
	 aLIzFc7i/FT7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F7BACCD183
	for <ddprobe@lists.linux.dev>; Mon, 13 Oct 2025 19:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176038259357.30157.4051421240549181992.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d3057f26ef19467a84cf179bce7dd476f7aac4c600ab5b6dd7bad61c45613a46
Date: Mon, 13 Oct 2025 19:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760382593
