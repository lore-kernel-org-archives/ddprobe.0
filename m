Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BAF91E7C2B
	for <ddprobe@lists.linux.dev>; Sun, 23 Mar 2025 04:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742705995; cv=none; b=X8iYBhoWC9ndyeKtMtQKYf4HGFSQtF8bi3+QFOwLImPG31qF0t8RU421AO8dd9RcLcgfqK8jJVgfx6rsmk75E9+/3FtGhOPRBPL60pQzq9wG8QPonKGTcEyQBsd/XsbZuMFWOq/7bjZSoZPOSqdoVtqGLOFBwkjaAwLrrhHf0JU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742705995; c=relaxed/simple;
	bh=7yB5vjpZmd/77ty71jpiS7XEKtPZBxvvvj+LSSniCZE=;
	h=To:Subject:From:Message-Id:Date; b=XZxZ52bBI6jGt2YAojqWfDHKQul05cSQmulXDE5Q6EpDhZEvZ7rWFmmlu5JsvpTGcehcVFVoX5IJMszq8CRMK5R3lccILQHrh/gzaJgsISo4wP68l5wGmkLevDW8YTA49x2M8BzOtixh7FY6jdtYIrbXM9mnuAw+IFqryXifluc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A62Aw+U0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A62Aw+U0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B595EC4CEE2
	for <ddprobe@lists.linux.dev>; Sun, 23 Mar 2025 04:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742705993;
	bh=7yB5vjpZmd/77ty71jpiS7XEKtPZBxvvvj+LSSniCZE=;
	h=To:Subject:From:Date:From;
	b=A62Aw+U0ls1BFIW4p3iInx6JiKZrZhCZ6nKiC5SHtFOj6xU5AnNWg75gTrPn5ipya
	 jUPZ6HMvcFnVcWJzgO0j9O8ROZZBaz/3S/1Xg6HOrbYyDenGhpd4urQAhbiT9tBI8d
	 z4eb/HdGw0ju2rSy7IJVqfxrAWI6bgA16Xqkyvck6/GkZrn98tiMOuZHwvB2jbMr5n
	 bdrwzxSwXPkxQ0GVb0qvnM5L1NrIJnzD6kdrUQXHFrdDRaAea8gr4xT9SfJyD/CjRK
	 eKHONaAj78Mkbc2KqYJf3wkWHsCpu5JU0JpRd2BhVxR66Aw3rDpogQdMwEcTZC4zT8
	 R84LUOlKp9WcQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C90BC28B30
	for <ddprobe@lists.linux.dev>; Sun, 23 Mar 2025 04:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174270599362.5580.3279541625762207025.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 737acae1ba318f6aaadb82c4d1d79639d2d6b05924c8ae1451a88545caff5ffb
Date: Sun, 23 Mar 2025 04:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742705993
