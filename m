Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B7A927442
	for <ddprobe@lists.linux.dev>; Mon, 26 Jan 2026 01:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769391234; cv=none; b=VZ+QZeYPgI9ivsUR8BBKpvz5K9hkmvLyYjpHwsAhzNQUjFKV+6jAIjFBBmUpWca6qHuvWHEqlWI7rz/1C7dfUBWQdkrfHCqRKFwn1ul+Sg4zJPoI5GPrmtS2C6opjeWgxNRNxH1GIVInvrjztUJdprkoI4l5fVl2mdgBjv7JRXE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769391234; c=relaxed/simple;
	bh=0Tbs22SBFAUROrXxTrTQPrc+xGbvpy08wLPUhXnB9Mg=;
	h=To:Subject:From:Message-Id:Date; b=rauxNOX9prRYukiFAOIthhK7IP3xqCNSxcqam8boedbAjXRHJDTaIjx451G+qx/QsJ47f+ELDBEt8n3ANq+wpJaBrVWsSbSf8l5ymvCJP8dZ6XT+9SXKXTJnNNpCVDxVd8NJRXxyee7XgOeB1m00pqGKkyBG3e6MvCFdtJ7+Bjg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JbZokasF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JbZokasF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0D44C4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 26 Jan 2026 01:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769391233;
	bh=0Tbs22SBFAUROrXxTrTQPrc+xGbvpy08wLPUhXnB9Mg=;
	h=To:Subject:From:Date:From;
	b=JbZokasFZBtcqiJLt5xZXQAJ4DodNlNwielnl58xMFYYKKazudWY4F2vdxPgJg/FX
	 3CdbOXn0oJBbTJkMf/f0fRlVpUEdWdmIs4OmIiD3yapAK5+YvhVoAYzG676IOcptC4
	 Oe3PzRhUMbxa4AnzVzuxdmhJvDpi0W/oDP5yTm1q2pzcTZJm5DXQa1dx/9kArgHhmc
	 ZmWcfI5fhbSGZO7B8p++QQ/cSTQbIzf9QIZnCJEFo0cYbF4v9t2iae97XiYjbZaW+d
	 HOg0VhL2R0h9/Ma7DppBgjzr2+wuH7Ss2x0O55JVhSz0AX8iaIhUIOTPN6eZX7fpb7
	 P5tUedQH2J46Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F620D778B1
	for <ddprobe@lists.linux.dev>; Mon, 26 Jan 2026 01:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176939123357.2133.3002741640124875188.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 205184ef5a3b23869ff484d0aefd3fff3ad5b4eab7fddd4951b57883d07d0ff2
Date: Mon, 26 Jan 2026 01:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769391233
