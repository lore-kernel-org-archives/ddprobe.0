Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D83C43BBE5
	for <ddprobe@lists.linux.dev>; Thu,  1 Aug 2024 10:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722508553; cv=none; b=iMjEJUjZFBNDCDHkfDQIBbsmb8qNT8M0FiNuhipS24nX85VHlrAfe+ew7FqX1+wKk/QZT+0tR66HOWbOM9qplOj7bKE1xm5LaBmhN8QCPyj4XlRaq2lKqCUD2wUB3+HNTHXF3U5Pu/Aune9tHsFACVXw+xOEA/kjlyORBm3XrYk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722508553; c=relaxed/simple;
	bh=ah39tgL7oLi75XS5uftxjS5ZdqoLSNMNrC9MCIyp8Xs=;
	h=To:Subject:From:Message-Id:Date; b=oRN6DBxVExmAffE7hvQEm7/XJgR9VCaUtUzHmDGABaKXXjtX226iNVxj/j89Wd8QMk7lTthoIDChQ9xAcsKtPJfZ+cOPElqVeEqcEwVXzPtuHHr0+ZJ7R1z6jpJFcxNpKPaS2GEuAbIHe7gkv0CO+MFKBxDcj/LYwkL2g4nJBIw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nnboV46D; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nnboV46D"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE2EAC32786
	for <ddprobe@lists.linux.dev>; Thu,  1 Aug 2024 10:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722508553;
	bh=ah39tgL7oLi75XS5uftxjS5ZdqoLSNMNrC9MCIyp8Xs=;
	h=To:Subject:From:Date:From;
	b=nnboV46DAmBJK1r1UGmx3BtBJOvjINrQ7ZcAsVnb1L3mDquyjQbVotXdARkMW8EK8
	 qNR8uowXxk4zgOM1vd+ssHkTjWcU2o0WeApV1je6T1UvPqGzseUSfuypQWLPxBP5Qw
	 YkNK2evJYcWdoBhGPsdEz0BdOK8RIyuF+NeCEPPPKkXtlQrvz9araZj2ZE23GUdfDG
	 SWEwx+LDRcG3d0wIWYP7KdW6jFtBCCFBF6wPHOxU90+TxYwcvpRDLs/49R0yvVgRoQ
	 /pSQj7q922aOURvJDsCs1YNiOy5/ptfM/xqzE+v9i5ji0zY5QDJXAnLuyOMg9i6ikp
	 D46zpq+o1fceA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CB5AC3DA64
	for <ddprobe@lists.linux.dev>; Thu,  1 Aug 2024 10:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172250855363.12607.2720491477851910252.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: deab17796b15a5c61d3832d42a0eadd1891f198ab16f63901f9df178fc74640e
Date: Thu, 01 Aug 2024 10:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722508553
