Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CAA62192F5
	for <ddprobe@lists.linux.dev>; Tue,  8 Apr 2025 22:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744150794; cv=none; b=jQwK1SHh7weISmKgBRQvHVn33571j/H897sPs5nnVvZvb6B18o5zMfgs+OdWTCjGLIQ3RHvwJdPd+qt5aXtobDS8xhyBjEsVa09XMhgQFV3lofihULH1PzN4p0qS4d1eElZVgZZxxCO+zlhD/xZURHGzqExQRbS55ekabKVTDno=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744150794; c=relaxed/simple;
	bh=0rOS/axeZaDSThVbBth62w2twaVvmJMfh9IroqsNWfw=;
	h=To:Subject:From:Message-Id:Date; b=WPDjW6XADJwaQXCHGivsibG4b+XXUDrRzzBDkooKXX/5w6QhcjTz5NyrAjthJv+qa0kVex4Z7Iv9Ql8TcgT+8Ap2WU38FLsBYQTP3hlRnE16jZhBzDSUHKrJ/piq1VDnqkPTl7sKtdprXZmeQb1TrtfATJ2rMn+q+JNHquupJVk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GF33rAGr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GF33rAGr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADAD5C4CEE5
	for <ddprobe@lists.linux.dev>; Tue,  8 Apr 2025 22:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744150793;
	bh=0rOS/axeZaDSThVbBth62w2twaVvmJMfh9IroqsNWfw=;
	h=To:Subject:From:Date:From;
	b=GF33rAGrKKJi1uKnXtxbR+fLAGvxy7FiAuqm3VGcNsBWX/8mQcBgFKiMFW0kEBbBc
	 6UsKcdvvGzEAE0uvfAADRAxK3JUi8Sh35/eoTU+UqFrChuHKH9C9fMKZPHjhoQPoPJ
	 RL2kEaykYZYOFuxsc+yif+gjojJ/+/ulHZ4colQMmomQ4QFAAPTuJaXkyYXsC0H/FJ
	 sO8KSWe3JGT17Zm4PzKrwgJBCwfjXRKmPrpnlFZXPOE4mh2XeKR4ZiP3UuX9HQ7f9L
	 4Cj9CZFUKllfRLcpoUeXigFG5oRm1czz1BNcrOOXCMvE+couB7lT+3TQmYSiJ/sPmm
	 THah2AuJyz/RA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90AF5C36010
	for <ddprobe@lists.linux.dev>; Tue,  8 Apr 2025 22:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174415079358.23654.17582857342926019552.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a76492594f03bd54107c26d02e43e3d3c15f9972b87dcd4357b864a9112c51bf
Date: Tue, 08 Apr 2025 22:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744150793
