Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31462433B1
	for <ddprobe@lists.linux.dev>; Sat,  7 Dec 2024 15:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733583954; cv=none; b=k+dkIZQP+Cv4uOK1pZcpOlbo6musLxrygRvbL5cs1G874VKf6dceMB5OszrV7FxKL4P1CyGOLBOLrBNut5CCvSjdUD9bIa5nKZySRru1lDeROksoIM7qUSEh2oEC9JxBcDnPALg5qvOiLU835S7CFchybeWxjFf5XB2H0gmK8M8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733583954; c=relaxed/simple;
	bh=6QZ/Vr7KpkAwsgUDIaUm/+QPq6jS4kfILaq0ZecFCUQ=;
	h=To:Subject:From:Message-Id:Date; b=mvSmJugp5JcTTnW++WEqxzXp5uu9mFqk+HZz3E122ZhRfXh405kRYHTi4c2Ndvk4w9JQQpAl+Buapu/zN36nK10zgcKfahhQy55uxw6RJbkPdtEiiKGsy4/4N92fHma6BskPqvCkX2cvan6o6xiRYnjHFf+bRVlvcfO0fFx8L0A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QjhkvjCM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QjhkvjCM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACB6EC4CECD
	for <ddprobe@lists.linux.dev>; Sat,  7 Dec 2024 15:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733583953;
	bh=6QZ/Vr7KpkAwsgUDIaUm/+QPq6jS4kfILaq0ZecFCUQ=;
	h=To:Subject:From:Date:From;
	b=QjhkvjCMGA1TN3rBpWm5dHUtnO0gRen7syF7cGUoWRad+fmruQwF3b0chHgeyYHkD
	 s7jGtzvBOFoFPIBKiVMpJdc0dXIMPMn87qV+T8NTi32pR0a/u3vi7YaqArd/R1vusl
	 lkfyp4Hq4z7hbM2UMDYoPrH+Vq0wIGqx39Gw8KndOTc0BECgCahg8z7u8I8fK8v0j0
	 BnWzq8DRAstuTqBlYLNphDJLtUP9FYZFibM109WtxxS4H0cYAZCOrGmcT+QYLR0P7L
	 GYI67MzNGzk8dNu1JD8/bVLF85C5aTKmRJtjc2ZNuq/6dlxCaIWsHTSsdUZCAGITuM
	 O/Yz3SuQD7TaA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BB33E7717B
	for <ddprobe@lists.linux.dev>; Sat,  7 Dec 2024 15:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173358395362.27193.18151904869025027120.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bc56661322aad70bfb22d2df788951fd06a9d4f883515e2c866f8a0b59103055
Date: Sat, 07 Dec 2024 15:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733583953
