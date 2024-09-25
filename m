Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 399121870
	for <ddprobe@lists.linux.dev>; Wed, 25 Sep 2024 17:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727286354; cv=none; b=oX797zas4QfVrKX6TSf+gvdRPTzepUDU/fmuc1d4eMotXiVE8/SKEKCZNRzBTGAIq5YNmsD62rpimSaV8AdE9KaS5qfac/bsZdzRnkFCIbdua3Q4Mv65jWCZoJqJlrhIfdHzt6wn0rfxxVINjWg5uzO3gdfvH+a4HnzdNybQGP8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727286354; c=relaxed/simple;
	bh=yjwyN5Ep0RNjGli6PMVj/W2fsbJu9YbkqenKSRCmYqg=;
	h=To:Subject:From:Message-Id:Date; b=SzRgWX8lhNN7WKg/UZouqygvO/iX0YS+Wb/o47VfadXo4Q8Z7zJNYL0VCuTbVyomKvujlf2ws4UFSUEzEtpRJqhcA5C/5CbK74dDgo4FPIHVG9WIeqzxFh+H/u/fTtmOczP5xkQlXC2P2S/s7DDJ2f3p5Pg3JDEkGVXdUKXw9cw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TzpuH9CS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TzpuH9CS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6BEBC4CEC3
	for <ddprobe@lists.linux.dev>; Wed, 25 Sep 2024 17:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727286353;
	bh=yjwyN5Ep0RNjGli6PMVj/W2fsbJu9YbkqenKSRCmYqg=;
	h=To:Subject:From:Date:From;
	b=TzpuH9CSMg6Eb0Hsd90TyJlsK9Q2+Oa4lV4gEOktRehq+lktVFBMi0Vo2bsashpnV
	 5Eb/rgc28kxl/BMidTIEFJ3JNx5La84Ut+U/DkeZwSyCZiyLql+m58lZLhZ0RLQDVQ
	 aAs03FHXTW60cCjiOL+DNwLOeS++CFKuq+8TEuxgjoHTgQom/RUVW0splOtanxsN6m
	 8ZMJiQRxFw1+dVoaiiQnHw3muh9eobt7wIy6AOy6bJFle+EuKs1RLuYZZlp+wiWW0Q
	 IZd4hRDC0K9b+H6jQ3+mmZaeU/X3VG3TWkFDpinjKDvqkDc5JrS0B3SjxaP2J9ykb8
	 Q8D5rC5JAPWxQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94527CCF9E7
	for <ddprobe@lists.linux.dev>; Wed, 25 Sep 2024 17:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172728635359.24337.13619117926178502465.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ed0860b21c81c3f89aaba4e17ecf3ffe53fba6de3b4dd1c338ca161a1afbfa7d
Date: Wed, 25 Sep 2024 17:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727286353
