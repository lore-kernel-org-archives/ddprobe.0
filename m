Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8AB0F1A3166
	for <ddprobe@lists.linux.dev>; Mon, 24 Aug 2026 00:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787532034; cv=none; b=tYAnp8I9QoqMkli///kbdMigJHFMowKJBeWq7ISAY7I27h2PRQUkNIoHKir7OVa5KDGUhXAcgMO+3coadMDu0R5V6IwqdCNbyCoBYRFPcS2XKEqQubkYTdTSSwtEmHlwS2rb686uY43VIVA6K+R5emi2s2s8Gqor7lkGD27UZb8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787532034; c=relaxed/simple;
	bh=wLe+ulwY/kelMI3l64CSAU1hTHEM7MpIbGxmGxYcjYw=;
	h=To:Subject:From:Message-Id:Date; b=dnozPo3DBBvXa1i+KBz3mmjsqWv3zgmb8kZrhduU2u/e9ucOkm+FuYWdlhrW9XicTHsTfpvvTmCdW1x7kKi45Sd16gRxLZDLSi92n0ssoJZF5bgyw9IBAJJszlRSm/Xk5wdoz8BlPExgahPwq3CUj7CgKIAW/StLYmkKNLN/53Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i7W3A/qy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i7W3A/qy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5E19C2BCB8
	for <ddprobe@lists.linux.dev>; Mon, 24 Aug 2026 00:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787532033;
	bh=wLe+ulwY/kelMI3l64CSAU1hTHEM7MpIbGxmGxYcjYw=;
	h=To:Subject:From:Date:From;
	b=i7W3A/qyPNhOMWpxtd648ZS3YmYTf+SBbkJ5nZezNbs2dxpbTJhaBjGkDB7tRWi+r
	 PuCxmMJDb1Qe43gQFL+ItBraQeFjoxWDDLw3uYnxcF1Lf91TTWR7WyJTSJMO0TFHT1
	 wHYbY8IIC9hsUWxO8EWHEApxP6l2fsWOMvMoZr1e4uzse379tuTMEs32nwATwxxeqc
	 XxVNKmXBaWWNYJ/YZLwy8zrfVBQvwOi18hp6O0qYXcrZN8D2R6/5FYqL8ndGI4ATfv
	 a+AOncZlI6+BP4fwWaKHWLio6mlix4Yob3cSEjjWNwRHwAX/5Tpc2OOSum4O+3PyYV
	 bnPeXnf6zYzaw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1C37C5DF97
	for <ddprobe@lists.linux.dev>; Mon, 24 Aug 2026 00:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178753203368.29196.9386670486539401916.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2d9b006b50b54446ce42abebca34132392ca55d7c5be4fbda83d719434d5ac8b
Date: Mon, 24 Aug 2026 00:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787532033
