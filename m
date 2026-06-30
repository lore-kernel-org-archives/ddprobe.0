Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C8A63EAC89
	for <ddprobe@lists.linux.dev>; Tue, 30 Jun 2026 10:28:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782815314; cv=none; b=Yzv6SXvGkVrvSSGZ0M02n/PvO+inBdXkdPXd9GgpDxcWO/e9yu1n+DPU4HLcII3JpLzuhyq7FgfyOK4MTM1AHvNwcrL/bisNbBygMltn0rMm98RXNyht3J8zATrEKzOnejmy3ann1EdmPOsUSjQOZyKMy9kwCz2O5vfNXTgfB88=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782815314; c=relaxed/simple;
	bh=fuhPLuhctOuYb4uBEID8UFo+MlRF5lsBYHZnQwOJFn8=;
	h=To:Subject:From:Message-Id:Date; b=NroTy2C4q45GYRY7CXL9i/X7IMW4p5dOt6BT04uavTGIbOtc5oqop/ISAn0LIZEra111s31coYh6TTI94DY3I4dDY+VUFGkjaolLGUjgkMXDQMPcCqW3PvT0id1WCgUxjA7+CBZ2PIH0/OeUvHcYFe3JuZ8gUeoI6x7qKlc25nA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XkDhWY5e; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XkDhWY5e"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7D7EC2BCB9
	for <ddprobe@lists.linux.dev>; Tue, 30 Jun 2026 10:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782815313;
	bh=fuhPLuhctOuYb4uBEID8UFo+MlRF5lsBYHZnQwOJFn8=;
	h=To:Subject:From:Date:From;
	b=XkDhWY5eiuls/qH+hUXZ6IR8e+L1PkuhnlxWU7Bx5DzvFjvevmi/d+BMsCe+szWY4
	 c0vAG6ZM4qTPfRZOQm0KX379REcrXbyoxG/7lvU6z7UTs0fczvR6eVTWnZQ+APrLOS
	 6R0w2kCxFO3/RuNy4tuVVMNaqPkUMR/SbGDOT2jI1qlN6W/KtJvwzbZcd2yeABQBzt
	 87jEmwVuGd4CMDXVc+TriwGfkNkwEfujEclJX4KUWdBosmBO1f+SeEIgKiqhmy3lPE
	 8QMjHfbYHeyinlE1cN9iliHebDFADkXrJAdFpzEycZ8LyQf2O57BBejAq/z97WdwyS
	 l9RrHBUbbzRkg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD8E9C43327
	for <ddprobe@lists.linux.dev>; Tue, 30 Jun 2026 10:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178281531370.29940.1177983797255239624.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b00011d1f698d4aa072120f043c3cb1862df9da4b66760f2d138bdde8c1f7f76
Date: Tue, 30 Jun 2026 10:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782815313
