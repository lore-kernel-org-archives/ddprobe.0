Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17A981DE88C
	for <ddprobe@lists.linux.dev>; Sat, 28 Jun 2025 18:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751137194; cv=none; b=MVhBGS7XA6EskrRf//w1iFempaHMsbTIn8kO+K24zGG7I6JuVsJ64BfEPpw3A8dqXYE5YPSZgH9lfYXImulvnQjjBcM/x79MmxMzrt6CIuf6PRrZo8g4OTy2HQyXJwsMdxvZiXfRfJir4d2KjWNg6RcKNGPgGAjCKlyH7RiS6+U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751137194; c=relaxed/simple;
	bh=cNTiXhyYgG0PpgnPpm/hICfBrEkDu2dQPeUvHt3WnZ4=;
	h=To:Subject:From:Message-Id:Date; b=RyMYYmngEpQGL48Z4dYQEqn8ncgmwDoIpruHLPLXTqUVVEOXSLTG4Lo+OXOU6AJ73Qxmk1PT7kxwfezXpzpO1H9CArk9VrVhQHlelLjh9KWD7Y7tzs0jIChvJqTGjIixOCMNUxJ7vaRhMuNB5CHbj9DulPBqj0iavraSFtUewSA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FcnZy08i; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FcnZy08i"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0C66C4CEEA
	for <ddprobe@lists.linux.dev>; Sat, 28 Jun 2025 18:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751137193;
	bh=cNTiXhyYgG0PpgnPpm/hICfBrEkDu2dQPeUvHt3WnZ4=;
	h=To:Subject:From:Date:From;
	b=FcnZy08ii4L3V0VYqFaBTSkASalB1KPIWsVhCL18xFcFf4QpJ12xChtvaNPpg/7Uv
	 uToKK6yt/JCjLO55XbT0Eof5MVf5B+eDsMYf8GbVKoFjmmNtI4PBF2U60R6fdbv1k0
	 0I4ILtPGHKlA5lmVQhkJbtTJCfm0Vr2e2NTiq5Zzagi450YYD4fgHWwpKn6MoVdlFy
	 W/67UbZdvt1enf0GgbBo7I5zqo3DynjnvG8j36emmRJc9xKQpvBc5wlfwHoESEcRjR
	 61eEBJktBMnJNeDuePi3875kIc9WOtHZBieBnWI/pJE7nn5aoWN7ittdjGr67j8E7P
	 7SOUP9tfH9iPw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EF65C7EE39
	for <ddprobe@lists.linux.dev>; Sat, 28 Jun 2025 18:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175113719357.27933.18082553659765337963.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 80223f0ddf6b9921c42b90da9e50ac49748e8f3819fade62c8e624e2d7c362c5
Date: Sat, 28 Jun 2025 18:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751137193
