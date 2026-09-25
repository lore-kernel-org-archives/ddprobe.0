Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7FDC33EB110
	for <ddprobe@lists.linux.dev>; Fri, 25 Sep 2026 21:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790370034; cv=none; b=VQTsC0eTpAIJZbhdww00mOyNm58UKbLXKVTOnja6sgMYxifTAQ3XnZrgdFOSVEfcolQotewYZqfmHUbDTCtllu9P0E6j8QNokOhktcUGU017sUMQjiJEzik1Q1BbS+UDtlCe6GQPy20VklaxcaHhuZH3fOwNdrXfHWJ3dAdCNvQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790370034; c=relaxed/simple;
	bh=PzNVpNBwogKYhCX8w/iaa6jObDmg+3MQDoLsaipL/kA=;
	h=To:Subject:From:Message-Id:Date; b=Ek46R+e0PCE8tJazi6f0CASJqUl2QYu1qbSpPk+Rr3kgNeZrqmoRCen/CjI9ToGAGXRhMnJ8vM7n3SQYWjdRzlzqJf7Mq0gvb96A6ANnaS5sbscNvlRVfGGUcLxZAj9iltP6Az67W14f6Xh7YvV+wWg9BxtxSUjbJzF/Jh/hGBo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vNr1ZKU1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vNr1ZKU1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9CD7C2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 25 Sep 2026 21:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790370033;
	bh=PzNVpNBwogKYhCX8w/iaa6jObDmg+3MQDoLsaipL/kA=;
	h=To:Subject:From:Date:From;
	b=vNr1ZKU1blPeXi0oELevJ+fxD0f/PMoV24LnRh0pPTdZ3PHsoIo7YRNr6d6AB/Onq
	 ezdQIIXwNC+P01fEzJn93oi1rL61frSimE6bie6Rz7FnWMPeCXmVmKMq/dDmUu9gnk
	 ZtGtujuT1vgeaG+fubOhTQWgdY7XOJ8lS8DrfzTccobt6qZQXTp5bnIh9yEDwbeVXY
	 jkqmmGHLlWMFW5I/dvpOrmg0lbjsGvd4aFAuMm3sTfE6BDNQzcqdn/kRabo43Z1jZe
	 P5liLAILaPw89CavfvSIJAOEyDnYvb+Mhp9G1lYNLn+uxnX831BnBaU8OjYbfWKVgd
	 mHYjoeMxDhz0w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3216C98321
	for <ddprobe@lists.linux.dev>; Fri, 25 Sep 2026 21:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179037003369.27132.5222142505345069172.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bb886e6ab8ea86c7c8a656b2c5832b2627d67774143d2fd768da2ccd8b92a41b
Date: Fri, 25 Sep 2026 21:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790370033
