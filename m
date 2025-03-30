Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38D7C142E67
	for <ddprobe@lists.linux.dev>; Sun, 30 Mar 2025 17:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743355794; cv=none; b=cwzF4sYhWWpGOZFYttoK6YZAjOPbnAEmhsG6KUuwd8oabQdO9CcCYD7nvFqxe3jFBA34JJnCjttYQ4FriBW1V8kZW10wH53yeP+k4lSQvcifIoHR4CVcSMga5A7HHYwGMPpoZni2HPsd4iqz8sZKAbybHwabqaBdU5TrpA1SYS8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743355794; c=relaxed/simple;
	bh=1UTj6xTq1ZW1DeLYorFQexZCLl15pvXWDO893FdRG+I=;
	h=To:Subject:From:Message-Id:Date; b=R72FNwjiyPzJ+YhIwDjdrVEnpx4ntrG8rX+pw5kCmOBN3BKaydKWdBoeZyVJFgsh4F2SV4mf9hL4kb5kG46uU1iv5EN77YBnGXpx39ZUUva5f1q9lvp+Hwt4KtfMjHxrfma4BhCkWYtuFtXt9wOIGdUdcXi4tzJGD92IL6g6/gA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XodfqVHk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XodfqVHk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACEBEC4CEDD
	for <ddprobe@lists.linux.dev>; Sun, 30 Mar 2025 17:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743355793;
	bh=1UTj6xTq1ZW1DeLYorFQexZCLl15pvXWDO893FdRG+I=;
	h=To:Subject:From:Date:From;
	b=XodfqVHk/Z1dyATKTozCsc0Z2ZlXHg6fZ5zwxSNQwN2NjiupjBu/LgFEqPuDghLMg
	 Qg3eJXUqq4qOkXZHDx+Xs3aUJGjHs0MCQHpu3waHL7euxuNoYRBKx7GRSmgc6zG8jr
	 7tuz1/aQFrSO3StY+W5E6m1Sn3jgFHXsw8rj2fYmnpZxQpX8KZ+2GK9X3LmlgOeiyi
	 hWRWp2xeMKvJWu0GgVf7SSuY1es37budrXIXbD7zFpzu+7PyLV8XVXHbnBbgMMGe49
	 q/JUup0KHSm6VLUUxC1dhRyxwbP4fCqqeA4r48+q7l8wkl1NWTZFHYsS2Bu/gNNkEf
	 WWb2PRay+3dKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BE62C28B20
	for <ddprobe@lists.linux.dev>; Sun, 30 Mar 2025 17:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174335579361.4687.14025415298032061212.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5ca7ff51c16967dff5f91c2bcbf445570aa001da8cfb0512c5b694b7c6742a3e
Date: Sun, 30 Mar 2025 17:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743355793
