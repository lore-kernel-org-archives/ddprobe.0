Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D3B927E056
	for <ddprobe@lists.linux.dev>; Tue,  4 Nov 2025 20:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762289994; cv=none; b=i1IoxZ9zU9pkw+e9f08BVaT2ju7acTVLJ0DaluvZS/skBifscx5MY1TAaGitaX2Oa+ySG3hI7oN2k+FIUp2Opp7nQrEAX8123VUeReLky3pgIe7UIyPQuRCsL1JK7eeqg8LguNtwEGat9vIXYvhlkKg0E31Mh/4kgZJi6zhAOxU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762289994; c=relaxed/simple;
	bh=dsdm8Sfs8j8J6Hx2VC/1CK5AatCtbeJpjt/8QIxWji4=;
	h=To:Subject:From:Message-Id:Date; b=XslbpyuJTY90I7MuNm8h/iaNQ7Ul3kvM+iv9fk0lKqPxyA7UvNv0ke/qOZ1yrIEmy2J6NDRaF68MdsJDrG0HoFzN9bUGwmdy/6BH5vLHg/Va8Pjx7xw0TGComFZMkOe0pLfVZi0ttEYPQ0tF/1SiNqvxUZHu21xlgxNBMBv9lkk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nM+uTRDH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nM+uTRDH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A073DC4CEF8
	for <ddprobe@lists.linux.dev>; Tue,  4 Nov 2025 20:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762289993;
	bh=dsdm8Sfs8j8J6Hx2VC/1CK5AatCtbeJpjt/8QIxWji4=;
	h=To:Subject:From:Date:From;
	b=nM+uTRDHWGYS+D0pjKRoZY6hnAzmk7jux1b1cJZU7lXMppmTmWrVuXa5VCR20IKGy
	 wJxNCX23YxhsFWVit0FhDebjfkbjKuAuSRmw3Y6xybL5kZcGfDAjYIZ9Ww5E/PDPs6
	 YgAC9vGHlvxH+9d51VaZfVl6WHkt5qXIENsHfYHjKIrzSuCR7LLLhe23VctJncssmr
	 cGu+qwwFgP6v9/v002YvcNmm322G6XPRdKHyt4xHOzFiylR2+fa60uPV7zacUNeCvP
	 hQj6a46qmSqn5eQwpLdlI7A2/yhF4jR3ds70KqEvuThxBnaQeEd04T2NfRwQz7s1o3
	 83Qhp/l7ijgdg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9144ACCFA04
	for <ddprobe@lists.linux.dev>; Tue,  4 Nov 2025 20:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176228999358.20863.5745695534151528761.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2da2a5cf583eac32230280f8a9843db3f3d8944de41f45fb78b0655682a9023c
Date: Tue, 04 Nov 2025 20:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762289993
