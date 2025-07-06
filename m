Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3809A383
	for <ddprobe@lists.linux.dev>; Sun,  6 Jul 2025 00:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751760594; cv=none; b=D1Th8Rq2MKoUIrN4x9DMiccEV9jaWwus8fk96621cNHzJiDdMZN8gEvBa+kJIAUJgDyMHulCotoBkNuu/qkRUndoJdzU0tPKsk9scEVTce4EwzeD7O3TRub/pjSWhCf+zhOb3sqyK3nYp208B2IEftQ+dxSc1qVx0q1MvbBG0oY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751760594; c=relaxed/simple;
	bh=a0eqMtAtgMt+c0AUsPXFfAD2/N7zDuSnEY4NQFNVZEI=;
	h=To:Subject:From:Message-Id:Date; b=mvg8sMXB/pZYy4D5sn/sSs3I+sv4Tgmvb9KVQrmKsT91OeL7sIYOZP1alesmlJRvS3K8EKGZmxfgpvKhBUf0QJWfNy96qjZgIVs0CiBuq8fw1UnWTxxjDWMGeBxX5Br0ntez/yX0J1nw7rDRR1mx/mJARlkqQFeR3Zz6w9shWhc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MeeHHodM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MeeHHodM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0960C4CEEE
	for <ddprobe@lists.linux.dev>; Sun,  6 Jul 2025 00:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751760593;
	bh=a0eqMtAtgMt+c0AUsPXFfAD2/N7zDuSnEY4NQFNVZEI=;
	h=To:Subject:From:Date:From;
	b=MeeHHodM+kWKGVSLNxj2tblUf4P1u2QIQ2K2eg+g/yjHMKSmiwR9Ipkp6TW97EL8a
	 3GleaZMqmrQ9bgl+eh8tQkJ/TQVgy9VE+Wdvprs+6LmuuKXnUEmMnE6SBoITrHY8JV
	 wmuohuP+edLTuVANLl+PN9t5qw2dfobzWS7e38ylMjTwISARhxxBsjMECw2K0FuMJd
	 OJQHYPoIQAOxmlVMdykI88LestNLi5kRVjbd7s1P3c+iT+iBkHDMfQdFBupfQ/Zi1B
	 eUIT7STUPtFFMF1zcE/SqDglIX1rVFYqXAeW8Ay3ipOpeSRSfYfrVO0OoYDWfGRa4C
	 SVVw6/zyy4bUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E805C8303C
	for <ddprobe@lists.linux.dev>; Sun,  6 Jul 2025 00:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175176059357.7590.14133630735970544530.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0c770ce85f80e2c09f2d0547eaf5805de54ad588f3dc032f7167838a32df298e
Date: Sun, 06 Jul 2025 00:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751760593
