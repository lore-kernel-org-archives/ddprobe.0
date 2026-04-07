Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DE01C234994
	for <ddprobe@lists.linux.dev>; Tue,  7 Apr 2026 01:45:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775526333; cv=none; b=dBDAxzdrM8+T9DgYS6sbY5FDMuy4dl5/bdTuEZOIOoL9U8RXB0wgnHaiRRzhKZCWiExxQrYCxqywgK2uhVffAuopCNNPcofpBpvGw+v44In39wxxFpfPgqJknYLMtdFMr1ZHerJOzRKK22kUPY+Gqrj3S0J39u1KV5eeSCs3owM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775526333; c=relaxed/simple;
	bh=gbRx6lXCSqR30l8q/x/VZrW5gi0d8+Q8HTECmeYdXcM=;
	h=To:Subject:From:Message-Id:Date; b=AkHAHDnIfbqZU6hFdfJXQTYpXfQH1o/5GqUtL1khttGjwArAD7mIW3yVAQmqpdHO/YO4upzPY+LuIuj1STC6fCuje9A5HsBJrnpOGZ2RxF8y5qFWyx+a0Hk0sJnVy5wCRm8g0NH60rmjR8ZSA5kn9d/NhC7vZpHghKUXTIZpUVs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SjDDNv27; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SjDDNv27"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C09BAC4CEF7
	for <ddprobe@lists.linux.dev>; Tue,  7 Apr 2026 01:45:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775526333;
	bh=gbRx6lXCSqR30l8q/x/VZrW5gi0d8+Q8HTECmeYdXcM=;
	h=To:Subject:From:Date:From;
	b=SjDDNv27yn6Si9geB4ej3JSmr71PLOUGBPOn8Yau36yrkRNXirYNoeIEMuf3yHyB1
	 SiTCB4YGS4pt3mxXBEQlQ07Z12Ux15V5JSU0IR3MpTAW3V3gOCF7BAxv9l2C7HQCOV
	 +IBPnlWTESj5gv9wXNyvYpIhMMjHIqOvN3q/kgZUUDyomxawGalvx3N7dC+RSqNV0A
	 vsFxPQ0kOf/DHiBiADNsfhxb6jflDj2JdRJ8bnW+sBWORICJLagfc2MeZuGomh6TGl
	 H7kaFZy9tRVSd2xc7n33dWqZoTCAljyy4kmm9NHb0NCiAUadtMGRuPLZKJIFGoeRfh
	 bp7Bb6xJb/LhQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0E34FB5173
	for <ddprobe@lists.linux.dev>; Tue,  7 Apr 2026 01:45:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177552633368.27796.6499100566630407951.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b9eb814a5d5b18dfa11d688c24135d019c4d270a152cae3f0e63f98fc1c97f96
Date: Tue, 07 Apr 2026 01:45:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775526333
