Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AD7A1A3179
	for <ddprobe@lists.linux.dev>; Wed,  9 Jul 2025 20:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752094794; cv=none; b=oRli3pfEkpLP/P7xZpB29thh8zuEy78HHWiIrHQ0LMA18Qh2xsWzLt2uFXFlhhRCZZ28sb/0NBJKeKYVnlNKPZXx92C47P4lWw4CBUYK7r8CGZBKY/lXuhVJ15nrbhktatdanJsY6Q+w/6auZ2ry6FRruxhidKv8vpnbd442Bxo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752094794; c=relaxed/simple;
	bh=2yX09tNdJwA3tcwBBs2SJ4P4M6RDKptB9IV9oJ7qEEo=;
	h=To:Subject:From:Message-Id:Date; b=VJgYwzzZKWW6LzahCGmQpFx6nGwXFkiZ4iLNZVlQAomFmJKPVmUgdcPS5orRf+GuYBPldXgm+2yW3x8JrI9iZTJCRzc1dtUTfF9I4cSZTI/wQZhrHQNGBd6+mH4Jw075x7JZRVyFasXJL4yXNM6/kXevNwkrtCETBpDYAbh+5NY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T2H1npk6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T2H1npk6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E4E9C4CEF4
	for <ddprobe@lists.linux.dev>; Wed,  9 Jul 2025 20:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752094793;
	bh=2yX09tNdJwA3tcwBBs2SJ4P4M6RDKptB9IV9oJ7qEEo=;
	h=To:Subject:From:Date:From;
	b=T2H1npk6tfQJM4UG4CQIkAgOOzSyW82gVil2jUYTqLi2e0uGWEZ1twMLSzqvFRzBS
	 sNAuIf9T78GmDMekvvqKcUapuwCQuCvN0FrC0ztpb+9CfetEf6xrpNc0it17Zg5/d/
	 JbOrqPxN1psRfWMjKNtGfnVRmUei5Ix5LPC5esYTr2/cxl7sHWS1xmuzhWDg9rqtlq
	 lP9FKV9wPGJfcExAophb7MNFx0FoH8qNDdR0rXQ1uddjZYexgHhmWSuMroLDgfhjRX
	 jP94zJlyXXnj023muHGnk4is6tNnXhZwYBXw5OMkmLhuITyL0Y2uOXKl/TFUle0ib8
	 gvEbo3kTwLhKA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FE1AC83F10
	for <ddprobe@lists.linux.dev>; Wed,  9 Jul 2025 20:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175209479358.3781.11503266415679134623.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e323c05ee0fee74dfcb5023101eab72f9fccfed2d19a7f638b3111ff6196e55f
Date: Wed, 09 Jul 2025 20:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752094793
