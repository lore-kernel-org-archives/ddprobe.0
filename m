Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54F763AFD15
	for <ddprobe@lists.linux.dev>; Wed, 29 Jul 2026 08:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785314434; cv=none; b=Eei8+VbIUZGwYfSLCBndDYO0jth1QBIFWeE547NvEVlAeHlcEvQBPbEJn/9bpfozVLctyMyg+7D/S8JXUKf4q5k5bvUFs6ths/jBq7IbukYFPY26ezl54+t6Enw08vAxZ2Y2DUOjsGhCPq3HGMF7kpToUoUC3hU24RcPD9X5IeA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785314434; c=relaxed/simple;
	bh=niP+XR7eZ+xUyYujzTsAEN6uWogv/F0OAGRkzgYyHvg=;
	h=To:Subject:From:Message-Id:Date; b=u2WTr2O54IZTbgJlVWn/6YbwYEBjMt2Z50YrMRjkOP4AZ9mcYSBkiZ7cVZwbZ05baYYGoFh5PHVV2ekjDS/tkR+jD7X6qC6zJgRIZHPwmprHkYWl/Zoadndha7WEYc3gP4L+uh5EBdEec2MDli2g9KM6WOacM4v+096xfNgZR0c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Vq9SQ8So; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Vq9SQ8So"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9971C2BCF7
	for <ddprobe@lists.linux.dev>; Wed, 29 Jul 2026 08:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785314433;
	bh=niP+XR7eZ+xUyYujzTsAEN6uWogv/F0OAGRkzgYyHvg=;
	h=To:Subject:From:Date:From;
	b=Vq9SQ8SoeIYq/96QjplX5/3m94qWsM85LOP2H/zv36toLa+s4xTkfhBcdJ4aE3KY6
	 QQ07pHOm2hyk9NKsUIYT+PgS5OPHhTblmE3IN0zyV7WgzQ5qYGxTculPSayBg5wCZ8
	 UNc64RwBXknSETTELqHgaqKlO9ln3vFrkMMylcuVwJ/T/SgB+hj4AZlB7DhbBYlyA+
	 ykDnG1Yl1lEiouQdpxb/o7jqTAtzk6pPDKCteBDdD9TeNtkjmqPwajbWlf1FRUtwQ2
	 8WK1qbJRyI9pmQB0Qkvio8dEVFrl3olb3uLKmt+m1OK/akWDQsH//3jxg4ezVpL5PI
	 snia2cm6GKF1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8714C54F51
	for <ddprobe@lists.linux.dev>; Wed, 29 Jul 2026 08:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178531443368.25073.18059609905657239348.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e509fb68b56d1b98e378a5e2d82d7f71fac6112fb69624da67af1686a80deba6
Date: Wed, 29 Jul 2026 08:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785314433
