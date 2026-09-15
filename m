Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 590512EB0F
	for <ddprobe@lists.linux.dev>; Tue, 15 Sep 2026 00:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789432234; cv=none; b=upPzzA8PStPUi1SwCk0oC1wYwFYLZ32m10EC3FsiaONtrBzGSEBEkeip8HB/FHeYx43E3essAzJ60DZwlDcS98qkIQaTC1cAl+6TsJo8SSe9opAlzCkHIclr/g8th3zsfF7rD249jVqescH9XVpGWJEKdCxZcQGTMIR5Y0hDrMI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789432234; c=relaxed/simple;
	bh=Fs15gTTxUJ5D60L1kxS/e8TB34UlLBN/tcpfNmwi8Sc=;
	h=To:Subject:From:Message-Id:Date; b=HSAj+Fl78FBihYNTHx00yusmAvQq5MiL+I06PAaVEZ4bWYVy28PTk9aVyFrYtfOEUO7gZ67hEI8yFKdJzYxbjwjMewDCprbvtobYCRZfYE6wkmeu2cF6pcp/D73yccZk/Y2KD7g3PHlGlFUbFNhoOFTdvX5mfVcGmYQSFWvyO+g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tg8I6/lC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tg8I6/lC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D97D1C2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 15 Sep 2026 00:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789432233;
	bh=Fs15gTTxUJ5D60L1kxS/e8TB34UlLBN/tcpfNmwi8Sc=;
	h=To:Subject:From:Date:From;
	b=tg8I6/lCD1YR21ZYddAWRnK8VKYA1WQztouJ68tAnyJ7mQNBL1R498f7bWlWN90Wi
	 GN/SzYvbU6AAmLDSFBp0gcKKOxNg/84KDpTMM95Eqw9ydq5MjPBxx63YEbinWh6Bdf
	 do8W97lIWzCCTFgwUfkSWDeC5WVbqOT3STm6JaCyezudryfCaQH3JeoYXcpAs/sTtr
	 aJMrnJpQX3fOzAZ4e8mZw9m4bjbfrhkaHmtwlCHwV2qjfNC0i2XLuCwZB+M5jK0+4F
	 52aoS9L4+g/daMoswCZPkTQj6mDOxARVT9C0bw0iS0RBq1WPDibgcpRwH/Kut1vimD
	 FAnwKVIY459dg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD57CC88E75
	for <ddprobe@lists.linux.dev>; Tue, 15 Sep 2026 00:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178943223369.30069.10632331772144416372.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9b48ceb737f42f0a1bb7ed602eca0e603320da3230410fa2531ce7c0aabdb016
Date: Tue, 15 Sep 2026 00:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789432233
