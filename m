Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 093334DAF8C
	for <ddprobe@lists.linux.dev>; Wed, 16 Sep 2026 20:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789591235; cv=none; b=bkawRS6pLJYR2tosoLqzJ/eUplWnSQQpiuAAiOAKYWq8oPZaRDSOyqDtQ9z3v9Hhl9tzOQkD2HQkGh8z68obrj5TOM78bH2SbMMQ4jR0Gjge86SjP8DU9ayPFRnyeZFNuyXqqNLSvN05d3UM0O0xTWayk4caA7eKXugtfekIiAw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789591235; c=relaxed/simple;
	bh=lJxJHNSw5Rfszz89RTHYN7i1uF9RHRj0BnzqmehPTng=;
	h=To:Subject:From:Message-Id:Date; b=UNlHDP8gWoCib9pMn2J++IDTCpEwEuNIWXLz7ISuhuD8pKGAJNRA7Pz5ZneK5+0jG1qENDDYITCtQ2t9mv6LzaLC1jLgvABkPyptmfYPRj+KSZsTMw5VRyDkj6/Ca7vX7idSB3rTIgWaBRc9ONmZQynOVS98vP0/d06BYOqiclE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BZqfeTEU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BZqfeTEU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC4F2C2BCB3
	for <ddprobe@lists.linux.dev>; Wed, 16 Sep 2026 20:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789591233;
	bh=lJxJHNSw5Rfszz89RTHYN7i1uF9RHRj0BnzqmehPTng=;
	h=To:Subject:From:Date:From;
	b=BZqfeTEU+XBYytThE+hYkUCM7ihF/7rGHPsrKRjyTPlBT+hjqwUI0eaFRAyx5SWdH
	 RYVSHqt2pKStLVnbX0Yk5oziQD443le7lTelW1G5naFGkzVCbohEOk+aI/J4WUkytF
	 opaWmxDiGR88NAfxff04k6tVGexyWnp4tIsDED8g4IfSAB7tq0bW+gMXWIB4TIK/8f
	 A5jaBsE+xA0Ginxnl58w/d2migu6p9008KlPFAadANgfYAY8V6dyLyl17KI6nx4UBV
	 LVvgAHS+yLe0+WDyw8gEVqKnRtupaDhy+2twMo3G/7lwAVxYWd3ZCjY+tIFK1IzxYp
	 Q44laPt71qJ/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7ECDC982C9
	for <ddprobe@lists.linux.dev>; Wed, 16 Sep 2026 20:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178959123371.14046.13947780334685295522.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ac2f599bb04f68fbaa5ad43bf0a8c3bf9a384f544b00dfc8de04a68a4e3944dd
Date: Wed, 16 Sep 2026 20:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789591233
