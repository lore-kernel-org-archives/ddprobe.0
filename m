Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D2DC6AB8
	for <ddprobe@lists.linux.dev>; Sat,  8 Jun 2024 12:37:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717850243; cv=none; b=OHoosNXCtMLwmRAmY9YGkl9KVS93B5aBqgnoLQVnlUWxVOvw/eH4Y+AqyIrbBkyDADRfqMvB2RMGmQ/LbbhqTAxfn8w7HD9xPMNHjXhOCAwy4QFYeqhy8saG7C0/dCyGRAQ1mruDFeBnRMUFzs747qweXlFeMGOg0q0aDY7HuVY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717850243; c=relaxed/simple;
	bh=JYx7/CdGhe9rkysjWSDfzQ2k/t0Sm9628GwW+w9/DVY=;
	h=To:Subject:From:Message-Id:Date; b=ZokMHZElj8GcHm95piRjGc7oOOkqn3YpwM3xefCh+4ha+fce1N7p6GR9t8JRHpiGyPfiaNZPsUIcY11rvIwbAaRZ3TdIPxmuxs/l2ehCX4BTStmk6L6c1eU0O1Y5doc7mBNFRmO890YEzzd57cIzoW/pv0sGslBi0KxHz806EZk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TXf6lHr0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TXf6lHr0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EAE85C2BD11
	for <ddprobe@lists.linux.dev>; Sat,  8 Jun 2024 12:37:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717850243;
	bh=JYx7/CdGhe9rkysjWSDfzQ2k/t0Sm9628GwW+w9/DVY=;
	h=To:Subject:From:Date:From;
	b=TXf6lHr0kkZHs/tY1kUh8tKLu4mO05epCWyUpxLFpeoBOjd/0i3sqdLlY1VyUn3+A
	 OSWicDWkQwsFhHIfZE/Cc9lJBRObX3msPYMbGACak+sbxF3/aAuMKzgFjQnJtQAFsn
	 f70KuTrU6tzbVI2rcdCEGRgD516+J9wT2oxIx+V8KBaTj54UURtSSP6LBLbzfZOmE8
	 nxIay4tHpgJmygXZPOQRfpp19MwuPj/GUPoaPjA2J/bgJxPOsmYYisplj59X4isti4
	 2oHD+ZQ2hqHHtb1mWMzcVmG1d55Ng/UpSc16Xg0C7VGW0td9txRSK4ytHj9KbuMwab
	 PWDQA5uKHMBsQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CFD1CC25B76
	for <ddprobe@lists.linux.dev>; Sat,  8 Jun 2024 12:37:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171785024278.14977.2926608499492689273.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3fa9783893c42b90abc7d022aa1c9dbabcaf4a9884f0f8db80991c88444ff5a2
Date: Sat, 08 Jun 2024 12:37:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717850242
