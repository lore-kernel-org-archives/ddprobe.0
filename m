Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4853E18A6D4
	for <ddprobe@lists.linux.dev>; Sat,  5 Sep 2026 00:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788567034; cv=none; b=ST0/4X4yZDRxmh+8BMTDEvToixUE+fno5H524d5r/mx/S9NMG5UyohaiER0XbaYR4mKLu50O7CCSkKmYhIXwT4MX1szQJ5skoCutIYMTYMIIukr4G1jBzjcalskFV8eiJWFSn9Q/VMpIsZO/u1sFUeazBTZYRTBOoWHBeKgyfq4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788567034; c=relaxed/simple;
	bh=Q3tYggEH82urRokvGxOkUnjq0J6/X2l48cXTaddzio0=;
	h=To:Subject:From:Message-Id:Date; b=lcWo3fuu57rDeeLTBVk9w39aRqOC5R/hE7+oYSuImLFIYpiKBWzIsz6xS2g+DfkRY/bwFpVcfkVwDnznBpTXK0B3fuayguv2S/e8DchTYQl1nmdbYnkuKSHDETTB3NIYeMUPmcEoNbcQCvX6xO7LoSYZQOJ0NvOTpD9rwr/jAs0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u1FODktV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u1FODktV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6872C2BCC7
	for <ddprobe@lists.linux.dev>; Sat,  5 Sep 2026 00:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788567033;
	bh=Q3tYggEH82urRokvGxOkUnjq0J6/X2l48cXTaddzio0=;
	h=To:Subject:From:Date:From;
	b=u1FODktVk7pC8GJwY0BbJttSGizrW7eUs6WRNScGla4cfNRCodKlVVL2skJQf7Gj+
	 Xs6QXl7+apnSfrOUM6PEOJbuiSE5ApRIAXw/F5XeTEHXnByHRp9u9Q4O6GSz1WqzA8
	 GuZ14dh1h1tpEY35HJM2xWh27+csbmYcYBo3BRXQcGt8rniljwI8t5C6Cbl1V5KALa
	 RQaGqo7iBTt1nwHjudbsGrtyV0AGqxcFjeh1tNqABOf9+ReA3vbNoNgMePUi4pohY4
	 0Wiz1eTwZsH1LFnHM5g98XPMOSlX1M8hJOw1f86KwkEYgIC05eBYbQZ2jbyQCpgnk7
	 Nr5cNS2wOzixQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0B95C79F82
	for <ddprobe@lists.linux.dev>; Sat,  5 Sep 2026 00:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178856703368.3697.10950142910249888181.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 117e6b823675c4641a89b5d1a81bcc386d5b6760b7f97bfb4a274193ea84f500
Date: Sat, 05 Sep 2026 00:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788567033
