Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 098141FB3
	for <ddprobe@lists.linux.dev>; Fri, 27 Dec 2024 19:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735328754; cv=none; b=uVrWTLzXWpBzTS9ZEWfKjoSBfkZ0G8a4vsmMUcIvgGo+k9xi1bsKiKWOk2jV4D3697pLzuA02cagMfOUIltyotykK6ZePYyFL7TCTL4r8po7rospBJkcKsRm/65TvwI8O3CmgDLYteVbkv71nPB/DSsfGMSSr3K/zBMt7URUuDA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735328754; c=relaxed/simple;
	bh=CIeFrCjhydXEqaUR2juPCpMLD7fl9b3AFVFnxtDp63I=;
	h=To:Subject:From:Message-Id:Date; b=o6sk6FBMmIHj1Lskix5F2A0dW7SHCkOIB0Q6pktvatGOA0a/kcvmq9YM19WK66nuE+r5Uzcg/MNlOBSj6mN/K3NkfaGAVg9MFVfTE/5nRrMezjpzRcgctJnXkbwzm7hX8SZD9GpmkdWWbOw0ySxmj4p0xJH3FJ4T7DdWYLHN2A8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LAs4mqpw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LAs4mqpw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A62F7C4CED0
	for <ddprobe@lists.linux.dev>; Fri, 27 Dec 2024 19:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735328753;
	bh=CIeFrCjhydXEqaUR2juPCpMLD7fl9b3AFVFnxtDp63I=;
	h=To:Subject:From:Date:From;
	b=LAs4mqpwpyd1R66H6WxIA8D9aQpU3ku+mDsiPKNUuLskHp9/xZ8GASnesQFBY/FJ9
	 rPLV3v1Gi3dCyQdQCMH36aevVV6lOLdZ3J4omDG3RBmv0FljbmxkuiFs2j85h0EUp+
	 lxpYrpXY21yKHJJVll8cT4JLxsYVswSh15T9sDOdryy7oyhbgkinGY5V8rV9Vk3VMG
	 mLBE4oF7gUKzxZiOneHp6Pz5VGVyM6Xrnw6Ektci8VmJGnhV0aV5SMs4T6zsxpt6yy
	 DcYch8IK5kBKsjMs8W2QM00W5Y2aVJHfMu+yQvLhBrk4NW2axgDAxsaWWQHqiGPgkU
	 01Xz0nN2SlIgA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EA72E7718B
	for <ddprobe@lists.linux.dev>; Fri, 27 Dec 2024 19:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173532875357.26760.2041077168551222250.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 129a6ead04a6f0d5efce57aa28d16b3f99ec709f0e3cd004b5022e2a553c4a3a
Date: Fri, 27 Dec 2024 19:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735328753
