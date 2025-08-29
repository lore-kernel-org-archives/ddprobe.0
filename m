Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 248B91C84C7
	for <ddprobe@lists.linux.dev>; Fri, 29 Aug 2025 19:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756495195; cv=none; b=O5I6rFDKWi4LJP33W3p7BLhfWRPXbr2nPwbYpxkdRwa+fDKqPuhbiI5aBW5QMc+cKl5nbue2jsxMOXpg1K5sx4/tZeY25nGLxsqXXEg+NKg/XMWgxu+YPgxQziEEg6yznsoa28EoaOSmflLjnNqyYRMJgam1cbyLTvqH1YRfM7w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756495195; c=relaxed/simple;
	bh=vMK80JNbXSBbj9XR8VrrVEPqEShegbuTnqLKbJ1sVmQ=;
	h=To:Subject:From:Message-Id:Date; b=farq1pvxMbDP8nrVBu1JOX8uv7+WKdGtcfAW9jz0B0DKtUySHYLSLUpo91BNlQxCumu4UN/maazu49FAt0jBXarvzr9i1Yug8YYtda5t1tgSvNXxSPMaGU+LBW/i+e9SuYjoOAXPkLyWOKSVLQaE6zDesOVYF7QU6CnbaAfE1Rk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bQXh19/k; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bQXh19/k"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F87CC4CEF0
	for <ddprobe@lists.linux.dev>; Fri, 29 Aug 2025 19:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756495193;
	bh=vMK80JNbXSBbj9XR8VrrVEPqEShegbuTnqLKbJ1sVmQ=;
	h=To:Subject:From:Date:From;
	b=bQXh19/k3SFz0sfneTZp6awJiilCvaf0MeiE0A2I+xIJcRffEQlASD990xiIt1sHx
	 +/1uc7ZENWhTXEkTSQYdxuNrnl1rAo7nlDNs0wpHO2kqEcuKwNLWYsop9nIj2kONxf
	 pagSRL0vH4K/UKb+k63DxKTQyYi1XUntdO7pdNzH8PSZlvcU11R6iXlTjafDkoQAzl
	 +7+Qh3IDCxXnnu8E4T2J7Jg/7RG3D4C1ZLaQHxssFBnLqQWbhD2akXUh40blD+jrjF
	 k8EOU/6x874IfGZ50Azvnk5cfJ9w5S+ge56P3+KIRYKHGovfwEDvMfF7W3yKkZg2MI
	 /zWn3b+ODQBXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EF17CA0FF9
	for <ddprobe@lists.linux.dev>; Fri, 29 Aug 2025 19:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175649519357.29847.17220819507903851231.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 64ed04207146510f27e712eaf09d976aa3d5246db34c8f46b0d9d33e5ce7bdb4
Date: Fri, 29 Aug 2025 19:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756495193
