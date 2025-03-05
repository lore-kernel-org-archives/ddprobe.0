Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3930A1D86C6
	for <ddprobe@lists.linux.dev>; Wed,  5 Mar 2025 05:18:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741151934; cv=none; b=qyN9HgETDtNnVpgMaznPaugzwpFiKimnbTRDSvt7xwH+hjfpiJy/0T/5udasHbs6UUV1HGIU2IPMkntkHFMqMkKahnU2s+uJ7JzESAsLjufLbdlRBHqTEGhTAutJIYVQgE0yiG9NNTNGWa8szd8yTF+JD66Ir2TqFb0OkV7Q41I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741151934; c=relaxed/simple;
	bh=IwHFC4IMB1FrhZw1II8g3A6D+93ETWBHwG5zz3/SuXk=;
	h=To:Subject:From:Message-Id:Date; b=JKqqi+4pOyhhstCnxHy/gZEWM1gwrMs5XTfjr4f06GxT7vfvBdHfin6MTEY02bSzuY+pQyG1B4xeRhygDo7a89f4JA886Utga8IQznRN9e+vWuPbzENANenemIoaOgakT7+gPGF1CrAjcgkaP3qtnRaUnnwQYksSLBO3cLt08FM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cMlZo53N; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cMlZo53N"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A622AC4CEE2
	for <ddprobe@lists.linux.dev>; Wed,  5 Mar 2025 05:18:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741151933;
	bh=IwHFC4IMB1FrhZw1II8g3A6D+93ETWBHwG5zz3/SuXk=;
	h=To:Subject:From:Date:From;
	b=cMlZo53N8WYdZo2KoLB1pL8UPGcgFYVeMsUcuQp+A+sPE4RDt+CyvHtXupKJmlNdq
	 6iaXLNNkezWD19IH+UYdO5zsre2OXd5rNvxEQSZdQAV/Zu1d8B3m3PIevKFKbQe/W7
	 o8/GV0CUkcblKeeNEEYd/37EcPvjG+SPJg7aAvMGElq3Jc+ZWZzfzIueC+qGER9j+S
	 T02VQs4NhEbfAJoE9V2a2cXga6CO6JJ0221CR+2MXHBQDq4zn73hsEtrBlQaCwd4Uk
	 cIzefFFeM614HN0KFsm7d8QRzb9UFJzhxsFDiL+VvTOCDO5QJc6rAPYp4P9Xg0B4P6
	 vZnT9I9MatoOw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92655C19F32
	for <ddprobe@lists.linux.dev>; Wed,  5 Mar 2025 05:18:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174115193358.28163.9019698427485915167.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7341af53c8c7e78ff9f27f8867748084942e1098065df8b6bc68555dbba57648
Date: Wed, 05 Mar 2025 05:18:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741151933
