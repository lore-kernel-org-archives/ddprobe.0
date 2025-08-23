Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E82D13B5AE
	for <ddprobe@lists.linux.dev>; Sat, 23 Aug 2025 07:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755934195; cv=none; b=NGls4+NHFSpSCSnF/0Pks9CVKDIKyQTwhEYTdiNXWzlHHazP4NhwOOu8V7N1sWRmbN08ssT5UkxE9okQQfrbScepmX7pmSgaWW9G80g4h7FUYD579+kC/SbH9hLBNk6Xn4nHMbPqr51422Vk5YXtJD2AVjJdyo8AMM/2mZpTetA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755934195; c=relaxed/simple;
	bh=KxQ8Jz43AcIqqfcr2Do7rACPZxqSVHudd6z57V5JEBU=;
	h=To:Subject:From:Message-Id:Date; b=B+XOIoASgMmw23MpLRXztBt61sLLXpI8ORf7E6UB9zgAMucnqp/w6ViiaHPUW1aKsURKtyinlSaAscYISuxU0pmhaL1Bir3Naa+yY50JSzrB19TN7OvXv92dZQypNeS5v2SzK7nbjf13FrNb5rwZ9cg1lO/qZRgPaY9aNJUK2Lc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MOjgJlKw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MOjgJlKw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D5E9C4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 23 Aug 2025 07:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755934193;
	bh=KxQ8Jz43AcIqqfcr2Do7rACPZxqSVHudd6z57V5JEBU=;
	h=To:Subject:From:Date:From;
	b=MOjgJlKw8uZpvWy6cg592YitlmkaVqwuvYUuWdfCUH6CJ8MLshanbqbKpUq/6tgOv
	 n2Z0l51WIcdEimeSGr6Peo2u3eimE3fmN/yYdppEUMzrxWea9BFicOUpdvxaegzo5q
	 dSPcaM4E+mx7vVj9A5ieppZkjSvAtngH44uxQsoJsd3oDUHtKEyBwd50/hT45dfLZK
	 xSIy89F5RC+MPtDjb8ahFSnXHNilsPogQ4e3oTx+vzjwaYBxaC6UzQ2C0iuxm6zuLN
	 pk3n9TAqKucu8pszY7M7EOB06GQVa9SJKY52kLT+66EKybHX0be2pLXbqc1Qac9B9U
	 LF9AHgqXvWVQA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F1CECA0EE4
	for <ddprobe@lists.linux.dev>; Sat, 23 Aug 2025 07:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175593419357.14340.17525012084384388449.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 30d82692375a1a0f06e971fae8b805447ee57327b30e912ff8442134182e10d1
Date: Sat, 23 Aug 2025 07:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755934193
