Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28EB520322
	for <ddprobe@lists.linux.dev>; Fri,  6 Dec 2024 01:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733447154; cv=none; b=EuK3wXWdukwIuk8zZaj6R0Y/o/l59p65PYvdK20cTVIlMTLtUM760+4JHW71ZtH1R4gVd6PBjgQwAVh45oX8Cdo0aQe1NPzVZCC6+xZbSoHEziY8I7Kc2l5DzDh87yguvDkj0VgPv0So+0qo/R7E1+s5YfqhQkUDoiLytYM78NI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733447154; c=relaxed/simple;
	bh=jBTS1oROEvK9ET7btBY+3OwFVtsARSSmZ3iXsXm0tHU=;
	h=To:Subject:From:Message-Id:Date; b=a18JEMq2+Tciqa958mOZY5UTjCOhpe7NwYmz0rBbGMmXd9Cp2pI7OewSHG3fxKJiX89NmYWJmi7T5rTUCLyH20jBDSmcjPCuoiJBI26p11qu4F4PNf6p7yZ5fsbtz8y9FIz+T/IJj876Tk6vM2UTBMz5oTgBu1H4xgrefhYZUp8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rHuGkM4m; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rHuGkM4m"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A98C4C4CED1
	for <ddprobe@lists.linux.dev>; Fri,  6 Dec 2024 01:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733447153;
	bh=jBTS1oROEvK9ET7btBY+3OwFVtsARSSmZ3iXsXm0tHU=;
	h=To:Subject:From:Date:From;
	b=rHuGkM4mhRcz4FnCWRiTsF1CJTZfKQ/IQbU6w/SXyc3Z48GTUYEoNH3Kpj9jb4tOH
	 ccsr5jW19WXzziM89pTGXs7cp/wJo/IgKRLKwihEC0NVMasQQMoXsUzXkQLiirXW7v
	 kzEFn9XlhCTcE0OOV2/SgzLYpIA30u+7fVAP3NOd6wI3WcEw4UIwuh+Jw7XG8IvTaY
	 D8fAlSbv4vMaVSUO2pTkOzr0f57KhRMRaTQS1ewzOG7R5Aedi12GlfgXp6vTcjfSlh
	 yx7TMs2NfU30VO85hCRrGdn2BQvcOIR+1F6lYmnqr72wU/c/fkxClmujz7bKqhsaBR
	 bh1q4TpPzuGnA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92D59E7716E
	for <ddprobe@lists.linux.dev>; Fri,  6 Dec 2024 01:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173344715359.21771.15297955715983343685.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 071657ee7548c50684bc7228bd55fe89a8cebd4fdc919cb15fc6b42fd258f287
Date: Fri, 06 Dec 2024 01:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733447153
