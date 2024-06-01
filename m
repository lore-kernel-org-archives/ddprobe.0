Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48937824A7
	for <ddprobe@lists.linux.dev>; Sat,  1 Jun 2024 14:34:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717252463; cv=none; b=n5mDopkeNGYDR2ss15JDab5m7hLJ1FAbH94eJ59TY8u6yAehAAQiHPbj1kwCF9t2jcnl3nptnO8dusMo7dEHUX3INIHTb3Z/NLmn6VtfvR3ukbAFF/RMAp1A4kvsS0eHK5oPLTLst4g+A/++ZdrpNGgamYsNcDihstvuPEgON+o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717252463; c=relaxed/simple;
	bh=/npqJ6jedoT2cgnBJHvQkCOTFff8xcKGC12x6CBBw2M=;
	h=To:Subject:From:Message-Id:Date; b=lrT8+FhgSDUWq0nJrcDTj60gwUMB/jSAvI1rpzw7cPNUjFJeHoxp/r/COMTEf9DCo0EAZsb/06GSaEISI0frYZXYqHD/lOp67WH2pz3oiAouJawiMK/vcy6hk0vTAEuTS1aP5qiEFnlc7TwCkwpnXHthtc984208m44uZOmtvRM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OgdDhVIb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OgdDhVIb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DEDEEC116B1
	for <ddprobe@lists.linux.dev>; Sat,  1 Jun 2024 14:34:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717252462;
	bh=/npqJ6jedoT2cgnBJHvQkCOTFff8xcKGC12x6CBBw2M=;
	h=To:Subject:From:Date:From;
	b=OgdDhVIbel3YSZkxtkNwtzW1HrhZqjqYjUW2fmycO/HP5LXuGTFjjEXQRN5SH1EKt
	 hxGcVF5u5uIFllHuGfR+kI7IzBwPl7ed180sJDtOcEouMmRgBwlhZYWXRbRQZ/Z5PF
	 VPlUH+Bro86nTZBjeeX+mcf+c24P+JDfJVx6+AhwznW6f5oxru089+aHrMXKN8ug1G
	 QXLcHgHpSh3APt27wZk2eg4Rlo+1ZsmBRprfIsAWEoref0opJ7PTWIINX7Y+Bq8pv+
	 KDJs7ts/tYxqnyyURRBj5IR5CaPbo+HHuel+JlnEDaMasqmLMGET3ryLkSzVNQSANG
	 vnR8JJnYt87Pw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C62BFC25B76
	for <ddprobe@lists.linux.dev>; Sat,  1 Jun 2024 14:34:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171725246280.13966.3805177471014294222.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4abd7b33a2ceabb960b7ce731888d743771cbaf809205e40660c91b2c9f50b2c
Date: Sat, 01 Jun 2024 14:34:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717252462
