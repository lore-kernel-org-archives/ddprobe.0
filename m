Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14CE41B6CE4
	for <ddprobe@lists.linux.dev>; Fri, 27 Jun 2025 18:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751049594; cv=none; b=ZDIS3BECYglkbTOmIvzW4Nh6eBEWEEyaSgIagXx+yjJdFlIuc495uGVzWDXnbWS4oKw7r3JnKMwNTr4SfC35nkH4R7GPsUdMFoUdvQ7hehw7cMez37zQqUqQnyTi3j3QwcSJeW2kLL7afDRtBbqBlX5upxLuAKPuGwppL0j8R9E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751049594; c=relaxed/simple;
	bh=MOosvlTJnE7j1kWtSeQ7UgnxuJfk0bZuSIxKECl1TMs=;
	h=To:Subject:From:Message-Id:Date; b=ddiDRQiDN+jUSueW/V0h2ATFD5RsM3ktrwoi8CFtXLncL/AlvxGaP1z2IwnVtj90tZVXLyhoVz/TGK31tgU6c3MR+v69aChSngn6MJOyn8Wp7kM8rMl+5MupCUesHf8MUP8/TN+k6Psqa7ldkjKU218lyc8MqQPLomc+oVr9hF0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bWrmvmOc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bWrmvmOc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3580C4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 27 Jun 2025 18:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751049593;
	bh=MOosvlTJnE7j1kWtSeQ7UgnxuJfk0bZuSIxKECl1TMs=;
	h=To:Subject:From:Date:From;
	b=bWrmvmOch/PaigvikcBerwHS86urj+3YA33TBLlIpsfo57lkvZNQJTjOeUHIvPBhH
	 kMMJVJwuUFeqKJBwhPsZUTv4NRcSd1evMlsFxSs0fJGE/nLGhZSobjt1rzrmW2S8KH
	 cnnnqtuldQIW9iEh6pt0SIBF6UsF39i7Ct5T/184G+5oUioDZcvOjMrQHYXM5QYww7
	 emBfM+Aef9Ioo0jt01rQV2tcCE9y446A3xg8vxobp9mxtjbn5CXml6V7DLGiSk/ysw
	 EDg0BgQFYVZDuwAME8Y/KAeEpGRAQaz1Qh8YJt8iCo+gfTo14n6VytxjneQPsuYaN0
	 rQk+QGGO4/E1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 913F4C77B7F
	for <ddprobe@lists.linux.dev>; Fri, 27 Jun 2025 18:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175104959358.16414.4485350876781008119.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 681427869f87196d0a62bbd369cd6672e0d797e4128dc1c265e1f474d968d2b7
Date: Fri, 27 Jun 2025 18:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751049593
