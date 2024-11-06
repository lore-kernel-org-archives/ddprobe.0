Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2715652F9B
	for <ddprobe@lists.linux.dev>; Wed,  6 Nov 2024 15:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730906754; cv=none; b=DE2l+5UvN3SykPJz1qwbzkM1CErogZeaHOm/mVPd8n1O7HNZvwBQAXQCZ0bauv9vno6hpdMw13QKaTVr9wkfHO0NTuEwXsu/UJVleCwbytB3obtdT3wT0sXxLeCJPhCl+vGcXWDkcoorZJSf1n9CkDNDnHvAed0opLwcuaHupgg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730906754; c=relaxed/simple;
	bh=EF6O4EDftsDSdy+++YczM/qJGsJIBzVlZEOuf2iCxTs=;
	h=To:Subject:From:Message-Id:Date; b=FXShdg/05ka/fyGBZMwDLLtETc/ka4lJrOfQgbIHSWhvjky24yKTRoTkrzT+Fc2edvkIgBLzp6Wak8SvboTIv+hvqddinU78oKJQvLBvmZSXiurYzMi9Kg26FFKGY4C3KNpj4lOvyYvQ6b7/VcB5uQ1cuWwXCXbVIPye0d+fQ2g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QLMTp2kx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QLMTp2kx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7ABEC4CEC6
	for <ddprobe@lists.linux.dev>; Wed,  6 Nov 2024 15:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730906753;
	bh=EF6O4EDftsDSdy+++YczM/qJGsJIBzVlZEOuf2iCxTs=;
	h=To:Subject:From:Date:From;
	b=QLMTp2kxJOeEAheLPfPlQcpI6ArYIl5Mq3zPcHX0CLswY2KLzKisXTIgYcuUZWPRh
	 ttix11A0lZy9/pqr3l1brrE9uqCDMCgPa1LCXexIZrIX5ayfrOXNpuHFnGs/PrWHme
	 8xKeJxqiZ30SJh0avCdHg2l/DHU7UjQmP1Icpt7b1iMj9BEdwnn0Pv0UHQjNKOhmJC
	 0PGDD8kFYf6p/WWd3BOgBCRMbUAa07WAjjaJoVa9EYY7OLn3L3s7bza1d2/5UUQN7e
	 SPK67aQA5FJ2UbxL4+SEaLrxmeNN06s+qw0YLHchBgUPG/BgvwWSpJ4cRer0UmkPMt
	 QN+0yi+yrrMgA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9126DD44D7F
	for <ddprobe@lists.linux.dev>; Wed,  6 Nov 2024 15:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173090675358.21193.2116604989481974331.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ee531d5edbefc9fbe855af8aba8ebc0be2b70f17efe18efa46fa0a5b152f4c42
Date: Wed, 06 Nov 2024 15:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730906753
