Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A2EB1F4181
	for <ddprobe@lists.linux.dev>; Wed,  3 Dec 2025 07:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764747774; cv=none; b=dsxTz5k2tG3JYH1bvWn+IPevVye1fsBfHgNz+sGVGHK6b5BPYU5C2VdBXHey26HIQwcB/A9ObUD0f3E2CrufgMcAyi7jCN56TTbwZ9XNVBfMbnOXqvmkSor9eSvjR48AOrpT/Keacb8az9vnE+531B8iZTv3WXodXSKJGJOaEUM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764747774; c=relaxed/simple;
	bh=sa6hUKkGXVVS0bHjgh5BO0MhSk3L+WJirLnWjiF+pMU=;
	h=To:Subject:From:Message-Id:Date; b=j00Fhljo1ABdEEkWGqs6BgndR0qaOG/XGt/wJJpE/U4rTdpOYsD0Te94zX0DMVI/l/4AU2L/H9aCWzNa5fD5s+hTK4EjGDel2KJe2efMzMyDos5dPkslNMGsE0T6OPXkOCY9bjqAPeeaF9wRaQZ0QVLGP4MXI/b97nTvtVV3e7A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ArH6M921; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ArH6M921"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EC93C4CEFB
	for <ddprobe@lists.linux.dev>; Wed,  3 Dec 2025 07:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764747773;
	bh=sa6hUKkGXVVS0bHjgh5BO0MhSk3L+WJirLnWjiF+pMU=;
	h=To:Subject:From:Date:From;
	b=ArH6M921S+eOkeGWOsbMAITGaJSh6vJDntwzwZsVVFaMtqb9fmxp1g0iFzQnFsAj6
	 3vWol4J1C2WG7GmqGCIgLbDSbJQ4CdCvGxswCsYgyqCPnjqIVXtGVyAKLdC1Hcj+qf
	 3Pwre//vXSdXb7YVJQ9KMk8V0BgUjtcZr/F1cdznYOUrYWvTzV77szfgl+ixCn83ej
	 V/Ewf1HW6oB2komA8aq8KzcLwpK6ublTMchB249R+cvWkV3N5f2jGdeO6C1tJ5O94t
	 NBGURR2O6xbbOqm/gi6aK8DsoTjOeSSc5NIJgiIPMd1oBq9rORTkh6La4cwUhUc5bG
	 0hBIDE4t+/Uew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FF17D116F3
	for <ddprobe@lists.linux.dev>; Wed,  3 Dec 2025 07:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176474777358.31299.1013154643324878244.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 933aa5a0b1da8ab474f00aac90c8824eb4797efa85a45dc33a1848f27def99b0
Date: Wed, 03 Dec 2025 07:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764747773
