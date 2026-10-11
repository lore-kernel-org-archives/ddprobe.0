Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38C5536F909
	for <ddprobe@lists.linux.dev>; Sun, 11 Oct 2026 05:20:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791696034; cv=none; b=Of1ElYNzT8QMZSxLDZNtngBHbO7LV0bTOZaPYT3IkF4WFoYi9hEFrONUXo36tBTq89+7AxQOs/+Kq21xuOV67Cjgb0gJjvMXsuh8x+FEafP4z/10+m08kn4nRGowyPdmQuyCvTUwTUU/i32/FMt4Hx8EJ2UQiC9HIfdTthEsUW8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791696034; c=relaxed/simple;
	bh=DymBFabmhuoA2Ktv/DF1bJhGduqJLWswWEDKPF+1H3E=;
	h=To:Subject:From:Message-Id:Date; b=gdWIQNOJakO8J+1Rn7R117KcKplvg52KfsoCI9Dze4YZ2EOfaulFpai/BEaQHTbACgu6NXYtcfzZsRAkuCW906h4ANShgrgz+vjD9yoYrc3wSIGMHRwVw6S7fYbru0WYyIEIvRktG5sdOTfN6W65BsweyhP15onOGsDWh1oUdYM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PUElMFdg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PUElMFdg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C220AC2BCF5
	for <ddprobe@lists.linux.dev>; Sun, 11 Oct 2026 05:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791696033;
	bh=DymBFabmhuoA2Ktv/DF1bJhGduqJLWswWEDKPF+1H3E=;
	h=To:Subject:From:Date:From;
	b=PUElMFdgOtAoAu0RI6fuADCydH6H2W3JX5FIltQRwG2ZXKh7J2JzwlcDTo3Mjv028
	 A0BNKHAaEi4YnaFQPT1aNYw0TJ+gzf+LhxQseF0FtTARqIrIaJ6P/l+GT1AZQaSjsd
	 RZaaZYq2OEByOmN9mqlfpgSda3PPCn44Ts3b+/pIc/Haj5HmM0x6q5nGJxpCDjwCaC
	 ADLD/hEk6XsU7bT/fsX5zHCVsw5TXUp9Fa/h0GAHPamtNGsBium0JmK999mfKUAhwv
	 f4FqaEkVfCcz4DvpWHQte8gKttEAnlIqkccHWcsldy3DUt7y+droHbYL831BNFgtys
	 yhHNcbLsgk4DQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A912FCA9EC9
	for <ddprobe@lists.linux.dev>; Sun, 11 Oct 2026 05:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179169603368.31854.16540332929821932572.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c69829540545ccab01a66f431e3de916e2ae3e0762aa2e6faae32d81a6701500
Date: Sun, 11 Oct 2026 05:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791696033
