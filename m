Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2497F24676D
	for <ddprobe@lists.linux.dev>; Fri, 28 Nov 2025 15:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764343374; cv=none; b=m4SIOyVlmzWLK/Q0Bs16gx7jD1OvkJ4DR28KMwlhfLCnfe1zvIkqpxAoNHKedX3IggBjAA7vnfj23aSubR0L8CUINTl3SgW+3ADWFWKtId7HxalQL5ji14VqHVYFjcbJqU3tMfwi6/ZgTpFX9PKHi0SS8cprQfupi+nhpkn7vrA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764343374; c=relaxed/simple;
	bh=HK4f59S8q0kliFv5KjX1i8HkQEyt/tw6lZkuWwti7OY=;
	h=To:Subject:From:Message-Id:Date; b=Cckrk6AYjpPADgNxDTPOB8s6kkGqUFL64JX35D9Qlq8EHNuyPTqqUXsM+2LNZFdMDrkRoZxYUkRSXQA9aPkP1Z9csFLVc2GZM/Z0nBbpZkeIlJWgTQZUX5XWsCb4tU4uclJBbnN50+SIY6aBadtwCOTOIfGJtR2j5zpwun+gKJM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MnRnjsw3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MnRnjsw3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A380DC116C6
	for <ddprobe@lists.linux.dev>; Fri, 28 Nov 2025 15:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764343373;
	bh=HK4f59S8q0kliFv5KjX1i8HkQEyt/tw6lZkuWwti7OY=;
	h=To:Subject:From:Date:From;
	b=MnRnjsw3SNwKTd8I7uPWVBqoKMIbG3bkb9wikPpfg9YBXxqX9v1zigcEPEUsbMqIC
	 QvPRhWe0rN4WTxqYK26onzOL5IPV25Mn4eE1UA6zfTLrrQp1K7Fu6rJgIjSFtUPdEC
	 exR3VP3EO/oWMrGDlydAvDsdwV7x1imYQBwZfzi7D1m1LlD5WmLC4IMSL5drrvhg5r
	 OCEe9+i7Ek4HlMrds7pnUD4gED/hb9B6BGq1TO81VD6SdswgGiyypnrFibGskkiphP
	 s7P1nB5wRGqzyXgnUzcGEpAR46i5WJCPgv31DQmA91w2UBsH3SOFHyR9lXOFXVlIW5
	 w389v/x7LRlfA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 920D3D116E2
	for <ddprobe@lists.linux.dev>; Fri, 28 Nov 2025 15:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176434337358.24413.17726683352298868265.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1963acb13038d3c2c4073144d31bdfa26b12849d8084d924c9e5a654ca66affc
Date: Fri, 28 Nov 2025 15:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764343373
