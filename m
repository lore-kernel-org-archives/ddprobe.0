Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F43C1A681C
	for <ddprobe@lists.linux.dev>; Sun, 14 Jun 2026 13:16:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781442994; cv=none; b=g56fIN2wLsG2grGMfRCWB5zKv28CUwNaVnRu0fhA3J8zirZyPpzmXcsElK6WlLbtk5+oT93M/SnSC/bJ4QI+m6EAol49UDHyxhQW6j4j+wdNzKLHIThXMoUL4XYvPdOBsBCGTZvMmaKKAUr+hLqM5FkM/qFnHAQ+ldSqiqsEgx4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781442994; c=relaxed/simple;
	bh=qe7pzuhQaHLUveQYkQN3RsgnnUhGEc2i28zdteT00UE=;
	h=To:Subject:From:Message-Id:Date; b=FRPZJXVogU2wTtd+GevIkhOJnCLahN/1yUacdCpj8fqrzPNj2j6HPzbuk4ija2m3sYvKn//Aw8lXCZmgreLcb3rCnmBwi5GBMIq4GoWLoGnYROHhyOn9xglDYE+kqoVUlC9IIWfJ8jMhoc6PrraGkVviyVnU3VnZVKP9tMm+F+0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jQV9mv6h; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jQV9mv6h"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6DE3C2BCB8
	for <ddprobe@lists.linux.dev>; Sun, 14 Jun 2026 13:16:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781442993;
	bh=qe7pzuhQaHLUveQYkQN3RsgnnUhGEc2i28zdteT00UE=;
	h=To:Subject:From:Date:From;
	b=jQV9mv6hq2IdY5GQGp8TU5XJlEGFxD4yXkAl4zvl4/Plie681WpD77hh/C+Oun1qD
	 5ozztnnDMP7kkelhqDVSwDHmunjUVCUn8yrfBvchw7vtrx+gHmtfAKBerD5iPL3AMn
	 G1XQmMiHEd0qd4O73O0Oo/8ZdwLvrSKAW/fhtA89BoIm3Y464chHGg6sPrz9AB5e8A
	 1IDzkHpKufstpJg3pskcE3STRyt/t0jBkLyLVoJ8WMsgTAJSqnMSVlwuWyOYyGP0GS
	 zCxgpPoJoKkle/bGDTSdFCurzYdY9PtkeopC6n/3AfAIQVHfQDUuRnEA5rdw8Jq11W
	 wQgW3XP72X7oQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADFB6CD98D2
	for <ddprobe@lists.linux.dev>; Sun, 14 Jun 2026 13:16:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178144299370.6518.17219394900574330179.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e24d95d84a465aa6d3714f7f19d59a6e09509426800f4235e172e85e250ce96d
Date: Sun, 14 Jun 2026 13:16:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781442993
