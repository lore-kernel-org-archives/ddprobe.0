Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 61CF6248F72
	for <ddprobe@lists.linux.dev>; Wed, 15 Jul 2026 02:08:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784081314; cv=none; b=dJ0dlt0zKsRozby/SEtyJWXSI86Rs1S9FjCHkCjW/TAbWztz5+jIM4DnfFiIMPKmQLaTj26wlEZ/lHYgIPdNoC+qly3xl2JUsiMhJmicPh030he3lc0XLMyWa2DER9uPLHygYwWJlrmgAUsgUpHGdITG+R20blBH8dsszRFRjH0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784081314; c=relaxed/simple;
	bh=6Crzj61MOZl/MT9jABPw1xBXuud0OyXTa+LvKdA/Yvs=;
	h=To:Subject:From:Message-Id:Date; b=BBzrGF+gIJ9kKRX1/SObKJBZq4wYDEKF3DzDallLHspJu6gS+hXtS5uJHsWKJfRuwhMXhtCoAtty8RMleUfh39MuowHpQyJEzaqjJblo+rCw69j+C8QUB7yUL2+qIaK22hsGyUnqk8dSHYSFJSJALbQ+8dAvieW6+VfPHhOE7AA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eicVfS9m; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eicVfS9m"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4EE9C2BCB8
	for <ddprobe@lists.linux.dev>; Wed, 15 Jul 2026 02:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784081313;
	bh=6Crzj61MOZl/MT9jABPw1xBXuud0OyXTa+LvKdA/Yvs=;
	h=To:Subject:From:Date:From;
	b=eicVfS9m4PjwB7/sa7mhaGrvJ8ZgH4g16UgB9x6YhoELBVQ880wiU5wgvpGsOmJGr
	 /Wc9QTZ4+PLPP48cSgEPO0r4box2zUYvRPS+Mg8nmyofYZh8XoFFqowyALN9fpjCaR
	 j8Nyp+W0qb7eJsHVsDeG0GkWYxiHQWtFwyKtdgECSa89qkM1LYUsEMwR7HethRzJlA
	 4QlTgmsVCiU/6FFpPFWAVnwT9wTfDoS1VAkLJ7QTSa6HblWGzLqlJTu0PKyyxhhhkX
	 tgx5toMSe9fF6rnKs1cfpLD4EWohyy/raQJsO89G1rL7x7gRnLL20brQtuab6sGCFb
	 1XHPo6sry8Sdw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B12A4C44508
	for <ddprobe@lists.linux.dev>; Wed, 15 Jul 2026 02:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178408131369.24377.2966518331408011775.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4d79d10b9084ff0ee06f830a5ef35eef0c769dcc030812a7a2b5d947721c4927
Date: Wed, 15 Jul 2026 02:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784081313
