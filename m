Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EDB5134028D
	for <ddprobe@lists.linux.dev>; Wed, 18 Mar 2026 13:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773839094; cv=none; b=ueCMcPmY3aYQh0vpi4/uHZn0A6MxnbFHCPoD8uHu6/kRbX2RB2MY9y2BfDNZztPokki++BCYPLlhABAgi3xmQAzD2GZ2zQvHXS1WxbEn0rYI8ZoCXkTgs7zmWX4zwlZzlLmTCRq0jmmwZoBOq4FC+3P35B5mg1YoElbN30N3xjU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773839094; c=relaxed/simple;
	bh=l62U6sdKygo4XWRkR8LJH45NL/9y7SLenk+aFKR53Rc=;
	h=To:Subject:From:Message-Id:Date; b=X/7beNsTAEN0bUurQyfWisy5T8YlRE60XpRHTAdSwjwo+S048Y3t4qGtO33eOSBD9Ob41Ed/ITe89W2D7BOruqitfT9hX4bGHIhp2kfoiDBlrBrtZxZ92wxbZQX7J7wHEwEPvb/x7fyZjsdR7H2Tcy+j2vk/39wk5Q9g68WjddQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SZm7CiCA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SZm7CiCA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E3B2C19421
	for <ddprobe@lists.linux.dev>; Wed, 18 Mar 2026 13:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773839093;
	bh=l62U6sdKygo4XWRkR8LJH45NL/9y7SLenk+aFKR53Rc=;
	h=To:Subject:From:Date:From;
	b=SZm7CiCAL6nG0qOxCYkejCJg3bTwrfXEgyiDLxSqMyNVuxPwP4mepK21Zbkk2HWfd
	 Enprwdb3IelJXh8m11KTA9o8sdxsTdKq8CxHYWoZvvQEfG3daZ1rEgATE5peayfuS3
	 4CWiqLFnrH6cu5dA8nf5r9VP265M+4KbNdNgV6GhyP5nYZ+tUughz3rpicu3nBCBOZ
	 T6SJJLxB2chKVfQ0xgQ1Sr//6rqOZK68kf+x71gRPdLoAuM0xxknuf6De98ki/K/Bz
	 RCjFfz07X/wmocDWbSpIS3ZsSUJaPPaX/hrG5H8plBGMnnujLF1qyrP0k0QzERniEj
	 vzDTBPgT4PRgg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ECDD103E174
	for <ddprobe@lists.linux.dev>; Wed, 18 Mar 2026 13:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177383909357.21412.14944994645693139570.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0621dcc4c656c32b8fece72e77ce6f043fbcf60bb3f1a530d5d81172af67c44b
Date: Wed, 18 Mar 2026 13:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773839093
