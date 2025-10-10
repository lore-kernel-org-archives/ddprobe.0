Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 313FDDDC5
	for <ddprobe@lists.linux.dev>; Fri, 10 Oct 2025 01:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760058594; cv=none; b=Y593n2d842LLIdgrgf5jPrBSu2EALSkKi2MNNO4GaotDPFWoxIBtBvkYUHWEw1aLoI6das8BrPBjBFN4SrCsFZC027Ytad9GxuZhoFkQRzq6NQERvtmu0Fpi+waNlWUMFr90h7s/S10taPCJZdIywlNgu/4LdmnxnDVfM+R5bMU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760058594; c=relaxed/simple;
	bh=gjN4i46JXonpT7byfA/yQv+6kVc21IHDNuCjvPJf2Qw=;
	h=To:Subject:From:Message-Id:Date; b=AN0h+DcXuq/+XhYpM/3QyQO8eCwbXdS/Jd+okVoqhxAh/392P1RJNyZPc/mcZC0II0MUr5NGFYkt1xcN8DcepUeGBbTjQXHcdNf2zgGepmAmIaZOeHfE3qwnWhBmtV/dioyqLmRZ4GCmDkmMNJuyI8hBdR0uqXtXXqZnqjTJX8A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mQdVfsE3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mQdVfsE3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5F9DC4CEE7
	for <ddprobe@lists.linux.dev>; Fri, 10 Oct 2025 01:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760058593;
	bh=gjN4i46JXonpT7byfA/yQv+6kVc21IHDNuCjvPJf2Qw=;
	h=To:Subject:From:Date:From;
	b=mQdVfsE3+rmLtZCsvPcA0GnXEcW7Ovx5sp+PkPoWtHxGYqVjKDVoQG1Gd1ZGOGc0Q
	 xqeL2Y2IsOnsr1mglds2FWUyyJwllXYxmhh4UVdapw/NMNR/jWfhiKslcY8+KnGNeq
	 Z1806455LxIGV1vybUi6PGj4ReENPXDDKeyl1Cu7jSytah+FXuIC0O+L4XPgv3jo2I
	 DDpabW82VYrykOeqon6kXrAwtMsa+6wzJK/T+Z4PCtqZZqzr/6YgZTz8LakKl8f0nA
	 W6+47dxJOxNn9vvmGYt4VYgLRLTdoFy8J2XtMe2IAGfxJIgz1XZ/hUteO7abUiAYKC
	 4rQDX2NV+GxBg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92890CCD183
	for <ddprobe@lists.linux.dev>; Fri, 10 Oct 2025 01:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176005859358.23594.14160699840647297270.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7e2e24be48888bee998124ef4c37a9ca8ecd7a0d9caf57789a60d6499bba1f02
Date: Fri, 10 Oct 2025 01:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760058593
