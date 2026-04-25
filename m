Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21FF29460
	for <ddprobe@lists.linux.dev>; Sat, 25 Apr 2026 08:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777105054; cv=none; b=qmh1iq4YnpCwQUsHZAnqBNaM+yPP6fH2f+ob7q3foLPx2RAPQsXfrqmZfM9rlOzSDRGaip/ilk0NWDtNLQAfNKZE+B0GDxImQmD7uWaAw90QMdAR0op1Mu5cFLIGZKeK7eTkjR16NjblRzTiQSqe5a10R7zqsleifKYvACYwsL4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777105054; c=relaxed/simple;
	bh=+pgw0/mRtArBpaBdRVKoWda27SqBE8BmIpLonWq2yF4=;
	h=To:Subject:From:Message-Id:Date; b=sR0rWUS/8NV9jQljWcQb01B5aXt7NlKPhRZLuAUogTLc/kviZ52VoKKlXoe47dWpS8LIX0pjz3Rr/sKkDDylWasi3m/9u2uRYdz44yL3GQ1jtz3bH1iBZ3w/aqYmI4gAJSbPG0ut5yd3RKYkNMpksHz1OPAG2eJS5xjyaw96Ke8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PgfseYyb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PgfseYyb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB1FBC2BCB0
	for <ddprobe@lists.linux.dev>; Sat, 25 Apr 2026 08:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777105053;
	bh=+pgw0/mRtArBpaBdRVKoWda27SqBE8BmIpLonWq2yF4=;
	h=To:Subject:From:Date:From;
	b=PgfseYybzrJ1B58ZOn6FNJXRo8RogntT/pMTx+93+sQfXN8HdF8wLbSF55UkcP0Ex
	 nWDEzpwvIfjBZIRfzy4H95Es0asZHQmbv+a/7fwI2+q8MzoRtNGEeSLMZskD7Iwpkj
	 4LxEAGmOQ6pgXHnjnPy6SJq5w0W4VEenOsdHd1XOJlFu+fSFu1VAKMpP3umNiprUkX
	 nCz3VcVMOLH6j3bx8GHl+lu7pVfUkoRjbwRylaBcfEGSkaxme0w85w3jdEn3o6YxK4
	 mudaOb3AiJ6Dvhiu/K8pEJOtL+YnW9IYQ0os2j71p+Eh0YAc+XGV8nS/ql7ZYVl+di
	 x2WVSSBzHuG6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9505FF885C
	for <ddprobe@lists.linux.dev>; Sat, 25 Apr 2026 08:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177710505368.21812.17710453780118102863.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4c88eaf389d45b89d0628e45a70ce24e2ad0b2d4cab4d9b022fe4bc00b4fd5b2
Date: Sat, 25 Apr 2026 08:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777105053
