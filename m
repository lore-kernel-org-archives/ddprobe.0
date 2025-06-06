Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40C93125DF
	for <ddprobe@lists.linux.dev>; Fri,  6 Jun 2025 04:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749182994; cv=none; b=sw8OwGMOEzYNyn5ZBhDGKtEBQQM14drzIiLP/LpQymiodL3hn44V7Pls2jvYow9NkF78lqlJ7EHbR+cAjEukV7YO7PXcTaNuRiMPz3lPCF05LO7EwkWCGUb3In7KIKYssIULgPMiv4KD3kj1z9haXIINqdW8hrLFPadfVv5UQE8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749182994; c=relaxed/simple;
	bh=MNoI426ZHxLjZAzygVNjmS24IXZHF5QPLIQxYrR3iX8=;
	h=To:Subject:From:Message-Id:Date; b=c6Apl6WOn8j1NYrugqWVj1O/07UvkWKh8zrzh1voMfyuYaOLzyn4aLH0fteVtFKj5JUMwYF+IIJ8DJfKVCzu8iTplP4wtcxBUiJ9p4aOtNkOHZGpEuyRnaoPp3FM4bk1FFVwPvBZhJIfytza3yrRd4dPayJY2JZQuwRz1kp9KI8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OoDC4+s1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OoDC4+s1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A50D1C4CEED
	for <ddprobe@lists.linux.dev>; Fri,  6 Jun 2025 04:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749182993;
	bh=MNoI426ZHxLjZAzygVNjmS24IXZHF5QPLIQxYrR3iX8=;
	h=To:Subject:From:Date:From;
	b=OoDC4+s1RuBO7rr2G7OzyS5Q6qT5QIjtMWMZNR6zPkZPdSFpTYx/4IAwaMqLU/bkm
	 EMiQTHinH37SbfeeLlgna10OK2yKfjqP/2LdcJKgKUwEEfMzbDQfIdrs63Yzqmx6VQ
	 VBT0/clXO40N+z5JXbm+dUHclqThnHQ7TWsIKDLk/hp/PoNmM3EwOqIa1BDRjstcCe
	 9zo9MboQnKfKdwtPF/EENz6AOatvuDr0BG4DeyY2cm6sfnHcU5oIrPmun8cn4InxKM
	 StfYb19E1Zu6/KAe12giNIv8J7bdXbFfHdOipaPYUs3qgEEx1XdZHVvYP0NQ0tpjCL
	 JEqISik440ZHg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90571C5AD49
	for <ddprobe@lists.linux.dev>; Fri,  6 Jun 2025 04:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174918299358.16948.9900838879747962427.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 719cbc2c0ddb6b8b5e08aa458662fb1943732288b6444a2a06e75c080096d72f
Date: Fri, 06 Jun 2025 04:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749182993
