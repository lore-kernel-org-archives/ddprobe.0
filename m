Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 395B43C8C73
	for <ddprobe@lists.linux.dev>; Tue, 12 May 2026 16:50:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778604634; cv=none; b=a8B8iovwBOLyZRIIhL9ptxsLlV5bNosLLpkejap5u5nPNMQyfFKNHObNUCpSHDmAfja0fqkbhK0lTJDULJP3Hv6p4rdpGUXwJ3pp2+pbT05vHegE7oCwRt6IUykOpZ1l6nGcu+TuNNtx9xfQ9guxWllbtGyOyXuUT4nVQGxeFNI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778604634; c=relaxed/simple;
	bh=BcsSv30hwT7mkMmoHsPS2yQp0pqjKBM6eboKzz85f7I=;
	h=To:Subject:From:Message-Id:Date; b=J/Ma21S/MGk4IQCIdQUXSBJnsyu5nVp9seDtLMx3cgDR2rOBZSCLnZgqASR9OgQOdRVQ7+e7vkVh08CIYHFYw/ZiOnDnXSncuPNjvRnz814+F46mOmm8IyNaE87vWRabZIU2QXmpvqKwwEqPQSKf0jb7aZeQsKVtfhloi0SGWMI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F025Idrk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F025Idrk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC304C2BCB0
	for <ddprobe@lists.linux.dev>; Tue, 12 May 2026 16:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778604633;
	bh=BcsSv30hwT7mkMmoHsPS2yQp0pqjKBM6eboKzz85f7I=;
	h=To:Subject:From:Date:From;
	b=F025Idrke35GAtLexzome1d+jKDc/dso4KV7Md0GfbqkdQEaJxJoqOoXAZ1Un0xYY
	 1C0ZKH2xVfrhsOIxXAi0LnVvoLinEYx6LSzeFJO92nzOvpMBfZrVIm8Wkj60RhTlnw
	 DHfKLkeyJN8TO0PRjuYj7BzXI3AjoIHWzSuvdhqiphzG8lXNslvRk14P7w6Y840Z6H
	 R0OZ3i2kEJCYFU0jzMQmPg3TEkCFIG6ao1ZMFlEm2GNdmZVWB6lWjCcqzzygxMc7MD
	 r6dkvaUM6Jzh0FSqi82UZTL84WQZzIrI08JOqGvniUzUuT0BFTKU5KeEw4M8C52oX+
	 FvTdnnE+5ek0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC769CD343F
	for <ddprobe@lists.linux.dev>; Tue, 12 May 2026 16:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177860463369.967.13071955045253172560.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c25f32b76b92413f3a5b956a10d5b99cdea6d74833f0922f98fe33d5e76d48d9
Date: Tue, 12 May 2026 16:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778604633
