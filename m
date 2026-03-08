Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CA5C28C87D
	for <ddprobe@lists.linux.dev>; Sun,  8 Mar 2026 18:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772994894; cv=none; b=NClIB7hFgFQRusc/+TYF8+L47+Op0cH62dAFqNKSdWDxVprpfBmBDSO1mmwGVXSlbr/+2B508SchSWGn9EaPSF23WEePY9coO6J+7dCP7qUlNo5ZOvpvvO+fQFKm8QHYgkPNZg3RMK/DOwGFf+MlvTt+d7h2tqcH+84hsSR56U4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772994894; c=relaxed/simple;
	bh=QZ5vjdpmTNj+6lz06zDsNojJgQD3glSl5gU4ImelhIs=;
	h=To:Subject:From:Message-Id:Date; b=b14MjfkwLWwAORZYruslaxho/RzaPqy/GCbd5m2Rt13D+UA0ryar8t+u8eIW/7IlwfmY/SURvGnaK7OIGoaoIBK2ZA1YmNZz3lAMaVllGq++D1oeMhAO0NhGiiHN4XEk3jNNgBEHP5rv3aFkNwlfjaMhS7hGHF9uF50Rl5rQOcg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RHC+LVFq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RHC+LVFq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD4FFC2BC86
	for <ddprobe@lists.linux.dev>; Sun,  8 Mar 2026 18:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772994893;
	bh=QZ5vjdpmTNj+6lz06zDsNojJgQD3glSl5gU4ImelhIs=;
	h=To:Subject:From:Date:From;
	b=RHC+LVFq6mGxWD6rYapWYAyEf6zXzaYosUo0/fK0FY6zHDfk/9ibYeodJSEL7GDFS
	 RN8sqHKKvV/F9LNwD8GOvLXoC/rzEnbhk+9Ua+CmNPxDfMqyw65UN+7SQUKbRs/Vc5
	 N9WF/wHtqcONQFXlvyo2sXkWlxa9mID770ySEFroTuEksk8sLVN06lnBJ2J+D3HLXA
	 /34fUc97sIzpwxNKM/jEEErN+ha0LYq58eTYOwOf4MdccL/iHeqiGqdoa2GRPuX3IC
	 PXlJCP+yaLMAjiOx1LwGE29gUdeLjZZG526Jf20eOi76ZxE12eyFFITIghUeQszEOB
	 /i0MrMQWf9yLw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CBFDEA853D
	for <ddprobe@lists.linux.dev>; Sun,  8 Mar 2026 18:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177299489361.10428.17097155414017504413.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4d667faa96931cce57f6d822873fbebafe5060e14f6c71bbccb5a691f8c9f05b
Date: Sun, 08 Mar 2026 18:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772994893
