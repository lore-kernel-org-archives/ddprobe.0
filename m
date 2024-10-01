Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 351F71925B8
	for <ddprobe@lists.linux.dev>; Tue,  1 Oct 2024 20:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727813754; cv=none; b=hyqg8snukHzbjHZi0o2Vb0+TRj6DUalhk928Ve99OAboS+5svuuWm5Ytqn1iTgxxrF46NmJI2FDxQ0byFWceq0Vf7aqnCAASODrlV4dNRtZ7tpdCFlnIO867Vzkx9NbT/TOWgY/kFE8ASCcLw9xBJuugeHfy59VMn31Gof1qlpI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727813754; c=relaxed/simple;
	bh=aiN+OC35+29xpnOve7StFPcbin5CbjMb3H/FQ3A5w08=;
	h=To:Subject:From:Message-Id:Date; b=HBjheKaLoNfLQ+6CqFn2h2rXxa75yyop5sVheQtkJYg5Sp4FWlKcJrGqwnqoFNNi6H2T1xusrVb4QBv7QBrQ+2wSM88w1kXdU7gZ6y/eW9oDXPxctipM5N0LdPbsMsWfjGXvJk2KxcObPNjGc8CUSOEcVEgtpuM9f6913NRxRqA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=j8H3Rjbb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="j8H3Rjbb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC70AC4CEC6
	for <ddprobe@lists.linux.dev>; Tue,  1 Oct 2024 20:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727813753;
	bh=aiN+OC35+29xpnOve7StFPcbin5CbjMb3H/FQ3A5w08=;
	h=To:Subject:From:Date:From;
	b=j8H3RjbbRXHjCOsNTw8r21mMxcE1UeRiBMlce5PZO9Ml0ESo8L6s1ygSQChiYTVUj
	 vIxc4fRJ561y+FfgN9r4HAu+Hd5RL7uuAv95T2+oUDcU6TichG99saMkF2UomEP2TC
	 Ct0MRjAqAeLt1FFZPpXx5D6BWH0tf2QIxxYI/99ZtwCxSOykM9bNu4JBED+d78cGrO
	 AUaktq6wexmkWndUqwdFZrQ+smxx+aaCJII9RQierLtv3u6tOgU7dj0scq05d0vgLT
	 l3Y3Tz0JBQvvzVe5r8pAkEWXJDjfKPN8IKWoM+2p/bkK9RorhH2g3O5RqYkc0MVHAk
	 qIgssXK7onQtA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 917F4CEACFF
	for <ddprobe@lists.linux.dev>; Tue,  1 Oct 2024 20:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172781375358.15774.3808276282730738069.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3d3a43f19b1abd9c64091f215c392832641090dc659a26490a13937c65a2857d
Date: Tue, 01 Oct 2024 20:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727813753
