Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DD79D8C07
	for <ddprobe@lists.linux.dev>; Sat, 21 Sep 2024 08:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726905954; cv=none; b=ag5CeSAtSLMbSvGcUZczmJHgLFdgZpF8n7jjyHBfln48gtfgkolkNJOVWbw+Z4flnWAPLRICGnvarXfoaVOM8yTYY0nZKNY4I6n1wVZFgz+osi41WKB8TvOhA2i0WmnFlJorJj6QWbk2Gu1yfytRhpRhhPYqx4fsfXUyl6z2jZ0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726905954; c=relaxed/simple;
	bh=ErfP3iE9mG9DIvyemr9XJbOW3HvP8y8qRvEzVP9El/E=;
	h=To:Subject:From:Message-Id:Date; b=lss+rBSlqhDDjcYXRXlXMxrvA4w1aYhjGvyURzTmyI2SG3hjWFkq2UC42xQVhIkSzfxtKRCFrWMrtPVlH2M3fQnLPNVsJOMhgy4dzFd/tGsoSwAwGGm6aryfcrPvzaUba9bhDwy3AG/AJOu28h7ZvOBIkUTyhcM20IfO/oBBtow=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JlOwMMPf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JlOwMMPf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B253DC4CEC2
	for <ddprobe@lists.linux.dev>; Sat, 21 Sep 2024 08:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726905953;
	bh=ErfP3iE9mG9DIvyemr9XJbOW3HvP8y8qRvEzVP9El/E=;
	h=To:Subject:From:Date:From;
	b=JlOwMMPfETJdkYZgUcyalkxW6By3pPjgqusQ8wCvp5/UuknUrZseDUd/fEeSIWy1J
	 kaaSEjHRzjEGZxbbDUoN5EZWD97rRBrxjhOymOFuXD2VeIr7+weysIbDWhHOhHyriC
	 WRNLWCesWKiH8BzWOpgbwlIh9dINbZ+eygaGrZkaXDJwJuquUWr2GMNww+10VFYxwn
	 w2fprNQHifYBFVjwpspq5+iK0ZtmROi73od1G6uP+FigTDJ7nkzSMZSpVvuKtlZz40
	 vXBdMHQiEEX2n+5XHx9LH89AcG7fF6xXYWUdL9HRVucSPJGhxoFXqIC5Fhe90CdGZA
	 8zOqhEIPp2N4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E309CF9C5B
	for <ddprobe@lists.linux.dev>; Sat, 21 Sep 2024 08:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172690595361.18214.15842027491044099660.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9453b6ec3fdff16b96f66b116060d4cfe3b0f5204059047a67591d1aa18c015c
Date: Sat, 21 Sep 2024 08:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726905953
