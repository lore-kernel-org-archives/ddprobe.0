Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2659220C001
	for <ddprobe@lists.linux.dev>; Wed, 31 Dec 2025 16:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767197034; cv=none; b=UvdV1j7mLeRk5igR81scroUvY/wjvI14qz5N3GzQxnUTHAsWRNiOc51fcQoD8146EmK0wmnX3kfEyElV32qaXnFyYYWbpQmFEof2cN/72OP5EBlfDqvH4tP4MNXnH2WNW3zAubq2V66LWKxSd2cnAOkoM/Tm5oyQ9iGO8QfNox8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767197034; c=relaxed/simple;
	bh=iWt0HdLoEJtMFbPbcm1nwDAPHj5JoHNRkhLS65scYxM=;
	h=To:Subject:From:Message-Id:Date; b=PA1GQ6ptjECZNbP6vP4LogCM1RKADhDAh8++nVToJqFN/QDtPa3Xl4I/W8zWQpyEKu3lStfgYTFFcPoZYexhU65JCSHb6BJ8KXc1g8IoM0f2bsFR40acltYi6LgF8Vmw8TwYVkZAA5zDwQc/LOwl8uQQWRZuGNdx0eXRyRIyi0Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=om0lWLsE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="om0lWLsE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2BFFC113D0
	for <ddprobe@lists.linux.dev>; Wed, 31 Dec 2025 16:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767197033;
	bh=iWt0HdLoEJtMFbPbcm1nwDAPHj5JoHNRkhLS65scYxM=;
	h=To:Subject:From:Date:From;
	b=om0lWLsEAbXZ/UbehZID7+dgK0RPfM8TY+oqWgJineeAFK6OYYRrCkCXfGvfM+VpA
	 gh9k1HD3fFo0TMoZRTuOybCwEo1BjXiB8c2BVHziIKyU4dZ4XvbM4x9TZMfUyfd/RG
	 +X7H68osoqItmpnIoEopn3TJC7RlEZCIxjUmXc6zwpia3qnjnBDXhpuCAx7RROsE34
	 av7vXBRJqaVFL7sE57ZIJWnRH+2anP6HQqZQMrnXJ3o42CK6mhMU9VU8FiujKXkNkV
	 3OS4nIuOmngCSILvSkWRgRLtjOfSUIi2BAzYSgZLtaVK40bVtQqw9P/1ghij/4r05f
	 Y/EcsqnYSXY5A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 928DFEE6428
	for <ddprobe@lists.linux.dev>; Wed, 31 Dec 2025 16:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176719703358.15995.2663139640698006813.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1e5a3e406d963448795aeb409e9adde1e0b5b1898a991a6cc716eb8a4f4f0e4f
Date: Wed, 31 Dec 2025 16:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767197033
