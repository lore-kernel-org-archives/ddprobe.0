Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F1A830C345
	for <ddprobe@lists.linux.dev>; Thu, 23 Oct 2025 11:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761217794; cv=none; b=DPfZAFDfiqoDxv8fYk0EuoESzh3CX/o2/phXXW10UYEirQNHIX5wg4Izetxps5lOgSiLSfJlV89NkwDi8nxKpleRtvzskuQOoJsPyi8+yCEXP1SrCt0/3uOUGU1boGCERpZk8JTCrWMucH46W6ePo6NGDsPQc2qEA1DSnk84UI4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761217794; c=relaxed/simple;
	bh=fWJinP634lKt32kh6MgFKvgLOWsWRLkv0+rT685ozWQ=;
	h=To:Subject:From:Message-Id:Date; b=jc/zaAF3Y847+AScd9iFtH42XXP1J2LlH3/A80qwuKDAmudvlOyX1rTIVgXvRwcjehl2a5hc0fDXqXpUaVVJxjAbrqShFwBzBVdKbC9NGlRF4lfWhZhgqKZWyNBlxFF/+PWaDdTJrjPJSI2zgzdUVn+iUGFKK8raXcxYhWtNdMk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e3MHImOP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e3MHImOP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E7A6C4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 23 Oct 2025 11:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761217793;
	bh=fWJinP634lKt32kh6MgFKvgLOWsWRLkv0+rT685ozWQ=;
	h=To:Subject:From:Date:From;
	b=e3MHImOPhSnR2hJNOV5+EeJBthTLcup6WmOcH0K+KPENoOO8f80CVVurOr/QYuqoB
	 F+E7lD9nTebfxJUXJbEFm+OrdoU9bmN+IgQcMXpZg4S2vWRLrNXYFBVAOfftMiyWxE
	 bOeCJcdXTwcn6Y8LocHeQe/B5+ZCuAOoYuAlrMfrFsZ/1iKGvADcsSCK9yXMJ9FBh4
	 L7uEn6jTWKO6r2UhxA6x3NQ7oN1Uj2U3oCf8lORSij35LtQYoGZIPiIGRsvJQl1xAK
	 W+I877Yu0dkd0FSGrnSo8j9WN8EQkSyrR7opAIdWjAr9GkiSlj+mIVEjSiFYJMNiXM
	 ygp2o4p3plCOQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FF0BCCD1BE
	for <ddprobe@lists.linux.dev>; Thu, 23 Oct 2025 11:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176121779357.28633.10342432138665250707.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0d0bb8fc877efaadf61244ac7f3a329daabf8d9e90625748a8f1b565e82987bb
Date: Thu, 23 Oct 2025 11:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761217793
