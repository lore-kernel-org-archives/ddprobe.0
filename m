Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EE04125DF
	for <ddprobe@lists.linux.dev>; Sat, 10 May 2025 02:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746844194; cv=none; b=Ex2bqKZgVtVI7d+8y0gBbLhNmPmM3nQWVUb4JK9XYsI+/Sg3i89kywrhofY53mOzVNEOGbhyJzyDJTqtM0pkHm3K6BSH1lJYG9O2kRlQDzy2R8zoD54EjzZBlPh/hawsZE9r05tzDBOLaO+mCvhYV8sJWtOkmoq/pviKJbFtCnM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746844194; c=relaxed/simple;
	bh=E0slzq+3dDtHmYskbvadPEHimHrltYsOF2FJRjFsn1A=;
	h=To:Subject:From:Message-Id:Date; b=h0rAdzdHirjDmXQLPqXQNqusQdJjDGRGA9GoTnJ8/vurSUCipWIaAgkm+Hmkvj+3+Ige/0oxuhjnt4SKzhhYxxVytBhmx6TENc1VwOoVuKS5VGNLfHw2ZBHyXSZUDYszqoBfMxgZkjOapgXEHI3XgZGtWbitAkXPASNN/Mj3FpE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r6D3PDR+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r6D3PDR+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB3DFC4CEE4
	for <ddprobe@lists.linux.dev>; Sat, 10 May 2025 02:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746844193;
	bh=E0slzq+3dDtHmYskbvadPEHimHrltYsOF2FJRjFsn1A=;
	h=To:Subject:From:Date:From;
	b=r6D3PDR+NT1u1ixjDDX0LI+TcUF1md45KrX15DAbiM5IfrLzXqqvPzTqxNxUPheBa
	 N8lbWxD3khO3ZcQGMncwpVWzV3QsEPYLVKyh9w6qF+TD+/teLivhlp+Zzee1gw29L4
	 vk7TxNnWebr9c68yDz0EBRHbw96/hiwlpm3PZlNSi74/ZUr4x+jdAmB9bSqmtaD1ml
	 noCrgirIvEezXGqzFCUOkXrnYqQa0svCjCv5QBmEzP3cUDmVHYBYVNnW3NjOn/k9cH
	 G7PJoNURsbAcsnLycXrjBsMYEU4WQ/gpWGSNx1WdscVtB9dcd0y8mkSMjTWPcQEl/3
	 +Ar5vMkg4VfbQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97370C3ABC3
	for <ddprobe@lists.linux.dev>; Sat, 10 May 2025 02:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174684419358.23208.6118658656376693866.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 33f61e1ca4ad11a3febbac1f792671d52c277db5677230b6bf4bbb03457458a3
Date: Sat, 10 May 2025 02:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746844193
