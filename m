Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5398A30AD14
	for <ddprobe@lists.linux.dev>; Thu, 25 Sep 2025 17:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758820194; cv=none; b=fwVn7OTM7ieeGLyRkhY7aTqq9b8b9IrzKdatyEwQBL4WtwSdVFSoYYz0M7fjoDlpX/6rNVO15D9FA33TLRI80QUT98VvqD9ifPa261EzKlv/p1AyRlKGulQGElQJBH7qlDPsxe39akxDPmt99n0wNzBOZuGKt7b+M+sI3XMkgbo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758820194; c=relaxed/simple;
	bh=DRkBhMtITQn+oENzZtxj2MFeKe0u+TIR4JiMpfAXE9c=;
	h=To:Subject:From:Message-Id:Date; b=qN8arCvPzYmOuOqHXMaTolq+eBZ5iIN6YKQW3UYQ0EJjlt5Jd6kj9xqDiWrJoP75ySfyMYF+BwzXYi9/OCw3eWbTuxi+ak9OGARgL+2MRUF8UZnX1rBVckzvAKhaHaPGLN/xizGqAx0MOz7i6NXrfjBtmKAWnGxpwRyhaxsFHA4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jlGqJkMH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jlGqJkMH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1280C4CEF0
	for <ddprobe@lists.linux.dev>; Thu, 25 Sep 2025 17:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758820193;
	bh=DRkBhMtITQn+oENzZtxj2MFeKe0u+TIR4JiMpfAXE9c=;
	h=To:Subject:From:Date:From;
	b=jlGqJkMHouGwn9iVkOsz9Aasbzf00boxsm4YQ2v/n6B+ubntc7D6vb9+vRmJ4HMGy
	 lf4MB20zty6ban4WAkgbi1BbH4zS8nCTC9AlObZ2EERs6fTukAfIyWvebYtPUNxxO3
	 WJtTLhB6z5pz7O+DlZ+Z22AbpVx2+il0mgYjLxvE82OyoSJHF0nUG/dCn/FkDFs9Vg
	 fFfqSWI2kTIOjXi5xfM8BqVSGUPcpBJlofVRjzCklz4+Gqis7qHQQoByK7PX22kM4R
	 m2aSr+vOlQJrCIXNltgJLKsjA6AD19ApGHthwpG0QI6I4QXuqs/ZZ7oyImeepCQ4h4
	 FDZiaQAmNWXqw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9129FCAC5A7
	for <ddprobe@lists.linux.dev>; Thu, 25 Sep 2025 17:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175882019358.8036.16646621978518579550.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5c38b0e9ef679fca8a01ec0ec1aa12ab4708eadf1952048ab1cae283724c8795
Date: Thu, 25 Sep 2025 17:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758820193
